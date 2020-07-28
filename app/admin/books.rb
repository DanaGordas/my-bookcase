ActiveAdmin.register Book do
  permit_params :name, :year, :description, :original_language, :author_id, :photo

  form do |f|
    f.inputs "Book details" do
      f.input :name
      f.input :year
      f.input :description
      f.input :original_language
      f.input :author_id
      f.input :photo, as: :file
    end
    actions
  end

  # filter :name
  # filter :description
  # filter :year
  # filter :author_id
  # # See permitted parameters documentation:
  # # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  # #
  # # Uncomment all parameters which should be permitted for assignment
  # #

  # #
  # # or
  # #
  # # permit_params do
  # #   permitted = [:name, :year, :description, :original_language, :author_id, :photo]
  # #   permitted << :other if params[:action] == 'create' && current_user.admin?
  # #   permitted
  # # end
  controller do

    def create
      @book = Book.new(permitted_params[:book])
      if @book.save
        redirect_to admin_books_path, notice: 'Your book has been created!'
      else
        render :new
      end
    end

    def update
      @book = Book.find(params[:id])
      @book.update(permitted_params[:book])
      if @book.save
        redirect_to admin_book_path(@book), notice: 'Your book has been updated!'
      else
        render :new
      end
    end
  end

end
