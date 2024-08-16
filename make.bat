@ECHO OFF

pushd %~dp0

SET BUILDDIR=out

if "%1" == "pdf" goto pdf
if "%1" == "complex-pdf" goto complex-pdf

:pdf
cd src/resume
pdflatex -output-directory=%BUILDDIR% revathy-simple-resume.tex --interaction=nonstopmode
if NOT EXIST %BUILDDIR%/revathy-simple-resume.pdf (
Echo "no pdf generated!"
exit /b 1)
Echo "pdf generated!"
goto end

:complex-pdf
cd src/resume
pdflatex -output-directory=%BUILDDIR% revathy-venugopal.tex --interaction=nonstopmode
if NOT EXIST %BUILDDIR%/revathy-venugopal.pdf (
Echo "no pdf generated!"
exit /b 1)
Echo "pdf generated!"
goto end


:end
popd