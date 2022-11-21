class ProductsBlueprint < BaseBlueprint
  view :normal do
    fields :title, :description, :price, :category

    association :category, blueprint: CategoriesBlueprint, view: :normal
  end
end
