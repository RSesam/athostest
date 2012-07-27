class BenutzersController < ApplicationController
  # GET /benutzers
  # GET /benutzers.json
  def index
    @benutzers = Benutzer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @benutzers }
    end
  end

  # GET /benutzers/1
  # GET /benutzers/1.json
  def show
    @benutzer = Benutzer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @benutzer }
    end
  end

  # GET /benutzers/new
  # GET /benutzers/new.json
  def new
    @benutzer = Benutzer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @benutzer }
    end
  end

  # GET /benutzers/1/edit
  def edit
    @benutzer = Benutzer.find(params[:id])
  end

  # POST /benutzers
  # POST /benutzers.json
  def create
    @benutzer = Benutzer.new(params[:benutzer])

    respond_to do |format|
      if @benutzer.save
        format.html { redirect_to @benutzer, notice: 'Benutzer was successfully created.' }
        format.json { render json: @benutzer, status: :created, location: @benutzer }
      else
        format.html { render action: "new" }
        format.json { render json: @benutzer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /benutzers/1
  # PUT /benutzers/1.json
  def update
    @benutzer = Benutzer.find(params[:id])

    respond_to do |format|
      if @benutzer.update_attributes(params[:benutzer])
        format.html { redirect_to @benutzer, notice: 'Benutzer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @benutzer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benutzers/1
  # DELETE /benutzers/1.json
  def destroy
    @benutzer = Benutzer.find(params[:id])
    @benutzer.destroy

    respond_to do |format|
      format.html { redirect_to benutzers_url }
      format.json { head :no_content }
    end
  end
end
