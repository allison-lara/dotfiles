function stl2png --argument stl
   set SIZE 256
   set THEME Metallic
   set base (basename $stl)
   set tmpfile (mktemp "$base.XXXXXXXX"); or exit 1
   echo import\(\"$stl\"\)\; >$tmpfile
   cat $tmpfile

   /Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD \
     --o $base.png \
     --imgsize=$SIZE,$SIZE \
     --colorscheme $THEME $tmpfile

   rm $tmpfile
end
