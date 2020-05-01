ActiveRecord::Schema.define(version: 123) do
  create_table :users, force: true do |t|
    t.string :name
  end

  create_table :articles, force: true do |t|
    t.string :title
    t.integer :user_id
  end

  create_table :comments, force: true do |t|
    t.string :comment
    t.integer :article_id
    t.integer :commenter_id
  end
end