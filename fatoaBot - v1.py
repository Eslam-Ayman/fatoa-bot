#!/usr/bin/env python
# -*- coding: utf-8 -*-

# sudo pip install MySQL-python
# sudo pip install python-telegram-bot
# USE username$databasename;    
# SOURCE backup.sql;
import MySQLdb
db = MySQLdb.connect("localhost","bbm29","","fatoaBot",use_unicode=True,charset='utf8')
myCursor = db.cursor()
myCursor.execute('SET CHARACTER SET utf8') 
myCursor.execute("SELECT * from choices where ch_id = 2")
data_department = myCursor.fetchone()
myCursor.execute("SELECT * from choices where ch_id = 1")
data_man = myCursor.fetchone()
# myCursor.execute("SELECT * from pray")
# pray_result = myCursor.fetchall()
db.close()
#################################################################

from telegram import KeyboardButton, ReplyKeyboardMarkup , ReplyKeyboardHide
from telegram.ext import Updater , CommandHandler , CallbackQueryHandler , MessageHandler, Filters , RegexHandler , ConversationHandler
#302919708:AAGcqbRr4QLqq_Qn1PTEiFrXnYgE7bZ5Uxs
updater = Updater(token = '286007817:AAE5XJ-1M6WrGFZ3T7xe7ihog-0Ru308Blc')

def start (bot,update):
    db = MySQLdb.connect("localhost","bbm29","","fatoaBot",use_unicode=True,charset='utf8')
    myCursor = db.cursor()
    q = update.message.chat_id
    myCursor.execute("SELECT * from chat where ch_id  = '%s'" % q)
    if myCursor.rowcount == 0:
        myCursor.execute("insert into chat set ch_id = '%s'" % q)
        db.commit()
    db.close()
    keyboard = []
    x=1
    for i in range(2,len(data_department)):
        if(data_department[i] == ""): continue
        if(i > x and i < (len(data_department)-2)):
            # print range(2,len(data_department))
            keyboard.append([KeyboardButton(data_department[i]),KeyboardButton(data_department[i+1]),KeyboardButton(data_department[i+2])])
            x+=3
        elif(i > x and i == (len(data_department)-2)):
            keyboard.append([KeyboardButton(data_department[i]),KeyboardButton(data_department[i+1])])
            x+=1
        elif(i > x and i == (len(data_department)-1)):
            keyboard.append([KeyboardButton(data_department[i])])
            
    keyboard.append([KeyboardButton("/start",callback_data ="start")])
    r = ReplyKeyboardMarkup(keyboard , one_time_keyboard=True)
    r = ReplyKeyboardMarkup(keyboard , one_time_keyboard=True)
    bot.sendMessage(chat_id =update.message.chat_id , text = data_department[1] , reply_markup =r)

def answer(bot, update):
    db = MySQLdb.connect("localhost","bbm29","","fatoaBot",use_unicode=True,charset='utf8')
    myCursor = db.cursor()
    keyboard = []
    if update.message.text in data_department:
        myCursor.execute("UPDATE `chat` SET `dept`='%s' WHERE `ch_id` = '%s'" % (update.message.text,update.message.chat_id))
        db.commit()
        myCursor.execute("SELECT * from questions where dept = '%s'" % update.message.text)
        result = myCursor.fetchall()
        for row in result:
            keyboard.append([KeyboardButton(row[2],callback_data =row[0])])
            # keyboard.append([row[1]])
        keyboard.append([KeyboardButton("/start",callback_data ="start")])
        r = ReplyKeyboardMarkup(keyboard , one_time_keyboard=True)
        bot.sendMessage(chat_id =update.message.chat_id ,text="اختر سؤال", reply_markup =r)
    else:
        myCursor.execute("UPDATE `chat` SET `question`='%s' WHERE `ch_id` = '%s'" % (update.message.text,update.message.chat_id))
        db.commit()
        myCursor.execute("SELECT * from chat where ch_id = '%s'" % update.message.chat_id)
        data = myCursor.fetchone()
        # if data[1] == u"احمد1":
        #     man = "ahmed1"
        # if data[1] == u"احمد2":
        #     man = "ahmed2"
        # if data[1] == u"احمد3":
        #     man = "ahmed3"
        # if data[1] == u"احمد4":
        #     man = "ahmed4"
        # if data[1] == u"احمد5":
        #     man = "ahmed5"
        # if data[1] == u"احمد6":
        #     man = "ahmed6"
        man = 'answer'
        myCursor.execute("SELECT `%s` from questions where question = '%s'" % (man,update.message.text))
        ans = myCursor.fetchone()
        myCursor.execute("SELECT * from questions where dept = '%s'" % data[2])
        result = myCursor.fetchall()
        for row in result:
            keyboard.append([KeyboardButton(row[2],callback_data =row[0])])
            # keyboard.append([row[1]])
        keyboard.append([KeyboardButton("/start",callback_data ="start")])
        r = ReplyKeyboardMarkup(keyboard , one_time_keyboard=True)
        mess =  ans[0]
        bot.sendMessage(chat_id =update.message.chat_id ,text=mess)
        # bot.sendMessage(chat_id =update.message.chat_id ,text="اختر السوال", reply_markup =r)
    db.close()
     

updater.dispatcher.add_handler(CommandHandler('start' , start))
updater.dispatcher.add_handler(MessageHandler(Filters.text, answer))
# updater.dispatcher.add_handler(CallbackQueryHandler(button))

updater.start_polling()



# def button(bot,update):
#     query = update.callback_query
#     print query.data
#     bot.editMessageText(text="data_man %s " % query.data, chat_id=query.message.chat_id, message_id=query.message.message_id)
    # keyboard = []
    # for i in range(1,(len(data_man)-2)):
    #     if(data_man[i] == ""): continue
    #     keyboard.append([KeyboardButton(data_man[i],callback_data =data_man[i])])
    # r = ReplyKeyboardMarkup(keyboard)
    # bot.sendMessage(chat_id =update.message.chat_id , text = data_man[0] , reply_markup =r)


# import telebot
# bot = telebot.TeleBot('286007817:AAE5XJ-1M6WrGFZ3T7xe7ihog-0Ru308Blc')

# @bot.message_handler(content_types=['text'])
# def handler_text(message):
#     if (message.text == "hello"):
#         bot.send_message(message.chat_id,"hellooooooooo")
#     else:
#         bot.send_message(message.chat_id , "i don't know you any way")

# bot.polling(none_stop=True,interval=0)
    