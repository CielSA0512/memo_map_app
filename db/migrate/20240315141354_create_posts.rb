class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string     :address,   null: false, default:""
      t.float      :latitude,  null: false
      t.float      :longitude, null: false
      t.text       :comment,   null: false
      t.string     :image
      t.references :user,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
