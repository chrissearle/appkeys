class HostsController < ApplicationController
  before_filter :get_host, :only => [:show, :edit, :update]

  def index
    @hosts = Host.ordered
  end

  def new
    @host = Host.new
  end

  def create
    @host= Host.new(params[:host])

    if !@host.save
      render :action => :new
    else
      flash[:notice] = t('flash.host.save.ok')
      redirect_to hosts_path
    end
  end

  def show
  end

  def edit
  end

  def update
    if @host.update_attributes(params[:host])
      flash[:notice] = t('flash.host.save.ok')
      redirect_to hosts_path
    else
      render :action => :edit
    end
  end

  private

  def get_host
    @host = Host.find(params[:id])
  end

end
