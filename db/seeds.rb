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
      catch_copy: 'Daii_i12',
      image: File.open("#{Rails.root}/public/images/daii_i12.jpg")
    },
    {
      name: 'andy_83',
      sub_name: 'GeorgeLABO',
      catch_copy: '立川第一→立川女子',
      image: File.open("#{Rails.root}/public/images/andy_83.jpg")
    },
    {
      name: '310d5',
      sub_name: 'd5d5',
      catch_copy: '',
      image: File.open("#{Rails.root}/public/images/310d5.jpg")
    },
    {
      name: 't.makita',
      sub_name: 'Takako Makita',
      catch_copy: '',
      image: File.open("#{Rails.root}/public/images/t.makita.jpg")
    },
    {
      name: 'okuchan',
      sub_name: 'okkuchan_14',
      catch_copy: '',
      image: File.open("#{Rails.root}/public/images/okuchan.jpg")
    }
  ]
)

Post.create!(
  [
    {
      virtual_user_id: 2,
      body: '帰り道にスタバ～，道端で撮るの恥ずすぎてピント迷子',
      image1: File.open("#{Rails.root}/public/post_images/25/1.jpg"),
      date:  Date.new(2012, 1, 17)
    },
    {
      virtual_user_id: 3,
      body: '今日できたスタバにきた！！家近いし通おうかな笑',
      image1: File.open("#{Rails.root}/public/post_images/26/1.jpg"),
      date:  Date.new(2017, 5, 23)
    },
    {
      virtual_user_id: 6,
      body: '近くで火事あった！',
      image1: File.open("#{Rails.root}/public/post_images/28/1.jpg"),
      date:  Date.new(2021, 3, 1)
    },
    {
      virtual_user_id: 2,
      body: 'おいしそう，どこのお店？',
      date:  Date.new(2021, 7, 19)
    },
    {
      virtual_user_id: 4,
      body: '喫茶ルーブルってお店！学校行く三叉路にあるよ！今度帰りよろー！',
      date:  Date.new(2021, 7, 20)
    },
    {
      virtual_user_id: 1,
      body: '近所のぼうずに学校帰りに行ってきた！',
      image1: File.open("#{Rails.root}/public/post_images/32/1.jpg"),
      date:  Date.new(2021, 12, 16)
    },
    {
      virtual_user_id: 4,
      body: '帰り道にスイーツ！',
      image1: File.open("#{Rails.root}/public/post_images/33/1.jpg"),
      date:  Date.new(2021, 7, 18)
    },
    {
      virtual_user_id: 1,
      body: '蔵本祭がんばるぞ',
      image1: File.open("#{Rails.root}/public/post_images/34/1.jpg"),
      date:  Date.new(2019, 11, 1)
    },
    {
      virtual_user_id: 4,
      body: 'あんた起きてるじゃんw、まあ明日がんばろw',
      image1: File.open("#{Rails.root}/public/post_images/35/1.jpg"),
      date:  Date.new(2021, 6, 8)
    },
    {
      virtual_user_id: 2,
      body: '明日大縄大会あるんだから寝なよ，どうせみんな寝てるし',
      date:  Date.new(2021, 6, 8)
    },
    {
      virtual_user_id: 4,
      body: '眠れないからだれか電話しませんか？',
      date:  Date.new(2021, 6, 8)
    },
    {
      virtual_user_id: 6,
      body: '仕事納めのビール最高',
      date:  Date.new(2021, 12, 28)
    }
  ]
)

Follow.create!(
  [
    {
      virtual_user_id: 4,
      follower_id: 6
    },
    {
      virtual_user_id: 6,
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
      post_id: 30,
      replied_id: 29
    },
    {
      post_id: 29,
      replied_id: 33
    },
    {
      post_id: 36,
      replied_id: 37
    },
    {
      post_id: 35,
      replied_id: 36
    }
  ]
)

Good.create!(
  [
    {
      virtual_user_id: 2,
      post_id: 35
    },
    {
      virtual_user_id: 4,
      post_id: 25
    },
    {
      virtual_user_id: 2,
      post_id: 33
    }
  ]
)
