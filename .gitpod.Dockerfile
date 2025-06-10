FROM gitpod/workspace-full

# Installer Java et dépendances nécessaires
RUN sudo apt update && sudo apt install -y openjdk-11-jdk ant xvfb x11vnc fluxbox xterm tigervnc-standalone-server

# Configurer le mot de passe VNC (optionnel)
RUN mkdir ~/.vnc && echo "password" | vncpasswd -f > ~/.vnc/passwd && chmod 600 ~/.vnc/passwd

# Démarrer automatiquement VNC
CMD ["vncserver", ":1", "-geometry", "1280x800", "-depth", "24", "-SecurityTypes", "None"]

