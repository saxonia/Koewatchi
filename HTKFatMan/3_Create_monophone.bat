@echo off

SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION

FOR /F %%i in (config\monophn.list) do (
	del am\hmm_0\%%i
	FOR /F "delims=" %%j in (am\hmm_0\proto5s) do (
		SET TempLine=%%j
		echo !TempLine:proto5s=%%i!  >> am\hmm_0\%%i
	)
)
