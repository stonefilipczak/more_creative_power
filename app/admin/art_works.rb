ActiveAdmin.register ArtWork do
  permit_params :title, :description

  index do
    selectable_column
    column :id
    column :title
    column :description
    column :created_at
    column :updated_at
    column :user
    column :image do |art_work|
     if art_work.image.any?
        art_work.image.map do |img|
          if img.representable?
            link_to(image_tag(img.representation(resize_to_limit: [100, 100]), alt: art_work.title), admin_art_work_path(art_work))
          else
            "weird image"
          end
        end
     else
      "images not yet uploaded"
     end
    end
    actions
  end
end
