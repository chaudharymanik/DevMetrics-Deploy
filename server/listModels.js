const { GoogleGenerativeAI } = require("@google/generative-ai");
require('dotenv').config();

const genAI = new GoogleGenerativeAI(process.env.GEMINI_API_KEY);

async function listModels() {
  try {
    const models = await genAI.listModels();
    console.log("Available Gemini models:");
    console.log(models);
  } catch (err) {
    console.error("Error listing Gemini models:", err);
  }
}

listModels(); 