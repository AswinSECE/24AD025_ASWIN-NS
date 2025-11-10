# AI-Based Personalized Diet Planner

A full-stack web application that provides personalized meal recommendations based on user's physical characteristics and fitness goals, powered by AI and nutrition APIs.

## Features

- **Personalized Nutrition Calculation**: Calculate BMI, TDEE, and macronutrient targets based on height, weight, age, gender, and fitness goal
- **Dynamic Meal Recommendations**: Fetch meals from Spoonacular API with detailed nutritional information
- **AI-Powered Chatbot**: Interactive nutrition assistant powered by OpenAI GPT
- **Real-time Nutrition Tracking**: Adjust portion sizes and see nutrition totals update instantly
- **Visual Progress Charts**: Track calories and macronutrient progress with interactive charts
- **Responsive Design**: Beautiful UI that works on desktop and mobile devices

## Tech Stack

### Frontend
- React.js
- Tailwind CSS
- Recharts (for data visualization)
- Lucide React (for icons)
- Axios (for API calls)

### Backend
- Node.js
- Express.js
- Axios (for external API calls)

### APIs Used
- **USDA FoodData Central API**: Detailed nutrient information for foods
- **Spoonacular API**: Recipes, meal suggestions, and nutritional data
- **OpenAI API**: AI-powered meal suggestions and nutrition advice

## Setup Instructions

### Prerequisites
- Node.js (v14 or higher)
- npm or yarn

### Installation

1. **Clone or download the project**
   ```bash
   cd ai-diet-planner
   ```

2. **Install dependencies**
   ```bash
   # Install root dependencies
   npm install
   
   # Install server dependencies
   cd server
   npm install
   
   # Install client dependencies
   cd ../client
   npm install
   ```

3. **Start the development servers**
   
   From the root directory:
   ```bash
   npm run dev
   ```
   
   Or start them separately:
   ```bash
   # Terminal 1 - Backend server
   cd server
   npm run dev
   
   # Terminal 2 - Frontend client
   cd client
   npm start
   ```

4. **Access the application**
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:5000

## API Endpoints

### Backend Endpoints

- `POST /api/calculate-nutrition` - Calculate BMI, TDEE, and macronutrient targets
- `GET /api/fetch-meals` - Fetch meal recommendations from Spoonacular
- `POST /api/ai-chat` - Send messages to OpenAI chatbot
- `GET /api/search-foods` - Search foods using USDA API

### Request/Response Examples

#### Calculate Nutrition
```javascript
POST /api/calculate-nutrition
{
  "height": 175,
  "weight": 70,
  "age": 25,
  "gender": "male",
  "goal": "bulking"
}

Response:
{
  "bmi": 22.9,
  "tdee": 2200,
  "macros": {
    "protein": 138,
    "carbs": 248,
    "fat": 73
  },
  "goal": "bulking"
}
```

#### AI Chat
```javascript
POST /api/ai-chat
{
  "message": "What should I eat for breakfast?",
  "userProfile": { ... }
}

Response:
{
  "response": "For breakfast, I recommend..."
}
```

## Project Structure

```
ai-diet-planner/
├── server/
│   ├── index.js          # Express server with API endpoints
│   ├── package.json      # Server dependencies
│   └── .env              # Environment variables
├── client/
│   ├── src/
│   │   ├── components/
│   │   │   ├── UserInputForm.js      # User profile input form
│   │   │   ├── DietDashboard.js      # Main dashboard with meals
│   │   │   ├── ChatbotPanel.js       # AI chatbot interface
│   │   │   └── NutritionChart.js     # Progress charts
│   │   ├── App.js                    # Main React component
│   │   ├── index.js                  # React entry point
│   │   └── index.css                 # Tailwind CSS imports
│   ├── public/
│   │   └── index.html               # HTML template
│   ├── package.json                 # Client dependencies
│   ├── tailwind.config.js           # Tailwind configuration
│   └── postcss.config.js            # PostCSS configuration
└── package.json                     # Root package.json with scripts
```

## Key Features Explained

### 1. Nutrition Calculation
- Uses Mifflin-St Jeor equation for TDEE calculation
- Adjusts macronutrient ratios based on fitness goals (bulking vs cutting)
- Provides real-time BMI calculation

### 2. Meal Recommendations
- Fetches recipes from Spoonacular API
- Displays nutritional information per serving
- Allows dynamic portion size adjustments

### 3. AI Chatbot
- Powered by OpenAI GPT-3.5-turbo
- Context-aware responses based on user profile
- Provides personalized nutrition advice

### 4. Real-time Updates
- Instant recalculation of nutrition totals when portions change
- Visual progress tracking with charts
- Responsive design for all screen sizes

## API Keys

The following API keys are included in the code (for prototype purposes):

- **USDA API**: `USDA-m3lOySB5LTmBRcTUzBRpnnHsZ4xlcOZUAuhhqN1l`
- **Spoonacular API**: `SPOONCULAR-89d82a2aa722474e917e936d33885d86`
- **OpenAI API**: `openAI-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`

## Future Enhancements

- Database integration for user profiles and meal history
- User authentication and session management
- Advanced meal planning features
- Integration with fitness tracking apps
- Social features and meal sharing
- Mobile app development

## License

MIT License - feel free to use this project for learning and development purposes.
