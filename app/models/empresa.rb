class Empresa < ApplicationRecord
  has_one :politica, dependent: :destroy
  has_one :activo, dependent: :destroy
  has_one :acceso, dependent: :destroy
  has_one :ambiente, dependent: :destroy
  has_one :operativa, dependent: :destroy
  has_one :tele, dependent: :destroy
  has_one :desarrollo, dependent: :destroy
end
