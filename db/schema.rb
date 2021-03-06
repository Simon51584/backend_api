ActiveRecord::Schema.define(version: 15489675621542) do

    # These are extensions that must be enabled in order to support this database
    enable_extension "plpgsql"
  
    create_table "notes", force: :cascade do |t|
      t.string   "title"
      t.string   "content"
      t.datetime "created_at",                 null: false
      t.datetime "updated_at",                 null: false
      t.boolean  "deleted",    default: false
      t.boolean  "liked"
    end
  
    create_table "users", force: :cascade do |t|
      t.string   "email",                  default: "",    null: false
      t.string   "encrypted_password",     default: "",    null: false
      t.string   "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.integer  "sign_in_count",          default: 0,     null: false
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.inet     "current_sign_in_ip"
      t.inet     "last_sign_in_ip"
      t.datetime "created_at",                             null: false
      t.datetime "updated_at",                             null: false
      t.boolean  "admin",                  default: false
      t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    end
  
  end
  