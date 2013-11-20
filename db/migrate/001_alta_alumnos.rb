migration 1, :alta_alumnos do
  up do
    create_table :alumnos do
      column :id, Integer, :serial => true
      column :nombre, DataMapper::Property::String, :length => 255
      column :apellido, DataMapper::Property::String, :length => 255
      column :contrasena_encriptada, DataMapper::Property::String, :length => 255
      column :email, DataMapper::Property::String, :length => 255
    end
  end

  down do
    drop_table :alumnos
  end
end
