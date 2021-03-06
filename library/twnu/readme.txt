﻿****************************
・TweetConsole ver0.8.0
****************************

[概要]
OAuth認証に対応したコマンドプロンプトから実行するTwitterクライアントです。
コマンドプロンプトからTwitterでつぶやいたり、つぶやきを読み出しができます。
シンプルですが動作は軽いです。
そのままコマンドプロンプトから利用、バッチ処理、マクロ組み込み、簡易的なbot等にどうぞ。

[OS、必要なソフト]
Windows XP/Vista/7/8
※.NET Framework4.0が必要。

[インストール方法]
ダウンロードしたファイルを適当なフォルダに解凍してください。

[アップデート方法]
解凍したファイルをそのまま既存のファイルに上書きしてください。

[アンインストール方法]
インストールしたフォルダを削除してください。

[使用方法]
(1)コマンドプロンプトからtwtcnsl.exeを実行してください。
   環境変数pathをインストールしたフォルダに設定すると絶対パスで指定する必要がなくなります。
   スタート→コンピューター→コンピューターを右クリック→プロパティ→詳細設定→環境変数から
   環境変数pathにインストールしたフォルダのパスを追加してください。
   twtcnsl.exeを直接ダブルクリックかコマンドラインオプションなしで実行すると対話モードで起動します。

(2)Twitterのユーザ設定
   最初にtwtcnsl.exeを実行すると自動的にユーザ設定が行われます。
   Webブラウザが立ち上がりTwitterのサイトが表示されるので
   そこでTwitterのユーザ名とパスワードの入力を行い
   入力した後に表示される暗証番号をTweetConsoleに入力するとユーザの設定が完了します。

(3)コマンドラインオプションの説明

[つぶやき関連の機能]
・/t [つぶやきたい内容] つぶやきた内容を投稿することができます。(update)
     URLは自動的に短縮URLに短縮されます。
  (実行例) C:\>twtcnsl /t おはようございます。 → おはようございます。 と投稿されます。
           C:\>twtcnsl /t ^<おはようございます。^>^&^| →  <おはようございます。>&| と投稿されます。
           ※<,>,&,|の記号はコマンドプロンプトの特殊記号なので
             特殊記号の前にエスケープ文字 ^ を追加してください。

・/txt [行数 or /rnd] [テキストファイルのパス] テキストファイルから読み出して投稿します。(update)
  (実行例)C:\>twtcnsl /txt c:\tweet.txt → Cドライブにあるtweet.txtのテキストファイルから文字を読み出して投稿されます。
           ※テキストファイルは1行ずつ改行ごと分割されて投稿されます。空白行は無視されます。
           ※テキストファイルが存在しない場合は処理は行われません。
           ※1行が140文字以上ある行は投稿されないので注意してください。(要望があれば140文字以上の行を分割して投稿できるように変更？)
           ※文字コードはshift-jisだけに対応しています。他の文字コードだと文字化けします。(要望があれば今後、対応予定？)
           ※(注意)一度にたくさんのつぶやきを行うとフォロワーのタイムラインを占拠してしまいます。
             占拠されることを不快に思うユーザもいるので一度にたくさんのつぶやきを行うことはできるだけ控えてください。

          C:\>twtcnsl /txt 1 c:\tweet.txt → tweet.txtのテキストファイルの1行目のテキストを読み出して投稿されます。
           ※改行までを1行とみなします。そのため折り返し機能があるテキストエディタの行数と一致しない場合があります。
           ※空白行を指定した場合は投稿されません。

          C:\>twtcnsl /txt /rnd c:\tweet.txt → ランダムで行数が選択されて選択されたテキストが投稿されます。

・/r 最新のつぶやきを一件ずつ読みだします。(home_timeline)

・/ra [読み出す件数] 最新のつぶやきを指定した件数を一気に読みだします。(home_timeline)
     読み出す件数は最大200件まで指定できます。
     読み出す件数を省略すると20件読みだします。
  (実行例) C:\>twtcnsl /ra 100 → 最新のつぶやきを100件読みだします。
 
・/ru [ユーザ名] ユーザ名で指定したユーザのつぶやきを一件ずつ読み出します。(user_timeline)
     ユーザ名を省略すると自分のつぶやきが読み出されます。
  (実行例) C:\>twtcnsl /ru GachapinBlog → ユーザ名GachapinBlogのつぶやきを読みだします。
           C:\>twtcnsl /ru → ユーザ設定したユーザのつぶやきを読みだします。

・/rua [ユーザ名] ユーザ名で指定したユーザのつぶやき最新200件一気に読み出します。(user_timeline)
     ユーザ名を省略すると自分のつぶやきが読み出されます。
       
・/rm 自分宛のつぶやき一件ずつ読み出します。(mentions)

・/rma 自分宛のつぶやき最新200件を一気に読み出します。(mentions)
                          
・/d 自分がつぶやいた内容を削除します。(destroy)
     自分のつぶやきが表示されるので削除するつぶやきを選択してDキーを押すとそのつぶやきを削除できます。

[リツイート関連の機能]
・/rto 自分のつぶやきでリツイートされたつぶやきを一件ずつ読みだします。(retweets_of_me)

