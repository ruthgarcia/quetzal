migration 3, :agregar_alumno_id_a_resumenes do
  up do
    modify_table :resumen do
      add_column :alumno_id, Integer
    end
  end

  down do
    modify_table :resumen do
      drop_column :alumno_id
    end
  end
end
