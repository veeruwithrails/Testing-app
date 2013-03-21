class AddsController < ApplicationController
  # GET /adds
  # GET /adds.json
  def index
    @adds = Add.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @adds }
    end
  end

  # GET /adds/1
  # GET /adds/1.json
  def show
    @add = Add.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @add }
    end
  end

  # GET /adds/new
  # GET /adds/new.json
  def new
    @add = Add.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @add }
    end
  end

  # GET /adds/1/edit
  def edit
    @add = Add.find(params[:id])
  end

  # POST /adds
  # POST /adds.json
  def create
    @add = Add.new(params[:add])

    respond_to do |format|
      if @add.save
        format.html { redirect_to @add, notice: 'Add was successfully created.' }
        format.json { render json: @add, status: :created, location: @add }
      else
        format.html { render action: "new" }
        format.json { render json: @add.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /adds/1
  # PUT /adds/1.json
  def update
    @add = Add.find(params[:id])

    respond_to do |format|
      if @add.update_attributes(params[:add])
        format.html { redirect_to @add, notice: 'Add was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @add.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adds/1
  # DELETE /adds/1.json
  def destroy
    @add = Add.find(params[:id])
    @add.destroy

    respond_to do |format|
      format.html { redirect_to adds_url }
      format.json { head :no_content }
    end
  end
end
