LogManager::Engine.routes.draw do
  get '/' => 'log_manager/logs#index'
end
