class Book < ApplicationRecord

  belongs_to :user

  validates :title, presence: true
  validates :body, length: { in: 1..200 }


  scope :user_filters, -> (params) {
    books = joins(:user)

    if params[:gender].present?
      books = books.merge(User.where(gender: params[:gender]))
    end

    if params[:age].present?
      books = books.merge(User.where(age: params[:age]))
    end
    books
  }


end
