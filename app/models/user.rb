class User < ApplicationRecord
  include ActiveModel::Dirty
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable,
         :trackable, :validatable

  # attr_accessor :manages

  # Relaciones
  belongs_to :role
  has_many :assign
  has_many :message_folders
  has_many :case_plans

  after_initialize do |user|
    unless user.role.nil?
      @manages ||= Manage.where(:role_id => user.role.id)
    end
  end


  def CanRead?(zone)
    # @CanRead = Manage.where(:role_id => self.role.id, :zone_id => zone).select(:canRead)
    # @manages.where(:zone_id => zone).select(:canRead).first
    @manages.select { |manage| manage.zone_id == zone }.first[:canRead]
  end

  def CanCreate?(zone)
    # @CanCreate ||= Manage.where(:role_id => self.role.id, :zone_id => zone).select(:canCreate)
    @manages.select { |manage| manage.zone_id == zone }.first[:canCreate]
  end

  def CanUpdate?(zone)
    # @CanUpdate ||= Manage.where(:role_id => self.role.id, :zone_id => zone).select(:canUpdate)
    @manages.select { |manage| manage.zone_id == zone }.first[:canUpdate]
  end

  def CanDelete?(zone)
    # @CanDelete ||= Manage.where(:role_id => self.role.id, :zone_id => zone).select(:canDelete)
    @manages.select { |manage| manage.zone_id == zone }.first[:canDelete]
  end


  private

  # def getManage
  #   @manages ||= Manage.where(:role_id => self.role.id)
  # end

end
