ActiveAdmin.register ArtWork do
  permit_params :title, :description, :image
  includes image_attachments: :blob
  
  index do
    selectable_column
    column :title do |art|
      auto_link art
    end
    column :image do |art|
      if art.image.attached?
        art.image.each do |img|
          span link_to(image_tag(img.representation(resize_to_limit: [100, 100]), alt: art.title), admin_art_work_path(art))
        end
      end 
    end   
  end

  show do 
    attributes_table do 
      row :title
      row :description
      row :image do |art|
        if art.image.attached?
          art.image.each do |img|
            span link_to(image_tag(img.representation(resize_to_limit: [100, 100]), alt: art.title), admin_art_work_path(art))
          end
        end 
      end   
    end  
  end


end
