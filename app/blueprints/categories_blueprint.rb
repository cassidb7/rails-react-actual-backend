class CategoriesBlueprint < BaseBlueprint
  view :normal do
    fields :id, :title, :image_url
  end


  view :extended do
    fields :id, :title, :image_url

    association :products, blueprint: ProductsBlueprint, view: :normal
  end
end
