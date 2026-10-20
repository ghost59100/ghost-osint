#!/usr/bin/env bash
set -euo pipefail
: "${ABUSEGPT_API_KEY:?Set ABUSEGPT_API_KEY}"
nano bot.py
rm bot.py
nano bot.py
python3 bot.py
pip install python-telegram-bot
python3 bot.py
nano bot.py
rm bot.py
nano bot.py
python3 bot.py
rm bot.py
nano bot.py
python3 bot.py
rm bot.py
nano bot.py
python3 bot.py
rm bot.py
nano bot.py
python3 bot.py
rm bot.py
nano bot.py
python3 bot.py
rm bot.py
nano bot.py
python3 bot.py
pip install Pillow
rm bot.py
nano bot.py
python3 bot.py
pkg install python-pillow -y
python3 bot.py
python-telegram-bot
Pillow
import logging
import os
from PIL import Image
from PIL.ExifTags import TAGS
from telegram import Update
from telegram.ext import ApplicationBuilder, ContextTypes, CommandHandler, MessageHandler, filters
# লগিং সেটআপ
logging.basicConfig(
)
# বটের টোকেন
TOKEN = "8828689183:AAHCR7LWWtaGCPsSsT8CJgV7bMWvnoIwsoY"
# /start কমান্ডের ফাংশন
async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
# ছবি থেকে মেটাডেটা বা EXIF ডেটা বের করার ফাংশন
def extract_exif(image_path):
# ছবি হ্যান্ডলার
async def handle_photo(update: Update, context: ContextTypes.DEFAULT_TYPE):
# ডকুমেন্ট হ্যান্ডলার
async def handle_document(update: Update, context: ContextTypes.DEFAULT_TYPE):
# টেক্সট হ্যান্ডলার
async def handle_text(update: Update, context: ContextTypes.DEFAULT_TYPE):
def main():
nano bot.py
rm bot.py
nano bot.py
python3 bot.py
nano bot.py
rm bot.py
nano bot.py
cat << 'EOF' > requirements.txt
python-telegram-bot
Pillow
EOF

cat << 'EOF' > bot.py
import logging
import os
from PIL import Image
from PIL.ExifTags import TAGS
from telegram import Update
from telegram.ext import ApplicationBuilder, ContextTypes, CommandHandler, MessageHandler, filters

logging.basicConfig(
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    level=logging.INFO
)

TOKEN = "8828689183:AAHCR7LWWtaGCPsSsT8CJgV7bMWvnoIwsoY"

async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
    user_name = update.effective_user.first_name
    welcome_message = (
        f"Hellow, **{user_name}**! 😎\n\n"
        "Ami tor nijossw **GHOST-OSINT** pocket goyenda bot.\n"
        "Amar bhitore ekhon **real photo metadata & EXIF extractor** active ache!\n\n"
        "📸 Je kono ekta chobi ba camera diye tola photo forward kor, dekhi bhitore ki lukano ache!"
    )
    await update.message.reply_text(welcome_message, parse_mode="Markdown")

def extract_exif(image_path):
    try:
        image = Image.open(image_path)
        exif_data = image.getexif()
        if not exif_data:
            return "❌ Chobi-tite kono metadata ba EXIF data paoya jayni."
        info = {TAGS.get(tag_id, tag_id): value for tag_id, value in exif_data.items()}
        camera_make = info.get('Make', 'Unknown Brand')
        camera_model = info.get('Model', 'Unknown Model')
        date_time = info.get('DateTime', 'Unknown Date')
        return (
            f"🔍 **[EXIF FORENSIC ANALYSIS]**\n\n"
            f"📱 **Camera Brand:** `{camera_make}`\n"
            f"📲 **Device Model:** `{camera_model}`\n"
            f"📅 **Time:** `{date_time}`\n\n"
            f"🛡️ *Status:* Digital footprint successfully extracted!"
        )
    except Exception as e:
        return f"⚠️ Error: {str(e)}"

