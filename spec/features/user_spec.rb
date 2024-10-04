require 'rails_helper'

feature "User wants to see all estudiantes created" do
  scenario "User is on the index page" do
    visit new_estudiante_path
    
    # Crear un nuevo estudiante
    fill_in "Nombres", with: "Pedro"
    fill_in "Apellidos", with: "Gonzalez"
    fill_in "Carrera", with: "Ingenieria"
    fill_in "Carnet", with: "1234567"
    click_button "Create Estudiante"
    
    # Hacer clic en el enlace "Back"
    click_link "Back"
    
    # Verificar que se muestran todos los estudiantes (o al menos el que acabamos de crear)
    expect(page).to have_content("Estudiantes")
    expect(page).to have_content("Pedro")
    expect(page).to have_content("Gonzalez")
  end
end
