class CreateProfessionalEqualities < ActiveRecord::Migration[6.0]
  def change
    create_table :professional_equalities do |t|
      t.string :technical_name,             default: ""
      t.string :year,                       default: ""
      t.string :index,                      default: ""
      t.string :pay_gap_result,             default: ""
      t.string :pay_gap_points,             default: ""
      t.string :increase_gap_result,        default: ""
      t.string :increase_gap_points,        default: ""
      t.string :maternity_increase_result,  default: ""
      t.string :maternity_increase_points,  default: ""
      t.string :high_remuneration_result,   default: ""
      t.string :high_remuneration_points,   default: ""
      t.text :actions_comment,              default: ""
      t.timestamps
    end
  end
end
