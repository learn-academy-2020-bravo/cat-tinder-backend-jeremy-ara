
cats = [
  {
    name: 'Hongcha',
    age: 2,
    enjoys: 'Exploring backyards ^-^'
  },
  {
    name: 'Captain Whiskers',
    age: 5,
    enjoys: 'Licking myself when no one is looking'
  },
  {
    name: 'Gangstah',
    age: 8,
    enjoys: 'Stealing tuna cans from other cats'
  },
  {
    name: 'Mr.Tuxedo',
    age: 3,
    enjoys: 'Settling down with another cat'
  }

]

cats.each do |attributes|
  Cat.create attributes
end