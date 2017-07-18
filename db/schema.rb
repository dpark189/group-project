# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170718145345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookgenres", force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "genre_id", null: false
    t.index ["book_id"], name: "index_bookgenres_on_book_id"
    t.index ["genre_id"], name: "index_bookgenres_on_genre_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title", null: false
    t.string "author", null: false
    t.integer "page_number", null: false
    t.string "average_rating", default: "0"
    t.text "summary", null: false
    t.string "cover_url", default: "http://webneel.com/sites/default/files/images/download/thumb/old-book-with-blank-cover%201_0.jpg"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name", null: false
  end

end