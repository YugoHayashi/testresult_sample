User.create!(
  [
    {
    name1: 'テスト一太郎',  name2: 'てすといちたろう', email: 'test1@test.com', address: '東京都渋谷区渋谷1-2-3', password: 'tesuto1'
    },
    {
      name1: 'テスト徹子',  name2: 'てすとてつこ', email: 'tetuko@test.com', address: '東京都渋谷区渋谷1-2-3', password: 'tetuko1'
    }
  ]
)

Testresult.create!( name1: 'テスト一太郎', jap_result: '70', math_result: '70', eng_result: '70', soci_result: '70', sci_result: '70' )

Testresult.create!( name1: 'テスト徹子', jap_result: '70', math_result: '70', eng_result: '70', soci_result: '70', sci_result: '70' )