class Host < ActiveRecord::Base
  has_many :envkeys
  has_many :foreman_configs

  scope :ordered, :order => 'hostname ASC'
end
