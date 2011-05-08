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

  シナリオ: ユーザの削除
    前提 次のユーザが登録されている:
		  |email  |name|age|
			|a@a.com|a a |1  |
			|b@b.com|b b |2  |
    もし 2番目のユーザを削除する
    ならば 次のユーザが表示されていること:
		  |Email  |Name|Age|
			|a@a.com|a a |1  |
