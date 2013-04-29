class AddMilestoneToProducts < ActiveRecord::Migration
  def change
    add_column :products, :aa_vpd, :integer
    add_column :products, :ppc_vpd, :integer
    add_column :products, :pv_vpd, :integer
    add_column :products, :cr_vpd, :integer
    add_column :products, :ppc_aa, :integer
    add_column :products, :pv_aaa, :integer
    add_column :products, :cr_aa, :integer
    add_column :products, :pv_ppc, :integer
    add_column :products, :cr_ppc, :integer
    add_column :products, :cr_pv, :integer
    add_column :products, :cmm_id, :integer
  end
end
