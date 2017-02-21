# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roles = Role.create([
              {:name => "Admin", :description => "Rol perteneciente al Admininistrador"},
              {:name => "Leader", :description => "Rol perteneciente al Jefe de Proyecto"},
              {:name => "Viewer", :description => "Rol perteneciente al observador o visitante"},
              {:name => "Tester_Designer", :description => "Rol perteneciente al diseñador de los casos de uso y los pasos"},
              {:name => "Tester_Junior", :description => "Rol perteneciente al tester con menor experiencia del proyecto"},
              {:name => "Tester_Senior", :description => "Rol perteneciente al tester con mayor experiencia del proyecto"}])

zones = Zone.create([
              {:name => "User"},
              {:name => "Project"},
              {:name => "Suite"},
              {:name => "Case"},
              {:name => "Build"},
              {:name => "Plan"},
              {:name => "Execute"},
              {:name => "Platform"},
              {:name => "Keyword"}])

manages = Manage.create([
    # Manage Admin
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "User").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Project").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Suite").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Case").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Build").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Plan").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Execute").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Platform").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Keyword").id},

  # Manage Leader
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "User").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Project").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Suite").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Case").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Build").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Plan").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Execute").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Platform").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Keyword").id},

  # Manage Viewer
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "User").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Project").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Suite").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Case").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Build").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Plan").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Execute").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Platform").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Keyword").id},

  # Manage Designer
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "User").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Project").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Suite").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Case").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Build").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Plan").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Execute").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Platform").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Keyword").id},

  # Manage Junior
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "User").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Project").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Suite").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Case").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Build").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Plan").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Execute").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Platform").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Keyword").id},

  # Manage Senior
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "User").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Project").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Suite").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Case").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Build").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Plan").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Execute").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Platform").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Keyword").id},
                         ])