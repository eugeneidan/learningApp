class Todo < ActiveRecord::Base

  validates :title, presence: true, format: {with: /\A[a-z\sA-Z]+\z/, message: "can only be alphabets"}

end
