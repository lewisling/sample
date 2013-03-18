# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130318085056) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "milestones", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "platforms", :force => true do |t|
    t.string   "hardware"
    t.string   "software"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.boolean  "active"
    t.boolean  "handover"
    t.integer  "category_id"
    t.string   "model"
    t.integer  "swclass_id"
    t.string   "description"
    t.integer  "platform_id"
    t.integer  "swa_id"
    t.integer  "spl_id"
    t.integer  "supplier_id"
    t.integer  "volume_forecast"
    t.boolean  "folder_ready"
    t.integer  "pd_plan"
    t.integer  "pd_actual"
    t.integer  "vpd_plan"
    t.integer  "vpd_actual"
    t.integer  "aa_plan"
    t.integer  "aa_actual"
    t.integer  "ppc_plan"
    t.integer  "ppc_actual"
    t.integer  "pv_plan"
    t.integer  "pv_actual"
    t.integer  "cr_plan"
    t.integer  "cr_actual"
    t.string   "comment"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "cat"
    t.integer  "swc_id"
    t.text     "project_status"
    t.string   "traffic"
    t.boolean  "swccomfirmed"
    t.boolean  "NewPlatform"
    t.boolean  "NewSDK"
    t.boolean  "NewApp"
    t.boolean  "NewIDH"
    t.boolean  "NewODM"
    t.string   "AppNameVersion"
    t.string   "BaseProduct"
    t.string   "ChangesFromBaseProduct"
    t.integer  "traffic_id"
  end

  create_table "review_purposes", :force => true do |t|
    t.string   "purpose"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "review_results", :force => true do |t|
    t.string   "conclusion"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reviews", :force => true do |t|
    t.integer  "product_id"
    t.integer  "milestone_id"
    t.integer  "reviewpurpose_id"
    t.date     "planned_date"
    t.date     "actual_date"
    t.integer  "reviewresult_id"
    t.string   "comment"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "spls", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "swas", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "swcs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "traffics", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
