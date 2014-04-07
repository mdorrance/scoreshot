class OpenShootsController < ApplicationController
  # GET /open_shoots
  # GET /open_shoots.json
  def index
    @open_shoots = OpenShoot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @open_shoots }
    end
  end

  # GET /open_shoots/1
  # GET /open_shoots/1.json
  def show
    @open_shoot = OpenShoot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @open_shoot }
    end
  end

  # GET /open_shoots/new
  # GET /open_shoots/new.json
  def new
    @open_shoot = OpenShoot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @open_shoot }
    end
  end

  # GET /open_shoots/1/edit
  def edit
    @open_shoot = OpenShoot.find(params[:id])
  end

  # POST /open_shoots
  # POST /open_shoots.json
  def create
    @open_shoot = OpenShoot.new(params[:open_shoot])

    respond_to do |format|
      if @open_shoot.save
        format.html { redirect_to @open_shoot, notice: 'Open shoot was successfully created.' }
        format.json { render json: @open_shoot, status: :created, location: @open_shoot }
      else
        format.html { render action: "new" }
        format.json { render json: @open_shoot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /open_shoots/1
  # PUT /open_shoots/1.json
  def update
    @open_shoot = OpenShoot.find(params[:id])

    respond_to do |format|
      if @open_shoot.update_attributes(params[:open_shoot])
        format.html { redirect_to @open_shoot, notice: 'Open shoot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @open_shoot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_shoots/1
  # DELETE /open_shoots/1.json
  def destroy
    @open_shoot = OpenShoot.find(params[:id])
    @open_shoot.destroy

    respond_to do |format|
      format.html { redirect_to open_shoots_url }
      format.json { head :no_content }
    end
  end
end
