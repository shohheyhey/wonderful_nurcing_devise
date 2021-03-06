class CustomersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :edit, :new, :create, :update]
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.where(user_id: current_user.id)
    # binding.pry
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @category = Category.find(@customer.category_id)
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = current_user.customers.new(customer_params)
    respond_to do |format|
      ActiveRecord::Base.transaction do
        if @customer.save
          if service_params == ["0"]
            ServicesCustomer.create!(customer_id: nil, service_id: nil)
          else
            service_params["service_id"].each do |i|
              ServicesCustomer.create!(customer_id: @customer.id, service_id: i.to_i)
            end
          end
          format.html { redirect_to @customer, notice: "Customer was successfully created." }
          format.json { render :show, status: :created, location: @customer }
        else
          format.html { render :new }
          format.json { render json: @customer.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: "Customer was successfully updated." }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy!
    respond_to do |format|
      format.html { redirect_to customers_url, notice: "Customer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:customer).permit(:user_id, :category_id, :name, :age, :birthday, :kaigodo, :medical_history, :discription, :image)
    end

    def service_params
      nil_var = params["service_customer"]
      if nil_var.nil?
        ["0"]
      else
        params.require(:service_customer).permit(service_id: [])
      end
    end
end
