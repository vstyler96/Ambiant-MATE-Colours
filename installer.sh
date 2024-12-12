#!/bin/zsh

MODE=$1;
if [[ $MODE = "all" ]];
then
  NAMES=("Aqua" "Blue" "Brown" "Orange" "Pink" "Purple" "Red" "Teal" "Yellow");
  COLORS=("#2DACD4" "#5489CF" "#965024" "#E95420" "#E231A3" "#7E5BC5" "#CE3A3A" "#1CB39F" "#DFCA25");
  VARIANT=${2:-"Ambiant-MATE-Dark"}; # Ambiant-MATE-Dark

  for i in {1..9};
  do
    python ./generate-ambiant-mate-colour.py --name="${NAME[$i]}" --theme="$VARIANT" --hex="${COLORS[$i]}" --src-dir="./Ambiant-MATE" --tweaks="gtk3-classic,black-selected-text,mono-osd-icons"
  done
  return;
fi

NAME=${1:-"Aqua"};
COLOR=${2:-"#2DACD4"};
VARIANT=${3:-"Ambiant-MATE-Dark"}
python ./generate-ambiant-mate-colour.py --name="$NAME" --theme="$VARIANT" --hex="$COLOR" --src-dir="./Ambiant-MATE" --tweaks="gtk3-classic,black-selected-text,mono-osd-icons"