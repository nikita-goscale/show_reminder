# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

channle_1 = Channel.new(name: 'Star plus')
if channle_1.save
  tv_show1 = channle_1.tv_shows.new(show_name: 'Show 1')
  if tv_show1.save
    tv_show1.show_timings.create(timing: '2020/02/11 09:30 pm')
    tv_show1.show_timings.create(timing: '2020/02/11 11:30 pm')
  end
  tv_show2 = channle_1.tv_shows.new(show_name: 'Show 2')
  if tv_show2.save
    tv_show2.show_timings.create(timing: '2020/02/11 08:30 pm')
    tv_show2.show_timings.create(timing: '2020/02/11 12:00 pm')
  end
  tv_show3 = channle_1.tv_shows.new(show_name: 'Show 3')
  if tv_show3.save
    tv_show3.show_timings.create(timing: '2020/02/11 08:00 pm')
    tv_show3.show_timings.create(timing: '2020/02/11 11:00 pm')
  end
end
channle_2 = Channel.new(name: 'History')
if channle_2.save
  tv_show1 = channle_1.tv_shows.new(show_name: 'History Show 1')
  if tv_show1.save
    tv_show1.show_timings.create(timing: '2020/02/11 02:30 pm')
    tv_show1.show_timings.create(timing: '2020/02/11 11:30 pm')
  end
  tv_show2 = channle_1.tv_shows.new(show_name: 'History Show 2')
  if tv_show2.save
    tv_show2.show_timings.create(timing: '2020/02/11 04:30 pm')
    tv_show2.show_timings.create(timing: '2020/02/11 12:00 pm')
  end
  tv_show3 = channle_1.tv_shows.new(show_name: 'History Show 3')
  if tv_show3.save
    tv_show3.show_timings.create(timing: '2020/02/11 06:00 pm')
    tv_show3.show_timings.create(timing: '2020/02/11 11:00 pm')
  end
end
