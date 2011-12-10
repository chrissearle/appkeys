class Envkey < ActiveRecord::Base
  belongs_to :host

  scope :ordered, :order => 'name ASC'
end
