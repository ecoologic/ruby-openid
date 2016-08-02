Rails.application.routes.draw do
  root controller: 'login', action: :index
  get 'server/xrds', controller: 'server', action: 'idp_xrds'
  get 'user/:username', controller: 'server', action: 'user_page'
  get 'user/:username/xrds', controller: 'server', action: 'user_xrds'

  # Allow downloading Web Service WSDL as a file with an extension
  # instead of a file named 'wsdl'
  get ':controller/service.wsdl', action: 'wsdl'

  # Install the default route as the lowest priority.
  get ':controller/:action/:id'

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  get ':controller(/:action(/:id))(.:format)'
end
