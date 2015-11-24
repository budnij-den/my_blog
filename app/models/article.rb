class Article < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 2}
  validates :text, presence:true,  length: {
    maximum: 4000,
    tokenizer: lambda { |str| str.split(/\s+/) },
    too_long: "must have at most %{count} words"
  }
  has_many :comments

  def subject
  	title
  end

  def last_comment
  	comments.last
  end
end
