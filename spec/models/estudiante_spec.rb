require 'rails_helper'

RSpec.describe Estudiante, type: :model do
  context "validations" do

    # Validaciones para el campo nombres
    it { should validate_presence_of(:nombres) }
    it { should validate_length_of(:nombres).is_at_most(15) }
    it { should_not allow_value("123123").for(:nombres) }
    it { should allow_value("Pedro").for(:nombres) }

    # Validaciones para el campo apellidos
    it { should validate_presence_of(:apellidos) }
    it { should validate_length_of(:apellidos).is_at_most(20) }
    it { should_not allow_value("456456").for(:apellidos) }
    it { should allow_value("Gonzalez").for(:apellidos) }

    # Validaciones para el campo carrera
    it { should validate_presence_of(:carrera) }
    it { should validate_length_of(:carrera).is_at_most(30) }
    it { should_not allow_value("11111").for(:carrera) }
    it { should allow_value("Ingenieria").for(:carrera) }

    # Validaciones para el campo carnet
    it { should validate_presence_of(:carnet) }
    it { should validate_length_of(:carnet).is_equal_to(7) }
    it { should_not allow_value("abcd").for(:carnet) }
    it { should allow_value("1234567").for(:carnet) }

  end
end
