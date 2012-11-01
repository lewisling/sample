class Product < ActiveRecord::Base
  attr_accessible :aa_actual, :aa_plan, :active, :category_id, :comment, :cr_actual, :cr_plan, :description, :folder_ready, :handover, :model, :pd_actual, :pd_plan, :platform_id, :ppc_actual, :ppc_plan, :pv_actual, :pv_plan, :spl_id, :supplier_id, :swa_id, :swclass_id, :volume_forecast, :vpd_actual, :vpd_plan

  validates :category_id, :model, :spl_id, :swa_id, :swclass_id, :platform_id, :supplier_id, :presence => true

  belongs_to :category
  belongs_to :swclass
  belongs_to :platform
  belongs_to :swa
  belongs_to :spl
  belongs_to :supplier

  has_many :reviews

  scope :is_active, where(:active => true)
  scope :not_active, where(:active => false)
  scope :is_handover, where(:handover => true)
  scope :not_handover, where(:handover => false)
  scope :new_created, where( ["created_at > ?", 1.week.ago] )
  scope :old_created, where( ["created_at <= ?", 1.week.ago] )
  scope :new_updated, where( ["updated_at > ?", 1.week.ago] )
  scope :old_updated, where( ["updated_at <= ?", 1.week.ago] )

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end
end
