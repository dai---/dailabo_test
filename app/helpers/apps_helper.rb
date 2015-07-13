module AppsHelper

  require 'open-uri'
  require 'nokogiri'

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
