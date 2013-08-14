class AuthsController < ApplicationController
  # GET /auths
  # GET /auths.json
  def index
    @auths = Auth.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @auths }
    end
  end

  # GET /auths/1
  # GET /auths/1.json
  def show
    @auth = Auth.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @auth }
    end
  end

  # GET /auths/new
  # GET /auths/new.json
  def new
    @auth = Auth.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @auth }
    end
  end

  # GET /auths/1/edit
  def edit
    @auth = Auth.find(params[:id])
  end

  # POST /auths
  # POST /auths.json
  def create
    @auth = Auth.new(params[:auth])

    respond_to do |format|
      if @auth.save
        format.html { redirect_to @auth, notice: 'Auth was successfully created.' }
        format.json { render json: @auth, status: :created, location: @auth }
      else
        format.html { render action: "new" }
        format.json { render json: @auth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /auths/1
  # PUT /auths/1.json
  def update
    @auth = Auth.find(params[:id])

    respond_to do |format|
      if @auth.update_attributes(params[:auth])
        format.html { redirect_to @auth, notice: 'Auth was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @auth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auths/1
  # DELETE /auths/1.json
  def destroy
    @auth = Auth.find(params[:id])
    @auth.destroy

    respond_to do |format|
      format.html { redirect_to auths_url }
      format.json { head :no_content }
    end
  end
end
