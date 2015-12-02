class TodoList < ActiveRecord::Base
    has_many :todo_items, dependent: :destroy
    belongs_to :user

    validates :title, presence: true
end
