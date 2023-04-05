# 情報リテラシー教育のための個人情報調査アプリケーション

このアプリケーションは個人情報の特定方法を学ぶアプリケーションである．<br>
ユーザにはこの SNS 内の投稿などから，架空のユーザーの個人情報を特定してもらう．<br>
本アプリケーションで個人情報の特定方法（攻撃方法）を学ぶことで，どのような特定されない方法（防御方法）を知ることができる．<br>

# DEMO

![](./demo.png)

# Features

SNS の情報リテラシーの授業をするとなった際に実際のアプリケーションを用いて行うとなるとアカウントを複数作ることが手間である．また，教育ツールとして使うにも問題を解く過程で便利な機能というものも少ないと思われる．これらのことから実際の SNS をモデルとした教育支援アプリケーションの必要性を考えた．

# Requirement

- ruby '2.6.5'
- rails, '~> 5.2.6'

# Usage

```bash
git clone https://github.com/ajipon-44/soturon
docker-compose build
docker-compose up
```

# Note

※デプロイしてません

- 生徒用画面 URL
  http://localhost:3000/
