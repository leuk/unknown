# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090728215419) do

  create_table "arbitres", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "birthdate"
    t.string   "adress"
    t.integer  "cell_phone"
    t.integer  "home_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "content"
  end

  create_table "arenes", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "keywords"
    t.string   "meta"
    t.integer  "capacity"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "build_date"
    t.string   "snapshot_file_name"
    t.string   "snapshot_content_type"
    t.integer  "snapshot_file_size"
    t.datetime "snapshot_updated_at"
  end

  create_table "categorie_lutteurs", :force => true do |t|
    t.string   "title"
    t.integer  "min_weight"
    t.integer  "max_weight"
    t.integer  "lutteurs_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "combat_types", :force => true do |t|
    t.string   "title"
    t.boolean  "nullify"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ecuries", :force => true do |t|
    t.string   "title"
    t.string   "name"
    t.text     "content"
    t.string   "keywords"
    t.string   "meta"
    t.string   "website"
    t.string   "phone"
    t.string   "email"
    t.string   "adress"
    t.string   "slogan"
    t.date     "created_date"
    t.integer  "lutteurs_count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ecury_logo_file_name"
    t.string   "ecury_logo_content_type"
    t.integer  "ecury_logo_file_size"
    t.datetime "ecury_logo_updated_at"
  end

  create_table "groupes", :force => true do |t|
    t.string   "title"
    t.string   "name"
    t.string   "meta"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content"
    t.text     "keywords"
    t.integer  "tournoi_id"
  end

  create_table "lutteurs", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "keywords"
    t.string   "meta"
    t.date     "birth_date"
    t.string   "website"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "nickname"
    t.integer  "ecury_id"
    t.integer  "category_lutteur_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lutteur_avatar_file_name"
    t.string   "lutteur_avatar_content_type"
    t.integer  "lutteur_avatar_file_size"
    t.datetime "lutteur_avatar_updated_at"
  end

  create_table "promoteurs", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "keywords"
    t.string   "meta"
    t.string   "company_name"
    t.string   "website"
    t.integer  "phone"
    t.integer  "fax"
    t.string   "email"
    t.integer  "tournois_count",    :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "seasons", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "keywords"
    t.string   "meta"
    t.date     "start"
    t.date     "end"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "flyer_file_name"
    t.string   "flyer_content_type"
    t.integer  "flyer_file_size"
    t.datetime "flyer_updated_at"
    t.boolean  "is_current_season"
  end

  create_table "tiny_mce_photos", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id",      :limit => 11
    t.string   "content_type"
    t.string   "filename"
    t.integer  "size",         :limit => 11
    t.integer  "parent_id",    :limit => 11
    t.string   "thumbnail"
    t.integer  "width",        :limit => 11
    t.integer  "height",       :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tournois", :force => true do |t|
    t.string   "title"
    t.string   "name"
    t.text     "content"
    t.string   "keywords"
    t.string   "meta"
    t.date     "start"
    t.date     "end"
    t.string   "website"
    t.integer  "season_id"
    t.integer  "promoteur_id"
    t.integer  "type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "flyer_file_name"
    t.string   "flyer_content_type"
    t.integer  "flyer_file_size"
    t.datetime "flyer_updated_at"
  end

  create_table "types", :force => true do |t|
    t.string   "title"
    t.integer  "groups_count"
    t.integer  "groups_items"
    t.boolean  "home_away",    :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "login",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "last_login_at"
    t.datetime "current_login_at"
    t.string   "last_login_ip"
    t.string   "current_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
