set hosts=(01 02)
set source=
set folder=

for %%i in %hosts% do copy %source% \\%%i\%folder%

pause
