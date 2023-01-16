# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
VirtualUser.create!(
  [
    {
      name: 'Daii_i12',
      sub_name: 'daii_i12',
      catch_copy: '暑くても寒くてもしんだいわ',
      image: File.open("#{Rails.root}/public/user_images/1.jpg"),
			belonging: '徳島大学',
			address: '徳島県徳島市',
      belonging_explanation: '蔵本祭に関する投稿をしているので検索すると徳島大学の学園祭であることから同大学の学生と推測できる．',
			address_explanation: '「近所のぼうずに学校帰りに行ってきた!」という投稿から「ぼうず」というラーメン屋が家の近くにあることが分かる.「徳島 ぼうず」と検索すると徳島県徳島市のつけ麺ぼうずがヒットすることから住んでいる地域が徳島県徳島市と特定できる．'
    },
    {
      name: 'andy_83',
      sub_name: 'GeorgeLABO',
      catch_copy: '立川第一→立川女子',
      image: File.open("#{Rails.root}/public/user_images/2.jpg"),
			belonging: '立川女子高等学校',
			address: '東京都立川市',
			belonging_explanation: 'プロフィール画面の「立川第一→立川女子」から出身中学校が立川第一中学校であり，現在は立川女子高等学校の生徒ということがわかる.投稿内容からも，大縄大会についての投稿があり，検索すると学校のホームページから 6 月 8 日は立川女子高等学校の大縄大会の前日であることがわかるので立川女子高等学校の生徒ということが確かめられる．',
			address_explanation: '帰り道にスターバックスに行ったという投稿があり，その投稿内にある「アジアンレストランバー デリシャス」を検索すると同じ店名のお店が複数ヒットするが，「学校帰り」というワードから立川市のお店と推測できる.また，このお店は立川市曙町1丁目にある.帰り道に電車に乗らずに立川駅から離れるように歩いていること，帰り道として歩いている場所が立川市曙町1丁目であること，立川第一中学校の学区が立川市曙町1丁目であることなどから考えると住んでいる地域も東京都立川市であると考えられる.'
    },
    {
      name: '310d5',
      sub_name: 'd5d5',
      catch_copy: '',
      image: File.open("#{Rails.root}/public/user_images/3.jpg"),
			address: '鳥取県鳥取市',
			address_explanation: '2015 年 5 月 23 日に「今日できたスタバにきた」という投稿をしている.この日付にできたスターバックスは鳥取県にできたスターバックスの1号店である「スターバックスコーヒーシャミネ鳥取店」であることが検索することでわかる．'
    },
    {
      name: 't.makita',
      sub_name: 'Takako Makita',
      catch_copy: '',
      image: File.open("#{Rails.root}/public/user_images/4.jpg"),
			belonging: '立川女子高等学校',
			real_name: 'まきた　たかこ',
			belonging_explanation: 'andy_83との会話内容から同じ学校に通っていると推測できる．',
			real_name_explanation: 'IDからフルネームが「たかこ まきた」であることが推測できる．'
    },
    {
      name: 'okuchan',
      sub_name: 'okkuchan_14',
      catch_copy: '',
			address: '神奈川県小田原市',
			address_explanation: '火事の投稿画像を画像検索することで神奈川県小田原市の火事であることがわかり，日付からも確認することができる．'
    }
  ]
)

Post.create!(
  [
    {
      virtual_user_id: 2,
      body: '帰り道にスタバ～，道端で撮るの恥ずすぎてピント迷子',
      image1: File.open("#{Rails.root}/public/post_images/1/1.jpg"),
      date: Date.new(2022, 1, 17),
      display_flag: 1
    },
    {
      virtual_user_id: 3,
      body: '今日できたスタバにきた！！家近いし通おうかな笑',
      image1: File.open("#{Rails.root}/public/post_images/2/1.jpg"),
      date: Date.new(2015, 5, 23),
      display_flag: 1
    },
    {
      virtual_user_id: 5,
      body: '近くで火事あった！',
      image1: File.open("#{Rails.root}/public/post_images/3/1.jpg"),
      date: Date.new(2021, 3, 1),
      display_flag: 1
    },
    {
      virtual_user_id: 2,
      body: 'おいしそう，どこのお店？',
      date: Date.new(2021, 7, 19),
      display_flag: 1
    },
    {
      virtual_user_id: 4,
      body: '喫茶ルーブルってお店！学校行く三叉路にあるよ！今度帰りよろー！',
      date: Date.new(2021, 7, 20),
      display_flag: 1
    },
    {
      virtual_user_id: 1,
      body: '近所のぼうずに学校帰りに行ってきた！',
      image1: File.open("#{Rails.root}/public/post_images/6/1.jpg"),
      date: Date.new(2021, 12, 28),
      display_flag: 1
    },
    {
      virtual_user_id: 4,
      body: '帰り道にスイーツ！',
      image1: File.open("#{Rails.root}/public/post_images/7/1.jpg"),
      date: Date.new(2021, 7, 18),
      display_flag: 1
    },
    {
      virtual_user_id: 1,
      body: '蔵本祭がんばるぞ',
      date: Date.new(2019, 11, 1),
      display_flag: 1
    },
    {
      virtual_user_id: 4,
      body: 'あんた起きてるじゃんw、まあ明日がんばろw',
      date: Date.new(2021, 6, 8),
      display_flag: 1
    },
    {
      virtual_user_id: 2,
      body: '明日大縄大会あるんだから寝なよ，どうせみんな寝てるし',
      date: Date.new(2021, 6, 8),
      display_flag: 1
    },
    {
      virtual_user_id: 4,
      body: '眠れないからだれか電話しませんか？',
      date: Date.new(2021, 6, 8),
      display_flag: 1
    },
    {
      virtual_user_id: 5,
      body: '仕事納めのビール最高',
      date: Date.new(2021, 12, 28),
      display_flag: 1
    }
  ]
)

Follow.create!(
  [
    {
      virtual_user_id: 4,
      follower_id: 5
    },
    {
      virtual_user_id: 5,
      follower_id: 4
    },
    {
      virtual_user_id: 1,
      follower_id: 4
    },
    {
      virtual_user_id: 4,
      follower_id: 2
    },
    {
      virtual_user_id: 2,
      follower_id: 4
    }
  ]
)

Reply.create!(
  [
    {
      post_id: 4,
      replied_id: 7
    },
    {
      post_id: 5,
      replied_id: 4
    },
    {
      post_id: 10,
      replied_id: 11
    },
    {
      post_id: 9,
      replied_id: 10
    }
  ]
)

Good.create!(
  [
    {
      virtual_user_id: 2,
      post_id: 5
    },
    {
      virtual_user_id: 4,
      post_id: 1
    },
    {
      virtual_user_id: 2,
      post_id: 9
    }
  ]
)
