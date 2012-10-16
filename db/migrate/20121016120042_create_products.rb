class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.boolean :active
      t.boolean :handover
      t.integer :category_id
      t.string :model
      t.integer :swclass_id
      t.string :description
      t.integer :platform_id
      t.integer :swa_id
      t.integer :spl_id
      t.integer :supplier_id
      t.integer :volume_forecast
      t.boolean :folder_ready
      t.integer :pd_plan
      t.integer :pd_actual
      t.integer :vpd_plan
      t.integer :vpd_actual
      t.integer :aa_plan
      t.integer :aa_actual
      t.integer :ppc_plan
      t.integer :ppc_actual
      t.integer :pv_plan
      t.integer :pv_actual
      t.integer :cr_plan
      t.integer :cr_actual
      t.string :comment

      t.timestamps
    end
  end
end
