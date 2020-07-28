ActiveAdmin.register BookCategory do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :book_id, :category_id

  controller do
    def create
      @book_category = BookCategory.new(permitted_params[:book_category])
      if @book_category.save
        redirect_to admin_book_categories_path, notice: 'Your book category has been created!'
      else
        render :new
      end
    end

    def destroy
    @book_category = BookCategory.find(params[:id])
    @book_category.destroy
    redirect_to admin_book_categories_path, notice: 'Your book category has been deleted'
    end
  end

  #
  # or
  #
  # permit_params do
  #   permitted = [:book_id, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
