
cats = [
  {
    name: 'Hongcha',
    age: 2,
    enjoys: 'Exploring backyards ^-^',
    image_path: 'https://i.imgur.com/RJExRjB.jpg' 
  },
  {
    name: 'Captain Whiskers',
    age: 5,
    enjoys: 'Licking myself when no one is looking',
    image_path: 'https://i.imgur.com/qBRjUrX.jpg' 
  },
  {
    name: 'Gangstah',
    age: 8,
    enjoys: 'Stealing tuna cans from other cats',
    image_path: 'https://i.imgur.com/1nuiJYb.jpg' 
  },
  {
    name: 'Mr.Tuxedo',
    age: 3,
    enjoys: 'Settling down with another cat',
    image_path: 'https://i.imgur.com/hm7f0OY.jpg' 
  }

]

cats.each do |attributes|
  Cat.create attributes
end