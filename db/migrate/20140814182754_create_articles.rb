class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name1
      t.string :name2
      t.string :name3
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :address4
      t.string :address5
      t.string :dob
      t.string :start

      t.timestamps
    end
  end
end