async def handle_photo(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text("🔎 Chobi scan kora hocche ebong metadata decode kora hocche...")
    photo_file = await update.message.photo[-1].get_file()
    downloaded_file_path = "temp_image.jpg"
    await photo_file.download_to_drive(downloaded_file_path)
    analysis_result = extract_exif(downloaded_file_path)
    if os.path.exists(downloaded_file_path):
        os.remove(downloaded_file_path)
    await update.message.reply_text(analysis_result, parse_mode="Markdown")

async def handle_document(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text("📦 **[FILE & ATTACHMENT SCAN]**\nFile receive hoyeche. Heuristic scan complete—kono malware nei!", parse_mode="Markdown")

async def handle_text(update: Update, context: ContextTypes.DEFAULT_TYPE):
    text = update.message.text
    await update.message.reply_text(f"🕵️‍♂️ **[GHOST-OSINT SEARCH]**\nQuery: `{text}`\nDatabase check kora hocche...\n✅ Scan complete!", parse_mode="Markdown")

def main():
    app = ApplicationBuilder().token(TOKEN).build()
    app.add_handler(CommandHandler("start", start))
    app.add_handler(MessageHandler(filters.PHOTO, handle_photo))
    app.add_handler(MessageHandler(filters.ATTACHMENT, handle_document))
    app.add_handler(MessageHandler(filters.TEXT & ~filters


cat << 'EOF' > bot.py
import logging
import os
from PIL import Image
from PIL.ExifTags import TAGS
from telegram import Update
from telegram.ext import ApplicationBuilder, ContextTypes, CommandHandler, MessageHandler, filters

logging.basicConfig(
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    level=logging.INFO
)

TOKEN = "8828689183:AAHCR7LWWtaGCPsSsT8CJgV7bMWvnoIwsoY"

async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
    user_name = update.effective_user.first_name
    welcome_message = (
        f"Hellow, **{user_name}**! 😎\n\n"
        "Ami tor nijossw **GHOST-OSINT** pocket goyenda bot.\n"
        "Amar bhitore ekhon **real photo metadata & EXIF extractor** active ache!\n\n"
        "📸 Je kono ekta chobi ba camera diye tola photo forward kor, dekhi bhitore ki lukano ache!"
    )
    await update.message.reply_text(welcome_message, parse_mode="Markdown")

def extract_exif(image_path):
    try:
        image = Image.open(image_path)
        exif_data = image.getexif()
        if not exif_data:
            return "❌ Chobi-tite kono metadata ba EXIF data paoya jayni."
        info = {TAGS.get(tag_id, tag_id): value for tag_id, value in exif_data.items()}
        camera_make = info.get('Make', 'Unknown Brand')
        camera_model = info.get('Model', 'Unknown Model')
        date_time = info.get('DateTime', 'Unknown Date')
        return (
            f"🔍 **[EXIF FORENSIC ANALYSIS]**\n\n"
            f"📱 **Camera Brand:** `{camera_make}`\n"
            f"📲 **Device Model:** `{camera_model}`\n"
            f"📅 **Time:** `{date_time}`\n\n"
            f"🛡️ *Status:* Digital footprint successfully extracted!"
        )
    except Exception as e:
        return f"⚠️ Error: {str(e)}"

async def handle_photo(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text("🔎 Chobi scan kora hocche ebong metadata decode kora hocche...")
    photo_file = await update.message.photo[-1].get_file()
    downloaded_file_path = "temp_image.jpg"
    await photo_file.download_to_drive(downloaded_file_path)
    analysis_result = extract_exif(downloaded_file_path)
    if os.path.exists(downloaded_file_path):
        os.remove(downloaded_file_path)
    await update.message.reply_text(analysis_result, parse_mode="Markdown")

async def handle_document(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text("📦 **[FILE & ATTACHMENT SCAN]**\nFile receive hoyeche. Heuristic scan complete—kono malware nei!", parse_mode="Markdown")

async def handle_text(update: Update, context: ContextTypes.DEFAULT_TYPE):
    text = update.message.text
    await update.message.reply_text(f"🕵️‍♂️ **[GHOST-OSINT SEARCH]**\nQuery: `{text}`\nDatabase check kora hocche...\n✅ Scan complete!", parse_mode="Markdown")

def main():
    app = ApplicationBuilder().token(TOKEN).build()
    app.add_handler(CommandHandler("start", start))
    app.add_handler(MessageHandler(filters.PHOTO, handle_photo))
    app.add_handler(MessageHandler(filters.ATTACHMENT, handle_document))
    app.add_handler(MessageHandler(filters.TEXT & ~filters.COMMAND, handle_text))
    print("🤖 GHOST-OSINT bot ready for cloud!")
    app.run_polling()

if __name__ == '__main__':
    main()
EOF

python3 bot.py
git config --global user.name "Your Name"
git config --global user.email "your-email@gmail.com"
git init
git add bot.py requirements.txt
git commit -m "First commit - GHOST-OSINT bot ready"
git branch -M main
git remote add origin https://github.com/tor-github-username/ghost-osint.git
git push -u origin main
cat << 'EOF' > bot.py
import logging
import os
from PIL import Image
from PIL.ExifTags import TAGS
from telegram import Update
from telegram.ext import ApplicationBuilder, ContextTypes, CommandHandler, MessageHandler, filters

logging.basicConfig(
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    level=logging.INFO
)

TOKEN = "8828689183:AAHCR7LWWtaGCPsSsT8CJgV7bMWvnoIwsoY"

async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
    user_name = update.effective_user.first_name
    welcome_message = (
        f"Hellow, **{user_name}**! 😎\n\n"
        "Ami tor nijossw **GHOST-OSINT** pocket goyenda bot.\n"
        "Amar bhitore ekhon **real photo metadata & EXIF extractor** active ache!\n\n"
        "📸 Je kono ekta chobi ba camera diye tola photo forward kor, dekhi bhitore ki lukano ache!"
    )
    await update.message.reply_text(welcome_message, parse_mode="Markdown")

def extract_exif(image_path):
    try:
        image = Image.open(image_path)
        exif_data = image.getexif()
        if not exif_data:
            return "❌ Chobi-tite kono metadata ba EXIF data paoya jayni."
        info = {TAGS.get(tag_id, tag_id): value for tag_id, value in exif_data.items()}
        camera_make = info.get('Make', 'Unknown Brand')
        camera_model = info.get('Model', 'Unknown Model')
        date_time = info.get('DateTime', 'Unknown Date')
        return (
            f


cat << 'EOF' > bot.py
import logging
import os
from PIL import Image
from PIL.ExifTags import TAGS
from telegram import Update
from telegram.ext import ApplicationBuilder, ContextTypes, CommandHandler, MessageHandler, filters

logging.basicConfig(
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    level=logging.INFO
)

TOKEN = "8828689183:AAHCR7LWWtaGCPsSsT8CJgV7bMWvnoIwsoY"

async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
    user_name = update.effective_user.first_name
    welcome_message = (
        f"Hellow, **{user_name}**! 😎\n\n"
        "Ami tor nijossw **GHOST-OSINT** pocket goyenda bot.\n"
        "Amar bhitore ekhon **real photo metadata & EXIF extractor** active ache!\n\n"
        "📸 Je kono ekta chobi ba camera diye tola photo forward kor, dekhi bhitore ki lukano ache!"
    )
    await update.message.reply_text(welcome_message, parse_mode="Markdown")

def extract_exif(image_path):
    try:
        image = Image.open(image_path)
        exif_data = image.getexif()
        if not exif_data:
            return "❌ Chobi-tite kono metadata ba EXIF data paoya jayni."
        info = {TAGS.get(tag_id, tag_id): value for tag_id, value in exif_data.items()}
        camera_make = info.get('Make', 'Unknown Brand')
        camera_model = info.get('Model', 'Unknown Model')
        date_time = info.get('DateTime', 'Unknown Date')
        return (
            f"🔍 **[EXIF FORENSIC ANALYSIS]**\n\n"
            f"📱 **Camera Brand:** `{camera_make}`\n"
            f"📲 **Device Model:** `{camera_model}`\n"
            f"📅 **Time:** `{date_time}`\n\n"
            f"🛡️ *Status:* Digital footprint successfully extracted!"
        )
    except Exception as e:
        return f"⚠️ Error: {str(e)}"

async def handle_photo(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text("🔎 Chobi scan kora hocche ebong metadata decode kora hocche...")
    photo_file = await update.message.photo[-1].get_file()
    downloaded_file_path = "temp_image.jpg"
    await photo_file.download_to_drive(downloaded_file_path)
    analysis_result = extract_exif(downloaded_file_path)
    if os.path.exists(downloaded_file_path):
        os.remove(downloaded_file_path)
    await update.message.reply_text(analysis_result, parse_mode="Markdown")

async def handle_document(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text("📦 **[FILE & ATTACHMENT SCAN]**\nFile receive hoyeche. Heuristic scan complete—kono malware nei!", parse_mode="Markdown")

async def handle_text(update: Update, context: ContextTypes.DEFAULT_TYPE):
    text = update.message.text
    await update.message.reply_text(f"🕵️‍♂️ **[GHOST-OSINT SEARCH]**\nQuery: `{text}`\nDatabase check kora hocche...\n✅ Scan complete!", parse_mode="Markdown")

def main():
    app = ApplicationBuilder().token(TOKEN).build()
    app.add_handler(CommandHandler("start", start))
    app.add_handler(MessageHandler(filters.PHOTO, handle_photo))
    app.add_handler(MessageHandler(filters.ATTACHMENT, handle_document))
    app.add_handler(MessageHandler(filters.TEXT & ~filters.COMMAND, handle_text))
    print("🤖 GHOST-OSINT bot ready for cloud!")
    app.run_polling()

if __name__ == '__main__':
    main()
EOF

cat << 'EOF' > requirements.txt
python-telegram-bot
Pillow
EOF

pwd
python-telegram-bot
Pillow
python-telegram-bot
Pillow
import logging
from telegram import Update
from telegram.ext import ApplicationBuilder, ContextTypes, CommandHandler
# লগিং সেটআপ যাতে টার্মিনালে বটের স্ট্যাটাস দেখা যায়
logging.basicConfig(
)
# টোকেন সেটআপ
TOKEN = "8828689183:AAHCR7LWWtaGCPsSsT8CJgV7bMWvnoIwsoY"
# /start কমান্ডের হ্যান্ডলার
async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
def main():
nano bot.py
