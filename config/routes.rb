Rails.application.routes.draw do
  get "/customers", to: "customers#getAllRecords"
  get "/customers/:id", to: "customers#getSingleRecord"
  get "/customers/search/:terms", to: "customers#searchRecords"
  post "/login", to: "authentication#authenticate"
end
