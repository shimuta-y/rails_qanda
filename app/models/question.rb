class Question < ApplicationRecord
    has many :answers, dependent: :destroy
    
    validates :name, presence: true
    validates :title, presence: true
    validates :content, presence: true
end
