class CreateMypages < ActiveRecord::Migration[6.0]
  def change
    create_table :mypages do |t|
      t.string :est_number,          null: false
      t.string :issue_date,          null: false
      t.string :exp_date,            null: false
      t.string :destination,         null: false
      t.string :title,               null: false
      t.string :dl_date,             null: false
      t.string :terms,               null: false

      t.string :initial1,            null: false
      t.integer :initial1_vol,       null: false
      t.integer :initial1_price,     null: false
      t.text :initial1_memo
      t.string :initial2
      t.integer :initial2_vol
      t.integer :initial2_price
      t.text :initial2_memo
      t.string :initial3
      t.integer :initial3_vol
      t.integer :initial3_price
      t.text :initial3_memo

      t.string :run1,                null: false
      t.integer :run1_vol,           null: false
      t.integer :run1_price,         null: false
      t.text :run1_memo
      t.string :run2
      t.integer :run2_vol
      t.integer :run2_price
      t.text :run2_memo
      t.string :run3
      t.integer :run3_vol
      t.integer :run3_price
      t.text :run3_memo
      t.string :run4
      t.integer :run4_vol
      t.integer :run4_price
      t.text :run4_memo
      t.string :run5
      t.integer :run5_vol
      t.integer :run5_price
      t.text :run5_memo
      t.string :run6
      t.integer :run6_vol
      t.integer :run6_price
      t.text :run6_memo
      t.string :run7
      t.integer :run7_vol
      t.integer :run7_price
      t.text :run7_memo
      t.string :run8
      t.integer :run8_vol
      t.integer :run8_price
      t.text :run8_memo
      t.string :run9
      t.integer :run9_vol
      t.integer :run9_price
      t.text :run9_memo

      t.timestamps
    end
  end
end
