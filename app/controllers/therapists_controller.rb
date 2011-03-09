class TherapistsController < ApplicationController
	layout 'standard'
  # GET /therapists
  # GET /therapists.xml
  def index
    @therapists = Therapist.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @therapists }
    end
  end

  # GET /therapists/1
  # GET /therapists/1.xml
  def show
    @therapist = Therapist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @therapist }
    end
  end

  # GET /therapists/new
  # GET /therapists/new.xml
  def new
    @therapist = Therapist.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @therapist }
    end
  end

  # GET /therapists/1/edit
  def edit
    @therapist = Therapist.find(params[:id])
  end

  # POST /therapists
  # POST /therapists.xml
  def create
    @therapist = Therapist.new(params[:therapist])

    respond_to do |format|
      if @therapist.save
        format.html { redirect_to(@therapist, :notice => 'Therapist was successfully created.') }
        format.xml  { render :xml => @therapist, :status => :created, :location => @therapist }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @therapist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /therapists/1
  # PUT /therapists/1.xml
  def update
    @therapist = Therapist.find(params[:id])

    respond_to do |format|
      if @therapist.update_attributes(params[:therapist])
        format.html { redirect_to(@therapist, :notice => 'Therapist was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @therapist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /therapists/1
  # DELETE /therapists/1.xml
  def destroy
    @therapist = Therapist.find(params[:id])
#check if there are any visits with this therapist before deleting
		if @therapist.visits.empty?
    	@therapist.destroy
		else
			flash[:notice] = "This therapist is associated with a visit. It cannot be destroyed."
		end

    respond_to do |format|
      format.html { redirect_to(therapists_url) }
      format.xml  { head :ok }
    end
  end
end
