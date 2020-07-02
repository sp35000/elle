@ECHO ------------------------------
@ECHO Script: hcp_windows-docs.bat
@ECHO ------------------------------
SET ORIGEM="C:\WINDOWS"

SET DESTINO="C:\mirror\cloud\ownCloud\to_cloud"
DEL %DESTINO%\sig.old

SET DESTINO="X:\stage-2020"
COPY %ORIGEM%\sig.old %DESTINO%
REM SET DESTINO="E:\DOCUMENTOS"
REM COPY %ORIGEM%\box-20100711.img %DESTINO%

REM SET DESTINO="E:\"
REM COPY %ORIGEM%\dino-20101002.img %DESTINO%
REM COPY %ORIGEM%\cargo*.img %DESTINO%

PAUSE
SET DESTINO="C:\mirror\cloud\ownCloud\to_cloud"
COPY %ORIGEM%\sig.old %DESTINO% 

REM SET ORIGEM="E:\"
REM SET DESTINO="E:\CASE04\MIRROR"
REM COPY %ORIGEM%\box-20100711.img %DESTINO%
REM COPY %ORIGEM%\dino-20101002.img %DESTINO%
REM COPY %ORIGEM%\cargo*.img %DESTINO%
