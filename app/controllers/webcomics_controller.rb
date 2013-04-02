class WebcomicsController < ApplicationController
  # GET /webcomics
  # GET /webcomics.json
  def index
    @webcomics = Webcomic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @webcomics }
    end
  end

  # GET /webcomics/1
  # GET /webcomics/1.json
  def show
    @webcomic = Webcomic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @webcomic }
    end
  end

  # GET /webcomics/new
  # GET /webcomics/new.json
  def new
    @webcomic = Webcomic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @webcomic }
    end
  end

  # GET /webcomics/1/edit
  def edit
    @webcomic = Webcomic.find(params[:id])
  end

  # POST /webcomics
  # POST /webcomics.json
  def create
    @webcomic = Webcomic.new(params[:webcomic])

    respond_to do |format|
      if @webcomic.save
        format.html { redirect_to @webcomic, notice: 'Webcomic was successfully created.' }
        format.json { render json: @webcomic, status: :created, location: @webcomic }
      else
        format.html { render action: "new" }
        format.json { render json: @webcomic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /webcomics/1
  # PUT /webcomics/1.json
  def update
    @webcomic = Webcomic.find(params[:id])

    respond_to do |format|
      if @webcomic.update_attributes(params[:webcomic])
        format.html { redirect_to @webcomic, notice: 'Webcomic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @webcomic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webcomics/1
  # DELETE /webcomics/1.json
  def destroy
    @webcomic = Webcomic.find(params[:id])
    @webcomic.destroy

    respond_to do |format|
      format.html { redirect_to webcomics_url }
      format.json { head :no_content }
    end
  end
end
