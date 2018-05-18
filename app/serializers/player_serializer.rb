class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :name, :nickname, :first_name, :last_name, :image_url
end
