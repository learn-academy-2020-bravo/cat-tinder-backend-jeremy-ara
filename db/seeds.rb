
cats = [
  {
    name: 'Hongcha',
    age: 2,
    enjoys: 'Exploring backyards ^-^',
    image_path: 'src/images/hongcha.jpg' 
  },
  {
    name: 'Captain Whiskers',
    age: 5,
    enjoys: 'Licking myself when no one is looking',
    image_path: 'src/images/hongcha2.PNG' 
  },
  {
    name: 'Gangstah',
    age: 8,
    enjoys: 'Stealing tuna cans from other cats',
    image_path: 'src/images/fat-cat.jpg' 
  },
  {
    name: 'Mr.Tuxedo',
    age: 3,
    enjoys: 'Settling down with another cat',
    image_path: 'src/images/hongcha.jpg' 
  }

]

cats.each do |attributes|
  Cat.create attributes
end