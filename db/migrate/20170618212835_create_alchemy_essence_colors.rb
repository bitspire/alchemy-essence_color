class CreateAlchemyEssenceColors < ActiveRecord::Migration
  def change
    create_table "alchemy_essence_colors" do |t|
      t.string  "value"
      t.string  "format"
      t.integer  "creator_id"
      t.integer  "updater_id"
      t.datetime "created_at",      :null => false
      t.datetime "updated_at",      :null => false
    end
  end
end
