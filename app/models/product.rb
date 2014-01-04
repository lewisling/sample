class Product < ActiveRecord::Base
  attr_accessible :aa_actual, :active, :category_id, :comment, :cr_actual,  
  					:description, :folder_ready, :handover, :model, :pd_actual, :pd_plan, :platform_id, 
  					:ppc_actual, :pv_actual, :spl_id, :supplier_id, :swa_id, 
  					:volume_forecast, :vpd_actual, :swc_id, :category_id, :updated_at, 
  					:project_status, :traffic, :swccomfirmed, :BaseProduct, :ChangesFromBaseProduct, 
            :AppNameVersion, :NewPlatform, :NewSDK, :NewODM, :NewIDH, :NewApp, :traffic_id, 
            :idh_id, :cmm_id, :aa_vpd, :ppc_vpd, :pv_vpd, :cr_vpd, :ppc_aa, :pv_aaa,
            :cr_aa, :pv_ppc, :cr_ppc, :cr_pv, 
            :kc1_id, :kc1c, :kc2_id, :kc2c, :kc3_id, :kc3c

  validates :category_id, :model, :spl_id, :swa_id, :swc_id, :supplier_id, :platform_id,
            :traffic_id, :idh_id, :cmm_id,
            :presence => true

  belongs_to :platform
  belongs_to :swa
  belongs_to :spl
  belongs_to :supplier
  belongs_to :category
  belongs_to :swc
  belongs_to :traffic
  belongs_to :idh
  belongs_to :cmm
end
