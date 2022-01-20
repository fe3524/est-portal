class CreatePostPdfs < ActiveRecord::Migration[6.0]
  def change
    create_table :post_pdfs do |t|

      t.timestamps
    end
  end
end
