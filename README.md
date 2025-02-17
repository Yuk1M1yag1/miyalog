# README

# 名前
"みやログ"

# 概要
ユーザーが過去に行った飲食店の自己評価をし、SNSに共有もできる日記風アプリケーション。

# 環境
* 言語(Ruby 2.6.3 )
* フレームワーク(Rails 5.2.3)
* AWS, Cloud9, EC2, VPC ,RDS, Route53
* 「お名前.com」を用いてURLを取得しデプロイ（停止中）。

# 使用している技術・機能一覧
* インフラ（AWS)
* データベース（SQLite3, 本番環境mysql2）
* ユーザー別ログイン（Devise）
* 言語切り替え日～英（i18n）
* デザイン(Bootstrap)
* ページネーション（Kaminari）
* 画像アップロード（carrierwave, MiniMagick, ImageMagick）
* ユーザー情報の編集
* ユーザーによる投稿・詳細閲覧・編集・削除
* 詳細ページでTwitter・Facebookでの共有ボタン
* 星デザインの評価
* モバイルデバイス用のView設定
* Circle CIによるビルド,テスト
* rubocopによる整形
* Rspecによる単体/システムテスト
