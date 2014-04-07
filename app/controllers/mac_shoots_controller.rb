class MacShootsController < ApplicationController
  # GET /mac_shoots
  # GET /mac_shoots.json
  def index
    @mac_shoots = MacShoot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mac_shoots }
    end
  end

  # GET /mac_shoots/1
  # GET /mac_shoots/1.json
  def show
    @mac_shoot = MacShoot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mac_shoot }
    end
  end

  # GET /mac_shoots/new
  # GET /mac_shoots/new.json
  def new
    @mac_shoot = MacShoot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mac_shoot }
    end
  end

  # GET /mac_shoots/1/edit
  def edit
    @mac_shoot = MacShoot.find(params[:id])
  end

  # POST /mac_shoots
  # POST /mac_shoots.json
  def create
    @mac_shoot = MacShoot.new(params[:mac_shoot])

    respond_to do |format|
      if @mac_shoot.save
        format.html { redirect_to @mac_shoot, notice: 'Mac shoot was successfully created.' }
        format.json { render json: @mac_shoot, status: :created, location: @mac_shoot }
      else
        format.html { render action: "new" }
        format.json { render json: @mac_shoot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mac_shoots/1
  # PUT /mac_shoots/1.json
  def update
    @mac_shoot = MacShoot.find(params[:id])

    respond_to do |format|
      if @mac_shoot.update_attributes(params[:mac_shoot])
        format.html { redirect_to @mac_shoot, notice: 'Mac shoot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mac_shoot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mac_shoots/1
  # DELETE /mac_shoots/1.json
  def destroy
    @mac_shoot = MacShoot.find(params[:id])
    @mac_shoot.destroy

    respond_to do |format|
      format.html { redirect_to mac_shoots_url }
      format.json { head :no_content }
    end
  end
end
