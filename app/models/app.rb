class App < ActiveRecord::Base
  require 'open-uri'
  require 'nokogiri'

  validates :name, presence: true
  validates :store_id, presence: true
  validates :url, presence: true

  after_validation :get_banner_url

  private
    def get_banner_url
      charset = nil
      html = open(self.url) do |f|
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
      self.banner_url = @banner_url
    end
end
