sudo apt upgrade && sudo apt update -y

eletronics_folder_path=$(find ~/ -name Eletronics)

# If kicad command wasn't find, install kicad
if ! command -v "kicad" >/dev/null 2>&1; then
  echo -e "INSTALANDO\n\n\n"
  sudo add-apt-repository ppa:kicad/kicad-8.0-releases
  sudo apt update -y
  sudo apt install kicad -y
fi

# Iterate between all files inside the "$eletronics_folder_path"
for folder in "$eletronics_folder_path"/*; do
  
  # only use basename
  #
  # for example only store in variable the last part of path
  # before: /home/robo/Eletronics/PowerBoard
  # after : PowerBoard
  folder=$(basename $folder)

  # -d flag is for verify if is a directory
  #
  # The processes needs to be aplied only in folders (-d "$folder") different
  # of Libraries ("$folder" != "Libraries")
  if [ -d "$folder" ] && [ "$folder" != "Libraries" ]; then
    rm -rf "$eletronics_folder_path"/"$folder"/"$folder"/Libraries
    cd "$eletronics_folder_path"/"$folder"/"$folder"

    # Create a linked folder for Libraries
    ln -s "$eletronics_folder_path"/Libraries Libraries
  fi
done
