class Product < ActiveRecord::Base
  attr_accessible :aa_actual, :aa_plan, :active, :category_id, :comment, :cr_actual, :cr_plan, :description, :folder_ready, :handover, :model, :pd_actual, :pd_plan, :platform_id, :ppc_actual, :ppc_plan, :pv_actual, :pv_plan, :spl_id, :supplier_id, :swa_id, :swclass_id, :volume_forecast, :vpd_actual, :vpd_plan
end
