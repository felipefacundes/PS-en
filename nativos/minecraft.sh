#!/bin/bash
# PlayOnGit - Inicie seus Jogos direto do menu iniciar, sem precisar de PlayOnLinux, Proton ou Lutris, e com um desempenho muito melhor e superior.
# Licença: GPLv3
# Mantenedor: Felipe Facundes
# Faça o seu pedido de tutorial e GamePlay no nosso:
# 既 Grupo 調 Gamer do 切 Telegram 切: https://t.me/winehq_linux
########### Este script irá usar o wine personalizado. Mas, você poderá usar um wine na versão e local de sua escolha
# Criar as pastas de estrutura para o binário isolado do wine - técnica para manipular diversos tipos de wine
cd ~
mkdir -p ~/.local/share/applications/
mkdir -p ~/.jogos/nativos/minecraft/
mkdir -p ~/.jogos/icons/
mkdir -p ~/.jogos/scripts/run/
mkdir -p ~/.jogos/setups/

cd ~/.jogos/scripts/run/
wget -nc https://raw.githubusercontent.com/felipefacundes/PS/master/runs/minecraft-run.sh
chmod +x minecraft-run.sh
cd ~/.jogos/icons/
wget -nc https://raw.githubusercontent.com/felipefacundes/PS/master/icons/minecraft.png
#cd ~/.jogos/scripts/
#wget -nc https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
#chmod +x winetricks
#cd ~/.jogos/wines/
#rm -rf wine-staging-4.8-1-x86_64
#wget -nc https://www.opencode.net/felipefacundes/wine-bins/raw/master/wine-staging-4.8-1-x86_64.tar.xz
#tar -xf wine-staging-4.8-1-x86_64.tar.xz



# Criando o atalho .desktop
cd ~/.local/share/applications/
echo "#!/usr/bin/env xdg-open" > minecraft.desktop
echo "[Desktop Entry]" >> minecraft.desktop
echo "Name=Minecraft Windows" >> minecraft.desktop
echo "Comment=O Famoso jogo de construção" >> minecraft.desktop
echo "Categories=Game;" >> minecraft.desktop
echo "Exec=/home/$USER/.jogos/scripts/run/minecraft-run.sh" >> minecraft.desktop
echo "Type=Application" >> minecraft.desktop
echo "StartupNotify=true" >> minecraft.desktop
echo "Icon=/home/$USER/.jogos/icons/minecraft.png" >> minecraft.desktop
echo "Terminal=false" >> minecraft.desktop

# Desinstalar
cd ~/.jogos/scripts/run/
touch remover-minecraft.sh
echo "rm -rf /home/$USER/.local/share/applications/minecraft.desktop" > remover-minecraft.sh
echo "rm -rf /home/$USER/.jogos/wineprefixes/minecraft/" >> remover-minecraft.sh
echo "rm -rf /home/$USER/.jogos/scripts/run/minecraft-run.sh" >> remover-minecraft.sh
echo "rm -rf /home/$USER/.local/share/applications/remover-minecraft.desktop" >> remover-minecraft.sh
echo "rm -rf /home/$USER/.jogos/scripts/run/remover-minecraft.sh" >> remover-minecraft.sh
chmod +x remover-minecraft.sh
cd ~/.local/share/applications/
touch remover-minecraft.desktop
echo "#!/usr/bin/env xdg-open" > remover-minecraft.desktop
echo "[Desktop Entry]" >> remover-minecraft.desktop
echo "Name=Remover Minecraft" >> remover-minecraft.desktop
echo "Comment=Remover minecraft" >> remover-minecraft.desktop
echo "Categories=Game;" >> remover-minecraft.desktop
echo "Exec=/home/$USER/.jogos/scripts/run/remover-minecraft.sh" >> remover-minecraft.desktop
echo "Type=Application" >> remover-minecraft.desktop
echo "StartupNotify=true" >> remover-minecraft.desktop
echo "Icon=/home/$USER/.jogos/icons/remover.png" >> remover-minecraft.desktop
echo "Terminal=false" >> remover-minecraft.desktop
cd ~/.jogos/icons/
wget -nc https://raw.githubusercontent.com/felipefacundes/PS/master/icons/remover.png > /dev/null 2>&1

export TERM=xterm
export ESYNC=0
export vblank_mode=0
# Para placas gráficas híbridas use o DRI_PRIME=1
#export DRI_PRIME=1

# Executar o instalador e depois o jogo
cd ~/.jogos/nativos/minecraft
wget -nc "https://tlaun.ch/download.php?&package=mcl/jar" -O TLauncher-MCL.jar
notify-send "Para rodar esse jogo você precisará do jre8-openjdk (OpenJDK 1.8) e java-openjfx"

#⛔⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⛔
#  _          _                     _ _       _                       _           _
# | |        (_)                   | (_)     | |                     | |         (_)              ▏▏
# | |     ___ _  __ _    __ _ ___  | |_ _ __ | |__   __ _ ___    __ _| |__   __ _ ___  _____      ▏▏
# | |    / _ \ |/ _` |  / _` / __| | | | '_ \| '_ \ / _` / __|  / _` | '_ \ / _` | \ \/ / _ \     ▏▏
# | |___|  __/ | (_| | | (_| \__ \ | | | | | | | | | (_| \__ \ | (_| | |_) | (_| | |>  < (_) |    ▏▏
# \_____/\___|_|\__,_|  \__,_|___/ |_|_|_| |_|_| |_|\__,_|___/  \__,_|_.__/ \__,_|_/_/\_\___/     ⧩
#⛔⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⧩⛔
# Logo abaixo é o CAMINHO do instalador do jogo e pode ser alterado por você, de acordo com às suas necessidades:
# Coloque o endereço da PASTA entre às "ASPAS" e mude o nome do executável do instalador.
# Respeitando as Letras MAÍUSCULAS e minúsculas. Exemplo: Setup.exe
#⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬

