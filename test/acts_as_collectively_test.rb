require 'test_helper'
 
class ActsAsCollectivelyTest < ActiveSupport::TestCase
  def test_a_post_collectively_as_should_be_posts_collection
    assert_equal "posts", Post.collectively_name
    assert_equal "PostsCollection", Post.collectively_as
  end

  def test_the_post_count_should_be_2
    assert_equal 2, Post.count
  end
 
  def test_a_post_collectively_as_should_be_blogs_collection
    Post.acts_collectively as: :blogs
    assert_equal "blogs", Post.collectively_name
    assert_equal "BlogsCollection", Post.collectively_as
    Post.acts_collectively as: :posts
  end    

  def test_a_post_collection_should_respond_to_page_views_by_day
    assert_equal true, Post.all.collection.respond_to?(:page_views_by_day)
  end

  def test_a_post_collection_should_have_page_views_by_day
    views_by_day = {"2012-02-14"=>20, "2012-02-15"=>20, "2012-02-16"=>20, "2012-03-14"=>3, "2012-03-15"=>3, "2012-03-16"=>3}
    
    assert_equal views_by_day, Post.all.collection.page_views_by_day
  end  
end