ActiveAdmin.register Firm do
  permit_params :firm_id, :type, :sector, :specialties, :vintage, :location, :size, :projects, :top_10_products, :accolades, :state_licensure, :name, :email, :phone, :website


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
