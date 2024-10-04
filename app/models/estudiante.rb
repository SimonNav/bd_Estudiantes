class Estudiante < ApplicationRecord
  # Validación para el campo nombres
  validates :nombres, presence: true
  validates :nombres, length: { maximum: 15 }
  validates_format_of :nombres, with: /\A[a-zA-Z]+\z/, message: "solo permite letras"

  # Validación para el campo apellidos
  validates :apellidos, presence: true
  validates :apellidos, length: { maximum: 20 }
  validates_format_of :apellidos, with: /\A[a-zA-Z]+\z/, message: "solo permite letras"

  # Validación para el campo carrera
  validates :carrera, presence: true
  validates :carrera, length: { maximum: 30 }
  validates_format_of :carrera, with: /\A[a-zA-Z]+\z/, message: "solo permite letras"

  # Validación para el campo carnet
  validates :carnet, presence: true
  validates :carnet, length: { is: 7 }
  validates_format_of :carnet, with: /\A[0-9]+\z/, message: "solo permite números"
end
