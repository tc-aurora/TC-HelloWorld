# TC HelloWorld 🚀

An interactive, animated "Hello World" application built with React and TypeScript. Features smooth animations, interactive tech stack badges, and responsive design.

## ✨ Features

- **Animated Text**: Each letter bounces into view with staggered timing
- **Interactive Tech Badges**: Hover effects on Node.js, React, and TypeScript badges
- **Smooth Animations**: CSS animations with floating emojis and gradient backgrounds
- **Responsive Design**: Optimized for both desktop and mobile devices
- **Modern Stack**: Built with React 19, TypeScript 5, and Vite

## 🛠 Tech Stack

- **Frontend**: React 19.1.1 + TypeScript 5.9.2
- **Build Tool**: Vite 7.1.5
- **Styling**: Pure CSS with custom animations
- **Package Manager**: npm

## 🚀 Getting Started

### Prerequisites

- Node.js (version 16 or higher)
- npm or yarn

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/tcjoe/TC_HelloWorld.git
   cd TC_HelloWorld
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Start the development server:
   ```bash
   npm run dev
   ```

4. Open your browser and navigate to `http://localhost:5173`

## 📜 Available Scripts

- `npm run dev` - Start the development server
- `npm run build` - Build the project for production
- `npm run preview` - Preview the production build locally

## 🎨 Project Structure

```
TC_HelloWorld/
├── src/
│   ├── App.tsx          # Main application component
│   ├── App.css          # Styles and animations
│   └── main.tsx         # Application entry point
├── public/              # Static assets
├── package.json         # Project dependencies
├── tsconfig.json        # TypeScript configuration
├── vite.config.ts       # Vite configuration
└── README.md           # This file
```

## 🎭 Animation Details

### Letter Animation
- Each letter in "Hello World!" animates in with a bounce effect
- Staggered timing (0.1s delay between letters) creates a wave effect
- Combines opacity, translation, and rotation for dynamic entry

### Tech Badge Interactions
- Hover effects with scale and lift animations
- Color-coded badges: React (blue), Node.js (green), TypeScript (blue)
- Smooth transitions for enhanced user experience

### Floating Emojis
- Rocket 🚀, Sparkles ✨, and Computer 💻 emojis
- Continuous float animation with staggered delays
- Adds playful movement to the interface

## 📱 Responsive Features

- Adapts text size for mobile devices
- Stacks tech badges vertically on smaller screens
- Maintains visual hierarchy across all device sizes

## 🎨 Customization

### Changing Colors
Edit the colors array in `src/App.tsx`:
```typescript
const colors = ['#61dafb', '#68a063', '#3178c6'] // React, Node, TypeScript colors
```

### Modifying Animation Timing
Adjust animation delays in the CSS or component:
```typescript
style={{ animationDelay: `${index * 0.1}s` }} // Letter timing
```

### Adding New Tech Badges
Update the techStack array in `src/App.tsx`:
```typescript
const techStack = ['Node.js', 'React', 'TypeScript', 'Your Tech']
```

## 🌟 Demo

The application features:
1. **Initial Load**: Container fades in from below
2. **Text Animation**: Letters bounce in sequentially
3. **Badge Animation**: Tech badges slide in from the left
4. **Emoji Float**: Continuous floating animation starts after text completes
5. **Interactive Hover**: Tech badges lift and scale on hover

## 📝 License

This project is licensed under the ISC License.

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📧 Contact

Created by [@tcjoe](https://github.com/tcjoe)

---

Built with ❤️ using React, TypeScript, and Vite