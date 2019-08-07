# README
## バージョン
バージョン
Rails:5.2.3
Ruby:2.6.3p62 
DB:sqlite

## 開発環境
AWS Ubuntu(Cloud9)

# ToDoアプリを作成した
## 実装したもの
- Todoアプリ

名の通り。特にめぼしい機能はない。
優先事項がある場合は、その数を表示し、★にした。

編集画面に行くと、ページをリロードしないと変更が反映されなかった。
原因は不明だが、テーブル外で作成すれば問題なく実行できたため、テーブルを外した。
今後のためにコメントアウトの形で保存してる。
他にも達成ボタンをつけて、達成したものは--達成した内容--かつ、編集不可のようにしようとしたが、この限りにおいて必要性は感じられなかった。

- ログイン、ログアウト機能

ToDoアプリにはログインが必要であり、そのユーザーIDと一致する投稿を表示

- ユーザー削除

ユーザーを削除すると、IDも削除され、次のユーザーに投稿が引き継がれる。
adminの要素を追加し、trueならログイン可能、falseならログイン不可で、実質的な機能停止を行い、投稿も削除した。

## レイアウト
今回は力を入れなかった。
またすべてをapplication.scssに投げたの保守性の意味で問題である。
命名規則がまだよくわからないため、class名に一貫性がない。

## できなかったこと
### JS,Reactの実装。
Reactでアプリを作る予定が、Reactを追加できなかった。
最終的にrails new hogehoge --webpack=reactで追加できることがわかった。
作成し、reactを実装できたものに内容をコピーしても正常に動作するかがわからなかったため、今回は実装にいたっていない。

### 命名規則
Railsの命名規則から逸脱している。
controllerは複数形、Modelは単数形表記だが、意識していなかったため、そのままに至る。
修正も可能だが、今回は留めておき、次回に活かしたい、

## 今後
ユーザーではなく、Cookieで管理してみるのも面白そう。
次はJSで遊んでみよう。