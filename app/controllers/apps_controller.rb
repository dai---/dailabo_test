class AppsController < ApplicationController
  require 'open-uri'
  require 'nokogiri'

  before_action :set_app, only: [:show, :edit, :update, :destroy]

  # GET /apps
  # GET /apps.json
  def index
    array = []
    @apps = App.page(params[:page]).per(20)
    @apps.each do |app|
      array.push({
        id: app.id,
        name: app.name,
        banner_url: banner_url(app.url)
        })
    end
    @apps = Kaminari.paginate_array(array).page(params[:page]).per(20)

    p 'xxxxxxxxxxxxxxxxxxxxxxxxx'
    p @apps
    p 'xxxxxxxxxxxxxxxxxxxxxxxxx'
  end

  # GET /apps/1
  # GET /apps/1.json
  def show
  end

  # GET /apps/new
  def new
    @app = App.new
  end

  # GET /apps/1/edit
  def edit
  end

  # POST /apps
  # POST /apps.json
  def create
    @app = App.new(app_params)

    respond_to do |format|
      if @app.save
        format.html { redirect_to apps_path, notice: 'App was successfully created.' }
        format.json { render :show, status: :created, location: @app }
      else
        format.html { render :new }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apps/1
  # PATCH/PUT /apps/1.json
  def update
    respond_to do |format|
      if @app.update(app_params)
        format.html { redirect_to apps_path, notice: 'App was successfully updated.' }
        format.json { render :show, status: :ok, location: @app }
      else
        format.html { render :edit }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apps/1
  # DELETE /apps/1.json
  def destroy
    @app.destroy
    respond_to do |format|
      format.html { redirect_to apps_url, notice: 'App was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app
      @app = App.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_params
      params.require(:app).permit(:name, :store_id, :banner_url, :url)
    end

    def banner_url(url)
      charset = nil
      html = open(url) do |f|
        charset = f.charset # 文字種別を取得
        f.read # htmlを読み込んで変数htmlに渡す
      end

      # htmlをパース(解析)してオブジェクトを生成
      doc = Nokogiri::HTML.parse(html, nil, charset)

      # doc.xpath('//img[@class="cover-image"]')
      # doc.xpath('//div[@class="cover-container"]')
      doc.xpath('//div[@class="cover-container"]').each do |node|
        @banner_url = node.css('img').attribute('src').value
      end
      @banner_url
    end
end
