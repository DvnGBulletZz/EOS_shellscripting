 #!/usr/bin/env bash


mkdir Afbeeldingen

find bestanden -name "*.png" -exec mv {} Afbeeldingen/ \;
find bestanden -name "*.jpg" -exec mv {} Afbeeldingen/ \;
