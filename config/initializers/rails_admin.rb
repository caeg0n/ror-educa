 RailsAdmin.config do |config|
  # config.parent_controller = RailsAdmin::RailsAdminAbstractController.to_s
  config.asset_source = :sprockets
  config.main_app_name = ["SEMED -", " SISTEMA DE INFORMAÇÃO 2023 - REDE"] 
  # config.navigation_static_links = { 'label' => 'fffff',
  #   'Relatorios' => 'http://google.com'.html_safe
  # }

  config.included_models = ['Student','School','Locality','Modality','Teacher','Course',
                            'TeacherSchoolInfo','CourseTeacherSchoolInfo','Responsible',
                            'Exercise','Classroom']
  config.model 'Student' do
    label 'Aluno'
    label_plural 'Alunos'
  end
  config.model 'School' do
    label 'Escola'
    label_plural 'Escolas'
  end
  config.model 'Locality' do
    label 'Localidade'
    label_plural 'Localidades'
  end
  config.model 'Modality' do
    label 'Modalidade'
    label_plural 'Modalidades'
  end
  config.model 'Teacher' do
    label 'Professor'
    label_plural 'Professores'
  end
  config.model 'Course' do
    label 'Materia'
    label_plural 'Materias'
  end
  config.model 'Responsible' do
    label 'Responsavel'
    label_plural 'Responsaveis'
  end
  config.model 'Exercise' do
    label 'Exercicio'
    label_plural 'Exercicios'
  end
  config.model 'Classroom' do
    label 'Classe'
    label_plural 'Classes'
  end

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/railsadminteam/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    #show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
