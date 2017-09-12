SimpleNavigation::Configuration.run do |navigation|  

  navigation.items do |primary|
    #primary.item :newyear, 'Новый год', newyear_path
    
    primary.item :main, 'Информационные стенды', stands_path, :highlights_on => /\/stand/ do |stand|
      stand.item :child, 'Стенды для детских садов', standchils_path, :highlights_on => /\/stand\/children/
      stand.item :child, 'Наклейки на шкафчики', standstickers_path, :highlights_on => /\/stand\/stickers/
      stand.item :child, 'Стенды для школ', standschools_path, :highlights_on => /\/stand\/school/
      stand.item :child, 'Дополнительное образование', standdous_path, :highlights_on => /\/stand\/dou/
      stand.item :child, 'Детские лагеря', standlagers_path, :highlights_on => /\/stand\/lager/
      stand.item :child, 'Тематические планшеты', standthematics_path, :highlights_on => /\/stand\/thematic/
      stand.item :child, 'Безопасность', standsafeties_path, :highlights_on => /\/stand\/safety/
      stand.item :child, 'Профессиональные учебные заведения', standprofs_path, :highlights_on => /\/stand\/prof/
      stand.item :child, 'Стенды для предприятий', standpreds_path, :highlights_on => /\/stand\/pred/
      stand.item :child, 'Дополнительно', standadditionals_path, :highlights_on => /\/stand\/additional/
    end

    primary.item :main, 'Дополнительные услуги', dopballoon_path, :highlights_on => /\/dopballoon/ do |dop|
      dop.item :child, 'Оформление шарами', dopballoon_path, :highlights_on => /\/dopballoon/
      dop.item :child, 'Оборудование для кабинетов ОУ', dopequipment_path, :highlights_on => /\/dopequipment/
      dop.item :child, 'Спортинвентарь', dopsport_path, :highlights_on => /\/dopsport/
      # dop.item :child, 'Световое оборудование', lights_path, :highlights_on => /\/lights/
    end
      
    primary.item :main, 'Выставочное оборудование', expos_path, :highlights_on => /\/expo/ do |expos|
      expos.item :child, 'Выставочное оборудование', expos_path, :highlights_on => /\/expo/
      expos.item :child, 'Широкоформатная печать', print_path, :highlights_on => /\/print/ #do |print|
        #print.item :printplacards, 'Плакаты', printplacards_path
        #print.item :printposters, 'Постеры', printposters_path
        #print.item :printwallpapers, 'Фотообои', printwallpapers_path
      #end
    end
    
    primary.item :main, 'Сувенирная продукция', souvenirs_path, :highlights_on => /\/souvenirs/ do |souvenirs|
      souvenirs.item :child, 'Сувенирная продукция', souvenirs_path, :highlights_on => /\/souvenirs/
      souvenirs.item :child, 'Часы', awards_path, :highlights_on => /\/awards/
    end
    
    primary.item :main, 'Полиграфия', polygraphies_path, :highlights_on => /\/polygraphy/

    # primary.item :main, 'Заказать бесплатный каталог', catalogs_path, :highlights_on => /\/catalogs/
    
  end 
end