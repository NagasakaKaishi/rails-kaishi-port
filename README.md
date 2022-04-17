#### 本アプリは私がポテパンキャンプでの経験を基に作成したポートフォリオです。

#### こちらから本アプリにアクセス出来ます。[Heroku.](https://rails-kaishi-port.herokuapp.com)

# 概要
毎日のトレーニングを記録することができるので、トレーニングの習慣化に役立ちます。

# 機能一覧

### 機能
* 日々のトレーニングを記録
* トレーニングの合計セット数を日毎にグラフ化
* ログイン機能&ゲストログイン機能
* トレーニングメニューの追加

### 使用技術
* full_calendar
* chartkick
* devise
* bootstrap
* Docker
* circleci
* rspec

# 使用方法

![sample](https://github.com/NagasakaKaishi/rails-kaishi-port/blob/main/output.gif)

### 1. カレンダーの日付をクリック
![sample1](./sample1_image.png)

### 2. トレーニング内容を記録
![sample2](./sample2_image.png)

![sample3](./sample3_image.png)

# こだわって作成したポイント
こだわった点は以下の３点です。
1. 日毎のセット数をグラフ化
2. トレーニング種目をユーザ自身で作成
3. トレーニング実施日をカウント

### 1. 日毎のセット数をグラフ化
セット数をグラフ化するために、chartkickというgemを使用。
groupdateのgemを併用することでわかりやすく表示。

### 2. トレーニング種目をユーザ自身で作成
ユーザごとにメニューを作成できるようにし、トレーニング記録をつけやすくしました。

### 3. トレーニング実施日をカウント
トレーニング実施日をカウントすることで継続している感覚を得やすくしました。

# 作成者
 
* name: 長坂　海志(Nagasaka Kaishi)
* e-mail: kaishi0827@icloud.com

# ライセンス

[MIT](https://choosealicense.com/licenses/mit/)
