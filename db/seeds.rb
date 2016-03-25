# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

SocialMediaLink.create([{name: 'Facebook', icon: 'facebook', media_url: 'https://www.facebook.com/The-Zebracorns-FRC-Team-900-152834158133099/', order: 1},
  {name: 'Twitter', icon: 'twitter', media_url: 'https://www.facebook.com/The-Zebracorns-FRC-Team-900-152834158133099/', order: 2},
  {name: 'Photos', icon: 'camera', media_url: 'https://plus.google.com/+FIRSTZebracorn/photos', order: 3},
  {name: 'YouTube', icon: 'youtube-play', media_url: 'https://www.youtube.com/channel/UCd59no7grTqLIrGIagIk5Bw', order: 4},
  {name: 'Google+', icon: 'google-plus', media_url: 'https://plus.google.com/+FIRSTZebracorn/posts', order: 6},
  ])
  
SponsorLevel.create([{name: 'Institutional', order: 1}, {name: 'Gold', order: 2}, {name: 'Silver', order: 3}, {name: 'Bronze', order:4}, ])
