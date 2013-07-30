Collectively
====================

Add methods to ActiveRecord relations and collections. 

Great for quickly adding statistical methods to subsets of results from ActiveRecord.

Usage
---------------------

Generate a collection:

```bash
rails g collectively:collection posts
```

Add some code to app/collections/posts_collection.rb:

```ruby
class PostsCollection < Collectively::Base
  def page_views_by_day
    collection.inject({}){|memo, post|
      post.page_views.each do |page_view|
        date = page_view.created_at.to_date.to_s
        memo[date] ||= 0
        memo[date] += 1
      end
      
      memo
    }
  end
end
```


Add 'acts_collectively' to app/models/post.rb:

```ruby
class Post < ActiveRecord::Base
  acts_collectively
  # optionally override the collection name:
  # acts_collectively as: :blogs #=> BlogsCollection
  has_many :page_views
end
```

Access your collection methods:

```ruby
  # Page views by day this month
  Post.where(created_at: (Time.beginning_of_month..Time.now)).collection.page_views_by_day

  # Page views since first post
  Post.all.collection.page_views_by_day
```


Authors
---------------------

  * Cory ODaniel
