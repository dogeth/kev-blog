class Entry < ActiveRecord::Base
  has_many :comments
  def to_param
    permalink = title.downcase.gsub(/\W+/,"-")
    "#{id}-#{permalink}"
  end
end
