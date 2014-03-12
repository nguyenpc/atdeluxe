class CreateAtmails < ActiveRecord::Migration
  def change
    create_table :atmails do |t|

      t.timestamps
    end
  end
end
