sudo apt upgrade && sudo apt update -y

sudo add-apt-repository ppa:kicad/kicad-8.0-releases
sudo apt update -y
sudo apt install kicad -y

cd ~/Eletronics/Comm_Board/communication_board
ln -s ~/Eletronics/Libraries Libraries