cd "/home/$USER/.jogos/nativos/minecraft/"
java -jar TLauncher-MCL.jar

#⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫⏫
### Só altere essas DUAS linhas ACIMA, como já explicado.
#⛔◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭◭⛔
#   _        _                _
#  | |   ___(_)__ _   __ _ __(_)_ __  __ _    ◭
#  | |__/ -_) / _` | / _` / _| | '  \/ _` |   ▏▏
#  |____\___|_\__,_| \__,_\__|_|_|_|_\__,_|   ▏▏
#       ____
#  _  _ ____ ____    _  _ ____ _  _ ____    _  _ ____ ____    ___  ____ _  _ ____ _ ____    _    _ _  _ _  _ ____ ____
#  |\ | |__| |  |    |\/| |___  \/  |__|    |\ | |__| [__     |  \ |___ |\/| |__| | [__     |    | |\ | |__| |__| [__
#  | \| |  | |__|    |  | |___ _/\_ |  |    | \| |  | ___]    |__/ |___ |  | |  | | ___]    |___ | | \| |  | |  | ___]
#⛔ Não mexa nas demais linhas, deixa do jeito que está.                                                              ⛔

# Irá abrir a localização e o script de inicialização do jogo:
#xdg-open ~/.jogos/wineprefixes/minecraft/drive_c/
#xdg-open ~/.jogos/scripts/run/minecraft-run.sh






























################################# Finalização
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Para rodar esse jogo você precisará do jre8-openjdk (OpenJDK 1.8) e java-openjfx"
echo "Instalação FINALIZADA com SUCESSO"
echo "Acesse o seu programa no: \"Menu iniciar > Jogos"\"
echo "Criação de Felipe Facundes"
echo "Acesse nosso grupo do Telegram:"
echo "https://t.me/winehq_linux"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
pkill -9 .exe
notify-send "Instalação FINALIZADA com SUCESSO."
sleep 10
notify-send "Acesse o seu programa no: Menu iniciar > Jogos"
sleep 10
notify-send "Se quiser, pode fechar o terminal."

#
#                    ,cldxOxoc:;,
#               ,;:okKNXKK0kO0Okxddol:;,
#        ,;codxkkOKXKko:'......,;clx0KXXOxol:,
#   :lodxxdololc:,'..................,cdk00kxkOkxoc,
#  ;XOxdl:,..  .......................... ..,;lx0XNx
#  lX0c      ..;dddddooooollll,............     .0XO'
#  oKK;    ....0NNXXKKK00OOOkx'.............     x0x,
#  lXX;   ....,WWNNNKdddoooooc.'..............   okk,
#  cXW:  .....xWWWWWl''''''''''''''............  dd0,
#  :OWo ......NMMMMWOkkkkxxxc''''''''.......... .kxK'
#  ,dKk .....lWWWWMMMWWWNNNX:,''''''''...........KOx'
#  ,lk0......ONNNWWddddddddo,,,,,''''''.........lNOc'
#  'cdk;....;KXXXNO''',,,,,,,ddddoooolllccc:....0WO,'
#  ',ddd....o0KKKXl'',,,,,,,lWWNNNXXKKK00OOc...,0Xx'
#   'llo;...kO00K0,'',,,,,,,0MWWWN0OOOkkkxx'...oxK;'
#   ',xcl..,lloool''',,,,,,:WWMMMX''''''......cxko'
#    ':x:c......''''''',,,,xNWWWM0dddddool...:00O,'
#     'ld::.......'''''',,,KNNNWWWMMMWWWWx..;XXK;'
#      'dd::.......'''''''lKXXNN0kkOOOkkk;.;0KK;'
#       'ox::........'''''x0KKKX;'''......lK0k;'
#        'cx:c,........'.,OO00KO........'kN0o,'
#         ',dllc'........lkkOO0c.......:KNk:'
#           ':lldc.......oodddd'.....,d0Oc,'
#            ',:ldxl'..............'lxxo;,'
#              ',;lx0x;..........,cldo:'
#               '',cxXXd,....,cdxkd:'
#                   ',視嗢荒華者喝啕喙調﬏磌,'
#                     ',;lxdl:,'
#
# Created by:
#  ___    _             ___                     _
# | __|__| (_)_ __  ___| __|_ _ __ _  _ _ _  __| |___ ___
# | _/ -_) | | '_ \/ -_) _/ _` / _| || | ' \/ _` / -_|_-<
# |_|\___|_|_| .__/\___|_|\__,_\__|\_,_|_||_\__,_\___/__/
#            |_|
#
# ┏┓
# ┃┃╱╲ nesta
# ┃╱╱╲╲ casa
# ╱╱╭╮╲╲ todos
# ▔▏┗┛▕▔ usam
# ╱▔▔▔▔▔▔▔▔▔▔╲
# LINUX
# ╱╱┏┳┓╭╮┏┳┓ ╲╲
# ▔▏┗┻┛┃┃┗┻┛▕▔
# -------------------------
