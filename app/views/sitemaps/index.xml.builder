xml.instruct! :xml, version: '1.0'
xml.tag! 'sitemapindex', 'xmlns' => "http://www.sitemaps.org/schemas/sitemap/0.9" do

  xml.tag! 'url' do
    xml.tag! 'loc', root_url
  end

  xml.tag! 'url' do
    xml.tag! 'loc', contact_url
  end

  @equipments.each do |equipment|
    xml.tag! 'url' do
      xml.tag! 'loc', equipment_url(equipment)
      xml.lastmod equipment.updated_at.strftime("%F")
    end
  end
end
