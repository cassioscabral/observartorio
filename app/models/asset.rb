class Asset < ActiveRecord::Base
  attr_accessible :asset_content_type, :asset_file_name, :asset_file_size,
  				  :asset_updated_at, :biblioteca_id, :asset

  belongs_to :post
  has_attached_file :asset


end
