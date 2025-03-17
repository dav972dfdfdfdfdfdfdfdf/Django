// Animation simple au chargement
document.addEventListener('DOMContentLoaded', function() {
    const title = document.querySelector('h1');
    title.classList.add('animation');
    
    // Changement de couleur au clic
    title.addEventListener('click', function() {
        const colors = ['#2c3e50', '#e74c3c', '#3498db', '#9b59b6', '#2ecc71'];
        const randomColor = colors[Math.floor(Math.random() * colors.length)];
        this.style.color = randomColor;
    });
});