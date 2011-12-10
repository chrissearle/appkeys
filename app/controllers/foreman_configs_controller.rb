class ForemanConfigsController < ApplicationController
  before_filter :get_host
  before_filter :get_foreman_config, :only => [:destroy]

  def new
    @foreman_config = ForemanConfig.new
    @foreman_config.host = @host
  end

  def create
    @foreman_config = ForemanConfig.new(params[:foreman_config])
    @foreman_config.host = @host

    if !@foreman_config.save
      render :action => :new
    else
      flash[:notice] = t('flash.config.save.ok')
      redirect_to host_path(@host)
    end
  end

  def destroy
    flash[:notice] = t('flash.deleted')

    @foreman_config.destroy

    redirect_to host_path(@host)
  end

  private

  def get_host
    @host = Host.find(params[:host_id])
  end

  def get_foreman_config
    @foreman_config = ForemanConfig.find(params[:id])
  end
end
