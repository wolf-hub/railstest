class Post < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :user
	has_many :comments, dependent: :destroy
	def change
	    create_table :posts do |t|
	      t.string :title
	      t.text :summary
	      t.text :body

	      t.timestamps
	    end
	end
end
