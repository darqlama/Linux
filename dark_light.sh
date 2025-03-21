#! /bin/bash

H=$(date +%H)
if (( 7 <= 10#$H && 10#$H < 20 )); then
    export QT_DEBUG_PLUGINS=1 export LIBGL_ALWAYS_INDIRECT=; export DISPLAY=:0; lookandfeeltool -a org.kde.breezetwilight.desktop
else (( 20 <= 10#$H && 10#$H < 7 ));
    export QT_DEBUG_PLUGINS=1 export LIBGL_ALWAYS_INDIRECT=; export DISPLAY=:0; lookandfeeltool -a org.kde.breezedark.desktop
fi
