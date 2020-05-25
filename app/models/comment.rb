class Comment < ApplicationRecord
    belongs_to :meal


    def content_user
        id = self.user_id
        user_ob = User.find(id)
        user_ob.name
    end
end
