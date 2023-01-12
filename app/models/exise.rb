class Exise < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'レジスタンスEx' },
    { id: 3, name: 'ストレッチ' },
    { id: 4, name: 'ヨガ' },
    { id: 5, name: 'エアロビックス' },
    { id: 6, name: 'ウォーキング' },
    { id: 7, name: 'ランニング' },
    { id: 8, name: '水泳' },
    { id: 9, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :targets
end