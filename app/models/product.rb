class Product < ActiveRecord::Base
  attr_accessible :aa_actual, :aa_plan, :active, :category_id, :comment, :cr_actual, :cr_plan, 
  					:description, :folder_ready, :handover, :model, :pd_actual, :pd_plan, :platform_id, 
  					:ppc_actual, :ppc_plan, :pv_actual, :pv_plan, :spl_id, :supplier_id, :swa_id, 
  					:volume_forecast, :vpd_actual, :vpd_plan, :swc_id, :category_id, :updated_at, 
  					:project_status, :traffic, :swccomfirmed, :BaseProduct, :ChangesFromBaseProduct, 
            :AppNameVersion, :NewPlatform, :NewSDK, :NewODM, :NewIDH, :NewApp, :traffic_id

  validates :category_id, :model, :spl_id, :swa_id, :swc_id, :supplier_id, :platform_id, 
            :traffic_id,
            :presence => true

  belongs_to :platform
  belongs_to :swa
  belongs_to :spl
  belongs_to :supplier
  belongs_to :category
  belongs_to :swc
  belongs_to :traffic

  has_many :reviews

end
