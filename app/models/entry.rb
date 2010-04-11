class Entry < ActiveRecord::Base
  def to_param
    permalink = title.downcase.gsub(/\W+/,"-")
    "#{id}-#{permalink}"
  end
end
