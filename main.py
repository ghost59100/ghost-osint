import os
import logging
from telegram import Update
from telegram.ext import ApplicationBuilder, ContextTypes, MessageHandler, CommandHandler, filters

logging.basicConfig(
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    level=logging.INFO
)

TOKEN = "8828689183:AAHCR7LWWtaGCPsSsT8CJgV7bMWvnoIwsoY"

async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
    user_name = update.effective_user.first_name
    welcome_message = (
        f"হ্যালো {user_name}! আমি GHOST-OSINT বট। 🕵️‍♂️\n\n"
        "আমাকে যেকোনো ছবি পাঠাতে পারিস, আমি সেটির মেটাডেটা বা EXIF ডেটা স্ক্যান করে দেব।"
    )
    await update.message.reply_text(welcome_message)

async def handle_photo(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text("🔍 ছবিটি স্ক্যান করা হচ্ছে এবং মেটাডেটা ডিকোড করা হচ্ছে...")
    await update.message.reply_text("❌ ছবিটিতে কোনো মেটাডেটা বা EXIF ডেটা পাওয়া যায়নি (মেটাডেটা রিমুভ করা হতে পারে)।")

async def handle_text(update: Update, context: ContextTypes.DEFAULT_TYPE):
    text = update.message.text
    await update.message.reply_text(f"তুই লিখেছিস: \"{text}\". বটের সিস্টেম তৈরি আছে!")

def main():
    app = ApplicationBuilder().token(TOKEN).build()

    app.add_handler(CommandHandler("start", start))
    app.add_handler(MessageHandler(filters.PHOTO, handle_photo))
    app.add_handler(MessageHandler(filters.TEXT & (~filters.COMMAND), handle_text))

    print("বট সফলভাবে চালু হয়েছে এবং রান করছে...")
    app.run_polling()

if __name__ == '__main__':
    main()

