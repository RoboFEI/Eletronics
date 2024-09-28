sudo apt upgrade && sudo apt update -y

sudo add-apt-repository ppa:kicad/kicad-8.0-releases
sudo apt update -y
sudo apt install kicad -y

rm -rf ~/Eletronics/Comm_Board/communication_board/Libraries 
cd ~/Eletronics/Comm_Board/communication_board
ln -s ~/Eletronics/Libraries Libraries

rm -rf ~/Eletronics/Power_Board/Power_Board/Libraries 
cd ~/Eletronics/Power_Board/Power_Board/
ln -s ~/Eletronics/Libraries Libraries