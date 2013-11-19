migration 2, :crear_resumenes do
  up do
    create_table :resumen do
      column :id, Integer, :serial => true
      column :fecha, DataMapper::Property::String, :length => 255
      column :num_clase, DataMapper::Property::String, :length => 255
      column :ausentes, DataMapper::Property::String, :length => 255
      column :descripcion, DataMapper::Property::Text
    end
  end

  down do
    drop_table :resumen
  end
end
