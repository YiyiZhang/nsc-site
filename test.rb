require 'googlecalendar'
require 'byebug'
byebug
g = GData.new
g.login('REPLACE_WITH_YOUR_MAIL@gmail.com', 'REPLACE_WITH_YOUR_PASSWORD')
event = { :title     => 'title',
          :content   => 'content',
          :author    => 'pub.cog',
          :email     => 'pub.cog@gmail.com',
          :where     => 'Toulouse,France',
          :startTime => '2007-06-06T15:00:00.000Z',
          :endTime   => '2007-06-06T17:00:00.000Z'}
g.new_event(event)
p "kek"
