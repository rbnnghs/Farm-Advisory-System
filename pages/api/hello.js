// / Fetch all posts (in /pages/api/posts.ts)
import { PrismaClient } from "@prisma/client"
const prisma = new PrismaClient()

export default async function handle(req, res) {
  const levelItems = await prisma.levelItem.findMany()
  res.json(withChildren(levelItems))
}

const withChildren = array => {
  array.forEach(levelInfo => {
  const {parentId, id} = levelInfo
  
  delete levelInfo.nextLevelQues
  if(!levelInfo.answerText) delete levelInfo.answerText
  if(!levelInfo.children) levelInfo.children = []

  const normalised = levelInfo.choiceText.replace(/\(.+\)/g, '').trim().toLowerCase()
  const singleWord = normalised.split(' ').length === 1 || 2
  const emoji = singleWord && (Object.entries({
      "🍈": ["melon", "watermelon", "juicemelon"],
      "🌾": ["wheat", "grains"],
      "🥬": ["lettuce", "spinach"],
      "🧪": ["tube", "tubers"],
      "🍓": ["strawberry", "strawberries"],
      "🥕": ["vegetable", "veg", "vegetables"],
      "🍠": ["cassava", "yam"],
      "🥔": ["potato", "irish ", "Sweet Potato"],
      "🦒": ["animal", "animals"],
      "🍗": ["poultry"],
      "🐏": ["sheep"],
      "🐐": ["goat", "goats"],
      "🐂": ["cattle", "cow", "cows"],
      "🐖": ["pig", "pigs", "pork"],
      "🐕": ["dog", "dogs", "wild"],
      "🐇": ["rabbit", "rabbits", "hare"],
      "🛖": ["house", "housing"],
      "🐾": ["breed", "breeding"],
      "👩‍🍼🚰": ["feed", "water"],
      "💉": ["vaccination", "vaccinations"],
      "🦠": ["disease", "diseases"],
      "📈": ["marketing", "market"],
      "🍚": ["rice"],
      "🌽": ["maize", "corn"],
      "🔱": ["weeding"]
  }).find(([_, arrayOfKeys]) => arrayOfKeys.includes(normalised)) ?? [])[0]

  if(emoji) levelInfo.choiceText = emoji + ' ' + levelInfo.choiceText
  
  const parent = array.find(({id: parentsId}) => parentsId === parentId)
  
  if(!parent) return
  
  if(parent.children) parent.children.push(id)
  else parent.children = [id]
  })
  
  return array
  }
  