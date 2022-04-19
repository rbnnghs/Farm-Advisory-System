-- CreateTable
CREATE TABLE "LevelItem" (
    "id" SERIAL NOT NULL,
    "parentId" INTEGER,
    "choiceText" TEXT,
    "answerText" TEXT,
    "nextLevelQues" INTEGER,

    CONSTRAINT "LevelItem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Version" (
    "versionNum" INTEGER,
    "id" SERIAL NOT NULL,

    CONSTRAINT "Version_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "android_metadata" (
    "locale" TEXT DEFAULT E'en_US'
);
