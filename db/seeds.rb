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

suites = Suite.create([
    {:name => "Suite 1", :description => "Description suite 1"},
    {:name => "Suite 2", :description => "Description suite 2"},
    {:name => "Suite 3", :description => "Description suite 3"}
                      ])

cases =  Case.create([
    {:title => "Case 1", :description => "Description case 1", :precondition => "Precondition case 1", :suite_id => Suite.find_by(name:"Suite 1").id},
    {:title => "Case 2", :description => "Description case 2", :precondition => "Precondition case 2", :suite_id => Suite.find_by(name:"Suite 1").id},
    {:title => "Case 3", :description => "Description case 3", :precondition => "Precondition case 3", :suite_id => Suite.find_by(name:"Suite 2").id},
    {:title => "Case 4", :description => "Description case 4", :precondition => "Precondition case 4", :suite_id => Suite.find_by(name:"Suite 3").id}
                     ])

steps =  Step.create([
    {:action => "Step 1 - Case 1", :expectedResult => "Description step 1", :case_id => Case.find_by(title:"Case 1").id},
    {:action => "Step 2 - Case 1", :expectedResult => "Description step 2", :case_id => Case.find_by(title:"Case 1").id},
    {:action => "Step 3 - Case 1", :expectedResult => "Description step 3", :case_id => Case.find_by(title:"Case 1").id},
    {:action => "Step 1 - Case 2", :expectedResult => "Description step 1", :case_id => Case.find_by(title:"Case 2").id},
    {:action => "Step 2 - Case 2", :expectedResult => "Description step 2", :case_id => Case.find_by(title:"Case 2").id},
    {:action => "Step 1 - Case 3", :expectedResult => "Description step 1", :case_id => Case.find_by(title:"Case 3").id},
    {:action => "Step 2 - Case 3", :expectedResult => "Description step 2", :case_id => Case.find_by(title:"Case 3").id},
    {:action => "Step 1 - Case 4", :expectedResult => "Description step 1", :case_id => Case.find_by(title:"Case 4").id}
                     ])

builds = Build.create([
    {:active => true, :isOpen => true, :name => "Build 1", :description => "Description build 1", :releaseDate => '01/12/2017', :project_id => Project.find_by(name:"Proyecto1").id}
                     ])

plans = Plan.create([
    {:active => true, :public => true, :name => "Plan 1", :description => "Description plan 1", :build_id => Build.find_by(name:"Build 1").id},
    {:active => true, :public => true, :name => "Plan 2", :description => "Description plan 2", :build_id => Build.find_by(name:"Build 1").id},
    {:active => true, :public => true, :name => "Plan 3", :description => "Description plan 3", :build_id => Build.find_by(name:"Build 1").id}
                    ])

case_plans = CasePlan.create([
    {:case_id => Case.find_by(title:"Case 1").id, :plan_id => Plan.find_by(name:"Plan 1").id, :user_id => User.find_by(name:"Manuel").id},
    {:case_id => Case.find_by(title:"Case 1").id, :plan_id => Plan.find_by(name:"Plan 1").id, :user_id => User.find_by(name:"Francisco").id},
    {:case_id => Case.find_by(title:"Case 2").id, :plan_id => Plan.find_by(name:"Plan 1").id, :user_id => User.find_by(name:"Manuel").id},
    {:case_id => Case.find_by(title:"Case 3").id, :plan_id => Plan.find_by(name:"Plan 2").id, :user_id => User.find_by(name:"Manuel").id},
    {:case_id => Case.find_by(title:"Case 4").id, :plan_id => Plan.find_by(name:"Plan 2").id, :user_id => User.find_by(name:"Manuel").id}
                             ])

plans = MessageFolder.create([
                                 {:system => true, :name => "Inbox", :user => User.find_by(name: "Manuel")},
                                 {:system => true, :name => "Sends", :user => User.find_by(name: "Manuel")},
                                 {:system => true, :name => "Trash", :user => User.find_by(name: "Manuel")},
                                 {:system => true, :name => "Inbox", :user => User.find_by(name: "Francisco")},
                                 {:system => true, :name => "Sends", :user => User.find_by(name: "Francisco")},
                                 {:system => true, :name => "Trash", :user => User.find_by(name: "Francisco")}
                    ])