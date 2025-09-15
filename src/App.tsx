import React, { useState, useEffect } from 'react'
import './App.css'

const App: React.FC = () => {
  const [isVisible, setIsVisible] = useState(false)
  const [hoverIndex, setHoverIndex] = useState(-1)
  
  const helloText = 'Hello World!'
  const techStack = ['Node.js', 'React', 'TypeScript']
  const colors = ['#61dafb', '#68a063', '#3178c6']
  
  useEffect(() => {
    setIsVisible(true)
  }, [])

  return (
    <div className="app">
      <div className={`hello-container ${isVisible ? 'visible' : ''}`}>
        <h1 className="hello-text">
          {helloText.split('').map((char, index) => (
            <span 
              key={index} 
              className="letter"
              style={{ animationDelay: `${index * 0.1}s` }}
            >
              {char === ' ' ? '\u00A0' : char}
            </span>
          ))}
        </h1>
        
        <div className="tech-stack">
          {techStack.map((tech, index) => (
            <div
              key={tech}
              className={`tech-badge ${hoverIndex === index ? 'hovered' : ''}`}
              style={{ 
                backgroundColor: colors[index],
                animationDelay: `${1.2 + index * 0.2}s`
              }}
              onMouseEnter={() => setHoverIndex(index)}
              onMouseLeave={() => setHoverIndex(-1)}
            >
              {tech}
            </div>
          ))}
        </div>
        
        <div className="emoji-animation">
          <span className="emoji">🚀</span>
          <span className="emoji">✨</span>
          <span className="emoji">💻</span>
        </div>
      </div>
    </div>
  )
}

export default App