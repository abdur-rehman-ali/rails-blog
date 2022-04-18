class Blog < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
    validate :title_cannot_be_ali 
    belongs_to :user


    def title_cannot_be_ali
        if title=="ali"
            errors.add(:title,'Title cannot be ali')
        end
    end
end
