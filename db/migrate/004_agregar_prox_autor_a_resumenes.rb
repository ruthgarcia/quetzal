migration 4, :agregar_prox_autor_a_resumenes do
  up do
    modify_table :resumen do
      add_column :prox_autor, Integer
    end
  end

  down do
    modify_table :resumen do
      drop_column :prox_autor
    end
  end
end
