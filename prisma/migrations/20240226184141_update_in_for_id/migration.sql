/*
  Warnings:

  - The primary key for the `Vote` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `in` on the `Vote` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Vote" DROP CONSTRAINT "Vote_pkey",
DROP COLUMN "in",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "Vote_pkey" PRIMARY KEY ("id");