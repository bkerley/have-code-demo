class SteinsController < ApplicationController
  # GET /steins
  # GET /steins.xml
  def index
    @steins = Stein.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @steins }
    end
  end

  # GET /steins/1
  # GET /steins/1.xml
  def show
    @stein = Stein.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stein }
    end
  end

  # GET /steins/new
  # GET /steins/new.xml
  def new
    @stein = Stein.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @stein }
    end
  end

  # GET /steins/1/edit
  def edit
    @stein = Stein.find(params[:id])
  end

  # POST /steins
  # POST /steins.xml
  def create
    @stein = Stein.new(params[:stein])

    respond_to do |format|
      if @stein.save
        flash[:notice] = 'Stein was successfully created.'
        format.html { redirect_to(@stein) }
        format.xml  { render :xml => @stein, :status => :created, :location => @stein }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @stein.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /steins/1
  # PUT /steins/1.xml
  def update
    @stein = Stein.find(params[:id])

    respond_to do |format|
      if @stein.update_attributes(params[:stein])
        flash[:notice] = 'Stein was successfully updated.'
        format.html { redirect_to(@stein) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @stein.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /steins/1
  # DELETE /steins/1.xml
  def destroy
    @stein = Stein.find(params[:id])
    @stein.destroy

    respond_to do |format|
      format.html { redirect_to(steins_url) }
      format.xml  { head :ok }
    end
  end
end
