# Použití Arch Linuxu jako základního obrazu
FROM archlinux:latest

# Aktualizace systému a instalace potřebných balíčků
RUN pacman -Syu --noconfirm \
    && pacman -S --noconfirm python python-pip git nodejs npm \
    && npm install -g pnpm

# Vytvoření a aktivace virtuálního prostředí
RUN python -m venv /venv
ENV PATH="/venv/bin:$PATH"

# Instalace Aider pomocí pip
RUN pip install aider-chat

# Kopírování přizpůsobeného .bashrc do home adresáře root uživatele
COPY .bashrc /root/.bashrc

# Nastavit bash jako výchozí shell
CMD ["bash"]
