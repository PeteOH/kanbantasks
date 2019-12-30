@echo off
echo ==========================================================
if not exist kanban.html (
      echo == The install script is running in the wrong folder
      echo == run this from the folder containing the kanban.html file
      pause
      goto :FINI
)
echo ==
echo == configuring outlook to use the following location:
echo == %cd%\kanban.html
echo ==
set offver=0
for /l %%x in (12, 1, 19) do (
      reg export HKCU\Software\Microsoft\Office\%%x.0\Outlook\Today %%x /y > nul 2> nul
	  if exist %%x (
		echo == Determined Office version %%x is installed.
		set offver=%%x
		del /q %%x
		goto :scoot
	 )
)
:scoot
	  echo ==
if %offver%==0 (
      echo == The install script could not detect your Office version. 
	  echo == Please install manually.
      pause
      goto :FINI
)
if not %offver%==0 (
	  set offver=
      reg add HKCU\Software\Microsoft\Office\%offver%.0\Outlook\Today /v Stamp /t REG_DWORD /d 1 /f  > nul 2> nul
      reg add HKCU\Software\Microsoft\Office\%offver%.0\Outlook\Today /v UserDefinedUrl /t REG_SZ /d %cd%\kanban.html /f  > nul 2> nul
	  echo == The install script has completed successfully. Enjoy
      goto :FINI
)

:FINI
echo ==========================================================
