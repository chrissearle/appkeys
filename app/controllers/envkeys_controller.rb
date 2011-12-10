class EnvkeysController < ApplicationController
  before_filter :get_host
  before_filter :get_envkey, :only => [:destroy, :edit, :update]

  def new
    @envkey = Envkey.new
    @envkey.host = @host
  end

  def create
    @envkey = Envkey.new(params[:envkey])
    @envkey.host = @host

    if !@envkey.save
      render :action => :new
    else
      flash[:notice] = t('flash.envkey.save.ok')
      redirect_to host_path(@host)
    end
  end

  def destroy
    flash[:notice] = t('flash.deleted')

    @envkey.destroy

    redirect_to host_path(@host)
  end

  def edit
  end

  def update
    if @envkey.update_attributes(params[:envkey])
      flash[:notice] = t('flash.envkey.save.ok')
      redirect_to host_path(@host)
    else
      render :action => :edit
    end
  end

  private

  def get_host
    @host = Host.find(params[:host_id])
  end

  def get_envkey
    @envkey = Envkey.find(params[:id])
  end
end
