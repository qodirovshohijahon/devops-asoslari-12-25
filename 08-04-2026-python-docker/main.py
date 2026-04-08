import telebot

# Replace 'YOUR_BOT_TOKEN' with the token you got from @BotFather
bot = telebot.TeleBot("8756494899:AAFRmlBcz4tvBx5PTKZz4xXz5PS1tUiu_Jo")

# Handle '/start' and '/help' commands
@bot.message_handler(commands=['start', 'help'])
def send_welcome(message):
    bot.reply_to(message, "Howdy, how are you doing?")

# Echo all text messages back to the user
@bot.message_handler(func=lambda message: True)
def echo_all(message):
    bot.reply_to(message, message.text)

# Start the bot
bot.infinity_polling()

