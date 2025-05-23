<h1 align="center">Restricted Content Downloader Telegram Bot</h1>

<p align="center">
  <a href="https://github.com/bisnuray/RestrictedContentDL/stargazers"><img src="https://img.shields.io/github/stars/bisnuray/RestrictedContentDL?color=blue&style=flat" alt="GitHub Repo stars"></a>
  <a href="https://github.com/bisnuray/RestrictedContentDL/issues"><img src="https://img.shields.io/github/issues/bisnuray/RestrictedContentDL" alt="GitHub issues"></a>
  <a href="https://github.com/bisnuray/RestrictedContentDL/pulls"><img src="https://img.shields.io/github/issues-pr/bisnuray/RestrictedContentDL" alt="GitHub pull requests"></a>
  <a href="https://github.com/bisnuray/RestrictedContentDL/graphs/contributors"><img src="https://img.shields.io/github/contributors/bisnuray/RestrictedContentDL?style=flat" alt="GitHub contributors"></a>
  <a href="https://github.com/bisnuray/RestrictedContentDL/network/members"><img src="https://img.shields.io/github/forks/bisnuray/RestrictedContentDL?style=flat" alt="GitHub forks"></a>
</p>

<p align="center">
  <em>Restricted Content Downloader: An advanced Telegram bot script to download restricted content such as photos, videos, audio files, or documents from Telegram private chats or channels. This bot can also copy text messages from Telegram posts.</em>
</p>
<hr>

## Features

- 📥 Download media (photos, videos, audio, documents).
- ✅ Supports downloading from both single media posts and media groups.
- 🔄 Progress bar showing real-time downloading progress.
- ✍️ Copy text messages or captions from Telegram posts.

## Requirements

Before you begin, ensure you have met the following requirements:

- Python 3.8 or higher. recommended Python 3.11
- `ffmpeg` library.
- A Telegram bot token (you can get one from [@BotFather](https://t.me/BotFather) on Telegram).
- API ID and Hash: You can get these by creating an application on [my.telegram.org](https://my.telegram.org).
- To Get `SESSION_STRING` Open [@SmartUtilBot](https://t.me/SmartUtilBot). Bot and use `/pyro` command and then follow all instructions.

## Installation

To install ffmpeg, run the following command:

```bash
apt upgrade && apt upgrade -y
apt install ffmpeg -y
```

To install required python libraries, run the following command:

```bash
pip install -r -U requirements.txt
```

**Note: If you previously installed `pyrogram`, uninstall it before installing `pyrofork`.**

## Configuration

1. Open the `config.env` file in your favorite text editor.
2. Replace the placeholders for `API_ID`, `API_HASH`, `SESSION_STRING`, and `BOT_TOKEN` with your actual values:
   - **`API_ID`**: Your API ID from [my.telegram.org](https://my.telegram.org).
   - **`API_HASH`**: Your API Hash from [my.telegram.org](https://my.telegram.org).
   - **`SESSION_STRING`**: The session string generated using [@SmartUtilBot](https://t.me/SmartUtilBot).
   - **`BOT_TOKEN`**: The token you obtained from [@BotFather](https://t.me/BotFather).

## Deploy the Bot

```sh
git clone https://github.com/bisnuray/RestrictedContentDL
cd RestrictedContentDL
python main.py
```

## Deploy the Bot Using Docker Compose

```sh
git clone https://github.com/bisnuray/RestrictedContentDL
cd RestrictedContentDL
docker compose up --build --remove-orphans
```

Make sure you have Docker and Docker Compose installed on your system. The bot will run in a containerized environment with all dependencies automatically managed.

To stop the bot:

```sh
docker compose down
```

## Usage

- `/start` – Welcomes the user and gives a brief introduction.
- `/help` – Provides detailed instructions on how to use the bot.
- `/dl <post URL>` – Downloads the media from the specified post URL.
- `<post URL>` – Downloads the media from the specified post URL.

> **Note:** Ensure that the user client is part of the chat from where the media is being downloaded. If the user client is not part of the chat, the bot will not be able to download the file.

## Author

- Name: Bisnu Ray
- Telegram: [@itsSmartDev](https://t.me/itsSmartDev)

> **Note**: If you found this repo helpful, please fork and star it. Also, feel free to share with proper credit!
