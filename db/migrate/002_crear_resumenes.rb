migration 2, :crear_resumenes do
  up do
    create_table :resumenes do
      column :id, Integer, :serial => true
      column :fecha, DataMapper::Property::String, :length => 255
      column :num_clase, DataMapper::Property::String, :length => 255
      column :ausentes, DataMapper::Property::String, :length => 255
      column :descripcion, DataMapper::Property::String, :length => 255
    end
  end

  down do
    drop_table :resumenes
  end
end
