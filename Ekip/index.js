// Horloge en temps réel
function mettreAJourHorloge() {
    const maintenant = new Date();
    const heures = String(maintenant.getHours()).padStart(2, '0');
    const minutes = String(maintenant.getMinutes()).padStart(2, '0');
    const secondes = String(maintenant.getSeconds()).padStart(2, '0');
    document.getElementById('horloge').textContent = `${heures}:${minutes}:${secondes}`;
}
setInterval(mettreAJourHorloge, 1000);
mettreAJourHorloge();

// Compteur de clics
let nombreClics = 0;
function incrementerCompteur() {
    nombreClics++;
    document.getElementById('compteur').textContent = nombreClics;
}

// Barre de progression
let progression = 0;
function augmenterProgression() {
    progression = Math.min(progression + 10, 100);
    document.getElementById('progressFill').style.width = `${progression}%`;
}

// Changement de couleur
function changerCouleurPersonnalisee() {
    const couleur = document.getElementById('colorPicker').value;
    document.body.style.backgroundColor = couleur;
}

function changerCouleurAleatoire() {
    const r = Math.floor(Math.random() * 256);
    const g = Math.floor(Math.random() * 256);
    const b = Math.floor(Math.random() * 256);
    const couleurAleatoire = `rgb(${r}, ${g}, ${b})`;
    document.body.style.backgroundColor = couleurAleatoire;
}