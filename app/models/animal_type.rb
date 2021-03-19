class AnimalType < ActiveHash::Base
  self.data = [
    { id: 1, type: '--' },
    { id: 2, type: '犬' },
    { id: 3, type: '猫' },
    { id: 4, type: '鳥' },
    { id: 5, type: '小動物' },
    { id: 6, type: '爬虫類' },
    { id: 7, type: '両生類' },
    { id: 8, type: '魚類' },
  ]

  include ActiveHash::Associations
  has_many :posts
  end