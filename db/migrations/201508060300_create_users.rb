Sequel.migration do
  change do
    create_table(:users) do
      column :id, :uuid, primary_key: true,
             default: Sequel.function(:uuid_generate_v4)
      String :email, null: false, unique: true
      String :crypted_password, null: false
      String :session_token, null: false
      DateTime :created_at, null: false
      DateTime :updated_at
    end
  end
end
