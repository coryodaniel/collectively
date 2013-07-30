post1 = Post.create({
  title: 'First best post',
  body: 'A extravagant post to read about',
  created_at: '2012-02-14',
  updated_at: '2012-02-14'
})

post2 = Post.create({
  title: 'Second best post',
  body: 'A fantastic post to read about',
  created_at: '2012-03-14',
  updated_at: '2012-03-14'
})

["2012-02-14", "2012-02-15", "2012-02-16"].each do |date|
  20.times do |t|
    post1.page_views.create({
      ip: "192.168.1.#{t}",
      created_at: date
    })
  end
end

["2012-03-14", "2012-03-15", "2012-03-16"].each do |date|
  3.times do |t|
    post2.page_views.create({
      ip: "192.168.2.#{t + 30}",
      created_at: date
    })
  end
end