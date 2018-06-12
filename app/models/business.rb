class Business < ApplicationRecord
  has_many :schedule
  has_many :service
  before_validation :format_params
  validates :name, presence: true, length: { minimum: 5 }, uniqueness: true
  validates :city, presence: true
  validates :state, presence: true
  validates :neighborhood, presence: true
  validates :address, presence: true
  validates :zipcode, presence: true
  validates :cnpj, uniqueness: true
  validate :cnpj_valid
  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private
  	def cnpj_valid
  		errors.add(:cnpj, 'inválido') if !CNPJ.valid?(cnpj, strict: true)
  	end

  	def format_params
  		self.cnpj = CPF.new(cnpj).stripped
  	end
end
