Sequel.migration do
  change do
    create_table(:schema_migrations) do
      column :filename, "text", :null=>false
      
      primary_key [:filename]
    end
    
    create_table(:users) do
      column :id, "uuid", :default=>Sequel::LiteralString.new("uuid_generate_v4()"), :null=>false
      column :email, "text", :null=>false
      column :crypted_password, "text", :null=>false
      column :session_token, "text", :null=>false
      column :created_at, "timestamp without time zone", :null=>false
      column :updated_at, "timestamp without time zone"
      
      primary_key [:id]
      
      index [:email], :name=>:users_email_key, :unique=>true
    end
  end
end