[検索関連の機能]
・/s [検索キーワード] 検索キーワードに合致するつぶやきを一件ずつ検索します。(search)
     複数のキーワードを指定することもできます。

・/sa [検索キーワード] 検索キーワードに合致するつぶやきを最新200件を一気に検索します。(search)

[ダイレクトメッセージ関連の機能]
・/dm [ユーザ名] [メッセージ] 指定したユーザ名にダイレクトメッセージを送ります。(direct_messages)
 
・/rdm 受信したダイレクトメッセージを一件ずつ読みだします。(direct_messages)
 
・/sdm 送信済みのダイレクトメッセージを一件ずつ読みだします。(direct_messages)

[リスト関連の機能]
・/li 自分が作成したリスト名一覧を読みだします。(lists)
 
・/rli [リスト名] 指定したリスト名に登録しているユーザのつぶやきをを一件ずつ読みだします。(lists)
 
・/rlia [リスト名] 指定したリスト名に登録しているユーザのつぶやき最新200件を一気に読みだします。(lists)

[その他の機能]      
・/c ユーザを変更することができます。
・/u 現在、設定されているユーザを確認することができます。
・cls 画面表示をクリアすることができます。
・exit 対話モードを終了します。

[上級者向け設定]
※自己責任で設定してださい。

ConsumerKey、ConsumerSecretが設定できるようになっています。
これらを設定することによりTweetConsoleでつぶやくと
従来はつぶやきの他に「TweetConsoleから」と表示されますが
ConsumerKey、ConsumerSecretを独自に設定することにより
この表示を自由に変更することができ、さらにクリックしたときに
ジャンプするURLも自由に設定することができます。
設定方法は以下のとおりです。

(1)以下のページでアプリケーションの作成の申請をしてください
  https://dev.twitter.com/apps/new
  ここで入力した「Name」「WebSite」が「…から」という表記と
  クリックしたときにジャンプするページになります。
(2)申請が完了するとConsumerKeyとConsumerSecretが通知されますので
   twtcnsl.exe.configをメモ帳で開いて以下の部分の修正してください。
 ※設定を元に戻す場合はtwtcnsl.exe.configのバックアップは取っておいてください。

   ----------------------------------------------------------
   <setting name="ConsumerKey" serializeAs="String">
       <value>XXX</value>
   </setting>
   <setting name="ConsumerSecret" serializeAs="String">
       <value>YYY</value>
   </setting>   
   ----------------------------------------------------------
   ※XXXの部分を通知されたConsumerKey、YYYの部分を
     通知されたConsumerSecretを設定してください。

(3)以下のコマンドで再度ユーザ設定を行ってください。
   twtcnsl /c
         
[制限事項]
※TweetConsoleはコマンドプロンプトの制限から以下の制限事項があります。

(1)日本語、英語以外の文字、絵文字、一部の記号等は表示が?に文字化けします。
(2)WindowsXPのGoogle日本語入力はコマンドプロンプト上で日本語を入力することができません。
   ちなみに日本語の切り替えはAlt + 半角/全角キーを押してください。
(3)コマンドプロンプト上でつぶやく場合、内容にコマンドプロンプトの特殊記号(>,<,|,&)が入っていると不具合がでます。
   その場合は特殊記号の前にエスケープ文字(^>,^<,^|,^&)を利用してください。

[改訂履歴]
2013/3/5
 ・TwitterAPI v1.1に対応。

2013/1/14 ver0.7.8
 ・リスト機能の不具合を修正。

2012/10/13 ver0.7.7
 ・送信したダイレクトメッセージの確認が出来ない不具合を修正。

2012/10/11 ver0.7.6
 ・ツイート、ダイレクトメッセージ送信が出来ない不具合を修正。

2011/8/15 ver0.7.4
 ・ConsumerKey、ConsumerSecretについてreadme.txtに補足を追加。

2010/11/23 ver0.7.3
 ・公式リツイートの一件ずつ読み出す機能を追加。
 ・一件ずつつぶやき読み出し中にリプライ、公式リツイートできるように変更。

2010/6/4 ver0.7.1
・つぶやきの不具合を修正。

2010/5/31 ver0.7.0
・URL読み出しの機能を追加。
・検索機能を追加。
・ダイレクトメッセージ関連の機能を追加。
・リスト関連の機能を追加。
・自分宛のつぶやきを一気に読み出せるコマンドを追加。

2010/5/20 ver0.2.2
・/ru コマンドの不具合を修正。

2010/5/14 ver0.2.1
・一件ずつ読み出すコマンド(/r /ru /rm)の動作を変更。
・テキストファイルからテキストを読み出してつぶやけるように変更。
・読み出し時の表示の不具合を修正。

2010/5/8 ver0.0.2
・短縮URLで投稿できるように変更。
・特定ユーザのつぶやきを一気に読み出せるコマンドを追加。

2010/4/21 ver0.0.1
・初公開

[その他]
本ソフトはフリーソフトです。
このソフトの実行により問題、損害等が発生しましても作者は責任をとりません。
全て自己責任において使用してください。

[連絡先]
ご要望、ご質問、不具合報告の連絡には下記メールアドレス、Twitter等に連絡願い致します。
作者:t_higashi
(mail) zd11s3368@gmail.com
(Twitter) http://twitter.com/t_higashi