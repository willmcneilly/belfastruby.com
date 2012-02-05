class Post < ActiveRecord::Base
  
  attr_accessible :title, :summary, :content, :date, :category
  
  validates :title, :presence => true,
                    :length   => { :maximum => 80 }
  validates :summary, :presence => true, 
                      :length   => { :maximum => 140 }
  validates :content, :presence => true
  validates :date, :presence => true
  validates :category, :presence => true
  
end
