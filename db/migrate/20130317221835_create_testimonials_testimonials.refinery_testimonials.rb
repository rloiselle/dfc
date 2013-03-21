# This migration comes from refinery_testimonials (originally 1)
class CreateTestimonialsTestimonials < ActiveRecord::Migration

  def up
    create_table :refinery_testimonials do |t|
      t.string :name
      t.integer :position
      
      t.string :project_type
      t.integer :position

      t.string :project_date
      t.integer :position

      t.text :comments
      t.integer :position

      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-testimonials"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/testimonials/testimonials"})
    end

    drop_table :refinery_testimonials

  end

end