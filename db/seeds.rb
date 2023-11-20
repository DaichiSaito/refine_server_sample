User.find_or_create_by(name: '山田')
User.find_or_create_by(name: '鈴木')
User.find_or_create_by(name: '佐藤')
User.find_or_create_by(name: '高橋')
User.find_or_create_by(name: '斉藤')

Category.find_or_create_by(name: 'Ruby')
Category.find_or_create_by(name: 'Python')
Category.find_or_create_by(name: 'GO')
Category.find_or_create_by(name: 'PHP')

Article.find_or_create_by(title: '記事1です', content: '記事1です', user: User.all.sample).tap do |article|
  article.category_ids = Category.all.ids.sample(2)
end

Article.find_or_create_by(title: '記事2です', content: '記事2です', user: User.all.sample).tap do |article|
  article.category_ids = Category.all.ids.sample(2)
end