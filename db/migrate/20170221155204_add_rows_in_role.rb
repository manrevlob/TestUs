class AddRowsInRole < ActiveRecord::Migration[5.0]
  def self.up
    # Role.create :name => "Admin", :description => "Rol perteneciente al Admininistrador"
    # Role.create :name => "Leader", :description => "Rol perteneciente al Jefe de Proyecto"
    # Role.create :name => "Viewer", :description => "Rol perteneciente al observador o visitante"
    # Role.create :name => "Tester_Designer", :description => "Rol perteneciente al diseñador de los casos de uso y los pasos"
    # Role.create :name => "Tester_Junior", :description => "Rol perteneciente al tester con menor experiencia del proyecto"
    # Role.create :name => "Tester_Senior", :description => "Rol perteneciente al tester con mayor experiencia del proyecto"
  end

  def self.down
    Role.delete_all
  end
end
