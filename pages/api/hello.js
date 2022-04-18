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
  const singleWord = normalised.split(' ').length === 1
  const emoji = singleWord && (Object.entries({
      "🍉": ["melon", "watermelon", "juicemelon"]
  }).find(([_, arrayOfKeys]) => arrayOfKeys.includes(normalised)) ?? [])[0]

  if(emoji) levelInfo.choiceText = emoji + levelInfo.choiceText
  
  const parent = array.find(({id: parentsId}) => parentsId === parentId)
  
  if(!parent) return
  
  if(parent.children) parent.children.push(id)
  else parent.children = [id]
  })
  
  return array
  }
  