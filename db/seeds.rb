domain = 'http://www.leo66.ru'

cat = Category.create name: 'Информационные стенды', permalink: 'stand'
child = Category.create parent_id: cat.id, name: 'Стенды для детских садов', permalink: 'children'
Standchil.order(id: :asc).each {|obj| Stand.create category: child, name: obj.name, artikul: obj.artikul, price: obj.price, pricefigure: obj.pricefigure, size: obj.size, format: obj.format, quantity: obj.quantity, additional: obj.additional, image_remote_url: domain+obj.image.url(:biggest) }
child = Category.create parent_id: cat.id, name: 'Наклейки на шкафчики', permalink: 'stickers'
Standsticker.order(id: :asc).each {|obj| Stand.create category: child, name: obj.name, artikul: obj.artikul, price: obj.price, pricefigure: obj.pricefigure, size: obj.size, format: obj.format, quantity: obj.quantity, additional: obj.additional, image_remote_url: domain+obj.image.url(:biggest) }
child = Category.create parent_id: cat.id, name: 'Стенды для школ', permalink: 'school'
Standschool.order(id: :asc).each {|obj| Stand.create category: child, name: obj.name, artikul: obj.artikul, price: obj.price, pricefigure: obj.pricefigure, size: obj.size, format: obj.format, quantity: obj.quantity, additional: obj.additional, image_remote_url: domain+obj.image.url(:biggest) }
child = Category.create parent_id: cat.id, name: 'Дополнительное образование', permalink: 'dou'
Standdou.order(id: :asc).each {|obj| Stand.create category: child, name: obj.name, artikul: obj.artikul, price: obj.price, pricefigure: obj.pricefigure, size: obj.size, format: obj.format, quantity: obj.quantity, additional: obj.additional, image_remote_url: domain+obj.image.url(:biggest) }
child = Category.create parent_id: cat.id, name: 'Детские лагеря', permalink: 'lager'
Standlager.order(id: :asc).each {|obj| Stand.create category: child, name: obj.name, artikul: obj.artikul, price: obj.price, pricefigure: obj.pricefigure, size: obj.size, format: obj.format, quantity: obj.quantity, additional: obj.additional, image_remote_url: domain+obj.image.url(:biggest) }
child = Category.create parent_id: cat.id, name: 'Тематические планшеты', permalink: 'thematic'
Standthematic.order(id: :asc).each {|obj| Stand.create category: child, name: obj.name, artikul: obj.artikul, price: obj.price, pricefigure: obj.pricefigure, size: obj.size, format: obj.format, quantity: obj.quantity, additional: obj.additional, image_remote_url: domain+obj.image.url(:biggest) }
child = Category.create parent_id: cat.id, name: 'Безопасность', permalink: 'safety'
Standsafety.order(id: :asc).each {|obj| Stand.create category: child, name: obj.name, artikul: obj.artikul, price: obj.price, pricefigure: obj.pricefigure, size: obj.size, format: obj.format, quantity: obj.quantity, additional: obj.additional, image_remote_url: domain+obj.image.url(:biggest) }
child = Category.create parent_id: cat.id, name: 'Профессиональные учебные заведения', permalink: 'prof'
Standprof.order(id: :asc).each {|obj| Stand.create category: child, name: obj.name, artikul: obj.artikul, price: obj.price, pricefigure: obj.pricefigure, size: obj.size, format: obj.format, quantity: obj.quantity, additional: obj.additional, image_remote_url: domain+obj.image.url(:biggest) }
child = Category.create parent_id: cat.id, name: 'Стенды для предприятий', permalink: 'pred'
Standpred.order(id: :asc).each {|obj| Stand.create category: child, name: obj.name, artikul: obj.artikul, price: obj.price, pricefigure: obj.pricefigure, size: obj.size, format: obj.format, quantity: obj.quantity, additional: obj.additional, image_remote_url: domain+obj.image.url(:biggest) }
child = Category.create parent_id: cat.id, name: 'Дополнительно', permalink: 'additional'
Standadditional.order(id: :asc).each {|obj| Stand.create category: child, name: obj.name, artikul: obj.artikul, price: obj.price, pricefigure: obj.pricefigure, size: obj.size, format: obj.format, quantity: obj.quantity, additional: obj.additional, image_remote_url: domain+obj.image.url(:biggest) }

cat = Category.create name: 'Дополнительные услуги', permalink: 'dop'
child = Category.create parent_id: cat.id, name: 'Оформление шарами', permalink: 'balloon'
child = Category.create parent_id: cat.id, name: 'Оборудование для кабинетов ОУ', permalink: 'equipment'
child = Category.create parent_id: cat.id, name: 'Спортинвентарь', permalink: 'sport'
child = Category.create parent_id: cat.id, name: 'Световое оборудование', permalink: 'lights'


cat = Category.create name: 'Выставочное оборудование', permalink: 'expo'
Expo.order(id: :asc).each {|obj| Stand.create category: cat, name: obj.name, artikul: obj.artikul, price: obj.price, pricefigure: obj.pricefigure, size: obj.size, format: obj.format, quantity: obj.quantity, additional: obj.additional, image_remote_url: domain+obj.image.url(:biggest) }
# child = Category.create parent_id: cat.id, name: 'Выставочное оборудование', permalink: 'expo'
child = Category.create parent_id: cat.id, name: 'Широкоформатная печать', permalink: 'print' #do |print|
Print.order(id: :asc).each {|obj| Stand.create category: child, name: obj.name, artikul: obj.artikul, price: obj.price, pricefigure: obj.pricefigure, size: obj.size, format: obj.format, quantity: obj.quantity, additional: obj.additional, image_remote_url: domain+obj.image.url(:biggest) }
# subchild = Category.create parent_id: child.id, name: 'Плакаты', printplacards_path
# subchild = Category.create parent_id: child.id, name: 'Постеры', printposters_path
# subchild = Category.create parent_id: child.id, name: 'Фотообои', printwallpapers_path

cat = Category.create name: 'Сувенирная продукция', permalink: 'souvenirs'
Souvenir.order(id: :asc).each {|obj| Stand.create category: cat, name: obj.name, artikul: obj.artikul, price: obj.price, pricefigure: obj.pricefigure, size: obj.size, format: obj.format, quantity: obj.quantity, additional: obj.additional, image_remote_url: domain+obj.image.url(:biggest) }
child = Category.create parent_id: cat.id, name: 'Часы', permalink: 'awards'
Award.order(id: :asc).each {|obj| Stand.create category: child, name: obj.name, artikul: obj.artikul, price: obj.price, pricefigure: obj.pricefigure, size: obj.size, format: obj.format, quantity: obj.quantity, additional: obj.additional, image_remote_url: domain+obj.image.url(:biggest) }

cat = Category.create name: 'Полиграфия', permalink: 'polygraphy'
Polygraphy.order(id: :asc).each {|obj| Stand.create category: cat, name: obj.name, artikul: obj.artikul, price: obj.price, pricefigure: obj.pricefigure, size: obj.size, format: obj.format, quantity: obj.quantity, additional: obj.additional, image_remote_url: domain+obj.image.url(:biggest) }  

Category.rebuild!