mkdir bapp
copy bapp.rb bapp/bapp.rb
echo @echo off > bapp/bapp.bat
echo set lp=%%~dp0\bapp.rb >> bapp/bapp.bat
type bapp.bat >> bapp/bapp.bat