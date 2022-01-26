mkdir bapp
copy bapp.rb bapp/bapp.rb
echo @echo off > bapp/bapp.bat
echo set lp=%cd%\bapp.rb >> bapp/bapp.bat
type bapp.bat >> bapp/bapp.bat