class AuthorizationPeriodsController < ApplicationController
	layout 'standard'
  # GET /authorization_periods
  # GET /authorization_periods.xml
  def index
    @authorization_periods = AuthorizationPeriod.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @authorization_periods }
    end
  end

  # GET /authorization_periods/1
  # GET /authorization_periods/1.xml
  def show
    @authorization_period = AuthorizationPeriod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @authorization_period }
    end
  end

  # GET /authorization_periods/new
  # GET /authorization_periods/new.xml
  def new
    @authorization_period = AuthorizationPeriod.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @authorization_period }
    end
  end

  # GET /authorization_periods/1/edit
  def edit
    @authorization_period = AuthorizationPeriod.find(params[:id])
  end

  # POST /authorization_periods
  # POST /authorization_periods.xml
  def create
    @authorization_period = AuthorizationPeriod.new(params[:authorization_period])

    respond_to do |format|
      if @authorization_period.save
        format.html { redirect_to(@authorization_period, :notice => 'AuthorizationPeriod was successfully created.') }
        format.xml  { render :xml => @authorization_period, :status => :created, :location => @authorization_period }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @authorization_period.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /authorization_periods/1
  # PUT /authorization_periods/1.xml
  def update
    @authorization_period = AuthorizationPeriod.find(params[:id])

    respond_to do |format|
      if @authorization_period.update_attributes(params[:authorization_period])
        format.html { redirect_to(@authorization_period, :notice => 'AuthorizationPeriod was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @authorization_period.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization_periods/1
  # DELETE /authorization_periods/1.xml
  def destroy
    @authorization_period = AuthorizationPeriod.find(params[:id])
#check if there are any visits with this patient before deleting
		@visit = Visit.find_all_by_authorization_id(@authorization_period)
		if @visit.empty?
    	@authorization_period.destroy
		else
			flash[:notice] = "This Authorization Period is associated with a visit.It cannot be destroyed."
		end

    respond_to do |format|
      format.html { redirect_to(authorization_periods_url) }
      format.xml  { head :ok }
    end
  end
end
