
cats = [
  {
    name: "Hongcha",
    age: 2,
    enjoys: "Exploring backyards ^-^",
    image_path: "https://i.imgur.com/RJExRjB.jpg"
  },
  {
    name: "Captain Whiskers",
    age: 5,
    enjoys: "Licking myself when no one is looking",
    image_path: "https://i.imgur.com/qBRjUrX.jpg"
  },
  {
    name: "Mr.Tuxedo",
    age: 3,
    enjoys: "Settling down with another cat",
    image_path: "https://i.imgur.com/hm7f0OY.jpg"
  },
  {
    name: "Mr. Climber",
    age: 5,
    enjoys: "Climbing on everything ",
    image_path: "https://i.imgur.com/Y1FbSzL.jpg"
  },
  {
    name: "Bookwormeower",
    age: 10,
    enjoys: "Showing how smart I am",
    image_path: "https://i.imgur.com/gUAxYfP.jpg"
  },
  {
    "id": 25,
    name: "Cat Named Dog",
    age: 9,
    enjoys: "Being friends with dogs",
    image_path: "https://i.imgur.com/svoi9qp.jpg"
  },
  {
    name: "Nappy Potter",
    age: 4,
    enjoys: "Napping in any pots",
    image_path: "https://i.imgur.com/32vWyh1.jpg"
  },
  {
    name: " Indiana Jones",
    age: 3,
    enjoys: "Exploring nature",
    image_path: "https://i.imgur.com/yTpKtYk.jpg"
  },
  {
    name: "Panther",
    age: 8,
    enjoys: "Eating tuna yo",
    image_path: "https://i.imgur.com/1nuiJYb.jpg"
  },
  {
    name: "Yogi",
    age: 14,
    enjoys: "Being zen and yoga",
    image_path: "https://i.imgur.com/udmh4Rd.jpg"
  }
]

cats.each do |attributes|
  Cat.create attributes
end
