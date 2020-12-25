@echo off

ECHO Auto PDF Stamping Application
for /r %%i in (*.pdf) do (
  echo   Processing "%%i"
  signpdf\signpdf.exe "%%i" "stamps\stamp.png" --coords 1x200x700x250x118
)

ECHO Done

timeout 3 >nul