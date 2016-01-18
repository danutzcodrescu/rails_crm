class LogsController < ApplicationController
  before_action :set_log, only: [:show, :edit, :update, :destroy]

 

  # GET /contacts/:id/logs/1
  # GET /contacts/:id/logs/1.json
  def show
  end

  # GET /contacts/:id/logs/new
  def new
    @contact = Contact.find(params[:contact_id])
    @log =@contact.logs.build
  end

  # GET /logs/1/edit
  def edit
  end

  # POST /contacts/:id/logs
  # POST /contacts/:id/logs.json
  def create
    @contact = Contact.find(params[:contact_id])
    @log = @contact.logs.build(log_params)

    respond_to do |format|
      if @log.save
        format.html { redirect_to @contact, notice: 'Log was successfully created.' }
        format.json { render :show, status: :created, location: @log }
      else
        format.html { render :new }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/:id/logs/1
  # PATCH/PUT /contacts/:id/logs/1.json
  def update
    respond_to do |format|
      if @log.update(log_params)
        format.html { redirect_to @contact, notice: 'Log was successfully updated.' }
        format.json { render :show, status: :ok, location: @log }
      else
        format.html { render :edit }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/:id/logs/1
  # DELETE /contacts/:id/logs/1.json
  def destroy
    @log.destroy
    respond_to do |format|
      format.html { redirect_to logs_url, notice: 'Log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log
      @contact = Contact.find(params[:contact_id])
      @log = @contact.logs.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def log_params
      params.require(:log).permit(:responsible, :comment)
    end
    
end
