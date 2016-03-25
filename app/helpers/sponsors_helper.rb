module SponsorsHelper
  def sponsor_logo_link(sponsor)
    return link_to image_tag(sponsor.logo_link.url, :width=>"100%"), sponsor.sponsor_url, :target=>"_blank"
  end
  def sponsor_name_link(sponsor)
    return link_to(sponsor.name, sponsor.sponsor_url, :target=>"_blank")
  end
end
