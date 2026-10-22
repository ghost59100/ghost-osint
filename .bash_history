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
apktool d /path/to/app.apk -o extracted_app
cd extracted_app
grep -rnw 'smali/' -e 'getRuntime().exec'
grep -rnw 'smali/' -e 'http://'
apktool d /sdcard/Download/ChatGPT_X.apk -o /sdcard/Download/chatgpt_extracted
cd /sdcard/Download/chatgpt_extracted
grep -rnw 'smali/' -e 'http://'
grep -rnw 'smali/' -e 't.me'
apktool b /sdcard/Download/chatgpt_extracted -o /sdcard/Download/ChatGPT_X_Clean.apk
termux-setup-storage
pkg update && pkg install java-openjdk wget -y
wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/unix/apktool -O apktool
wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.9.3.jar -O apktool.jar
chmod +x apktool apktool.jar
mv apktool apktool.jar $PREFIX/bin/
pkg update && pkg install wget openjdk-17 -y
pkg install openjdk -y
pkg update -y
pkg install default-jdk -y
termux-change-repo
wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/unix/apktool -O apktool
wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.9.3.jar -O apktool.jar
chmod +x apktool apktool.jar
mv apktool apktool.jar $PREFIX/bin/
apktool d ~/storage/shared/Download/ChatGPT_X.apk -o ~/storage/shared/Download/chatgpt_extracted
import os
class Config:
import re
import logging
class TripleLayerFirewall:
import time
from config import Config
from firewall import TripleLayerFirewall
class MultiServerBotEngine:
# টেস্ট এক্সিকিউশন
if __name__ == "__main__":;     bot = MultiServerBotEngine()
nano ghost_bot.py
python ghost_buf.py
python ghost_bot.py
{   "api_keys": [;     "YOUR_API_KEY_1",;     "YOUR_API_KEY_2",;     "YOUR_API_KEY_3";   ],;   "server_nodes": [;     {"name": "Free-Server-01", "url": "https://free-server-1.example.com", "status": "active"},;     {"name": "Free-Server-02", "url": "https://free-server-2.example.com", "status": "active"},;     {"name": "Backup-Node-03", "url": "https://free-server-3.example.com", "status": "active"};   ]; }
import json
import os
import re
import logging
# --- কনফিগ লোডার (এক্সটার্নাল ফাইল থেকে ডাটা রিড করবে) ---
class ConfigLoader:
# --- ট্রিপল-লেয়ার ফায়ারওয়াল ---
class TripleLayerFirewall:
# --- মাল্টি-সার্ভার ও এপিআই ইঞ্জিন ---
class MultiServerBotEngine:
if __name__ == "__main__":;     bot = MultiServerBotEngine()
nano config.json
nano bot.py
rm bot.py
nano bot.py
python bot.py
cd GHOST-OSINT-Bot
git init
git remote add origin https://github.com/তোর_ইউজারনেম/GHOST-OSINT-Bot.git
nano .gitignore
config.json
__pycache__/
nano update.sh
chmod +x update.sh
nano .gitignore
git init
git remote add origin https://github.com/তোমার_ইউজারনেম/GHOST-OSINT-Bot.git
git add .
git commit -m "GHOST-OSINT Bot: Multi-API, Firewall and Auto-Update ready"
git branch -M main
git push -u origin main
./update.sh
{   "api_keys": [;     "YOUR_API_KEY_1",;     "YOUR_API_KEY_2",;     "YOUR_API_KEY_3";   ],;   "server_nodes": [;     {       "name": "VisiHost-Primary-Node",;       "url": "https://visihost.in",;       "status": "active";     },;     {       "name": "Backup-Node-02",;       "url": "https://free-server-2.example.com",;       "status": "active";     },;     {       "name": "Backup-Node-03",;       "url": "https://free-server-3.example.com",;       "status": "active";     };   ]; }; nano config.json; 
nano config.json
python bot.py
nano config.json
rm config.json
nano config.json
python bot.py
{   "api_keys": [;     "tutor_asol_api_key_1",;     "tutor_asol_api_key_2";   ],;   "server_nodes": [;     {       "name": "VisiHost-Primary-Cloud",;       "url": "https://visihost.in",;       "status": "active";     },;     {       "name": "Free-Cloud-Node-02",;       "url": "https://ekhane-tor-dwitiyo-free-server-link.com",;       "status": "active";     },;     {       "name": "Free-Cloud-Node-03",;       "url": "https://ekhane-tor-tritio-free-server-link.com",;       "status": "active";     },;     {       "name": "Free-Cloud-Node-04",;       "url": "https://ekhane-ar-o-aktā-free-server-link.com",;       "status": "active";     };   ]; }
{   "api_keys": [;     "tutor_asol_api_key_1",;     "tutor_asol_api_key_2";   ],;   "server_nodes": [;     {       "name": "VisiHost-Primary-Node",;       "url": "https://visihost.in",;       "status": "active";     },;     {       "name": "Free-Cloud-Node-02",;       "url": "https://ekhane-tor-dwitiyo-free-server-link.com",;       "status": "active";     },;     {       "name": "Free-Cloud-Node-03",;       "url": "https://ekhane-tor-tritio-free-server-link.com",;       "status": "active";     },;     {       "name": "Free-Cloud-Node-04",;       "url": "https://ekhane-ar-o-aktā-free-server-link.com",;       "status": "active";     };   ]; };  {   "api_keys": [;     "tutor_asol_api_key_1",;     "tutor_asol_api_key_2";   ],;   "server_nodes": [;     {       "name": "VisiHost-Primary-Node",;       "url": "https://visihost.in",;       "status": "active";     },;     {       "name": "Free-Cloud-Node-02",;       "url": "https://ekhane-tor-dwitiyo-free-server-link.com",;       "status": "active";     },;     {       "name": "Free-Cloud-Node-03",;       "url": "https://ekhane-tor-tritio-free-server-link.com",;       "status": "active";     },;     {       "name": "Free-Cloud-Node-04",;       "url": "https://ekhane-ar-o-aktā-free-server-link.com",;       "status": "active";     };   ]; }
nano config.json
rm config.json
nano config.json
python bot.py
