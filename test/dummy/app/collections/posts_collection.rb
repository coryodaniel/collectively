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
