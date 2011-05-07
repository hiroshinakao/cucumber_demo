# -*- encoding: utf-8 -*-
#language:ja
フィーチャ: ユーザを管理したい
  シナリオ: ユーザの登録
    前提 "ユーザ登録"ページを表示している
    もし "user_email"に"mm2@cucumber.com"と入力する
    かつ "user_name"に"Mm2 Cucumber"と入力する
    かつ "user_age"に"1"と入力する
    かつ "Create"ボタンをクリックする
    ならば "User was successfully created."と表示されていること
    かつ "mm2@cucumber.com"と表示されていること
    かつ "Mm2 Cucumber"と表示されていること
    かつ "1"と表示されていること
