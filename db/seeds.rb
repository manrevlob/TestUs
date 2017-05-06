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

users = User.create([
    {:name => "Manuel", :surname => "Revilla", :email => "rev@testUs.com", :username => "manu", :password => "123456", :role_id => Role.find_by(name: "Admin").id, :active => true},
    {:name => "Francisco", :surname => "Valle", :email => "pak@testUs.com", :username => "paco", :password => "123456", :role_id => Role.find_by(name: "Admin").id, :active => true},
    {:name => "Tester", :surname => "Designer", :email => "designer@testUs.com", :username => "designer", :password => "123456", :role_id => Role.find_by(name: "Tester_Designer").id, :active => true},
    {:name => "Tester", :surname => "Junior", :email => "junior@testUs.com", :username => "junior", :password => "123456", :role_id => Role.find_by(name: "Tester_Junior").id, :active => true},
    {:name => "Viewer", :surname => "User", :email => "viewer@testUs.com", :username => "viewer", :password => "123456", :role_id => Role.find_by(name: "Viewer").id, :active => true},
    {:name => "Prueba", :surname => "Prueba", :email => "prueba@testUs.com", :username => "prueba", :password => "123456", :role_id => Role.find_by(name: "Viewer").id, :active => false}
                    ])

projects = Project.create([
    {:name => "Proyecto1", :description => "Descripcion del proyecto 1", :active => true, :public => true},
    {:name => "Proyecto2", :description => "Descripcion del proyecto 2", :active => true, :public => false}
                          ])

assigns = Assign.create([
    {:user_id => User.find_by(name: "Manuel").id, :project_id => Project.find_by(name:"Proyecto1").id},
    {:user_id => User.find_by(name: "Francisco").id, :project_id => Project.find_by(name:"Proyecto1").id},
    {:user_id => User.find_by(name: "Francisco").id, :project_id => Project.find_by(name:"Proyecto2").id},
    {:user_id => User.find_by(surname: "Designer").id, :project_id => Project.find_by(name:"Proyecto1").id},
    {:user_id => User.find_by(surname: "Junior").id, :project_id => Project.find_by(name:"Proyecto1").id},
    {:user_id => User.find_by(name: "Viewer").id, :project_id => Project.find_by(name:"Proyecto1").id},
    {:user_id => User.find_by(name: "Prueba").id, :project_id => Project.find_by(name:"Proyecto1").id}
                        ])