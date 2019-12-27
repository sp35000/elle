@ECHO ------------------------------
@ECHO Script: hcp_windows-docs.bat
@ECHO ------------------------------
SET ORIGEM="C:\WINDOWS"

SET DESTINO="E:\ownCloud\to_cloud"
DEL %DESTINO%\sig.old

SET DESTINO="E:\D\T"
COPY %ORIGEM%\sig.old %DESTINO%
REM SET DESTINO="E:\DOCUMENTOS"
REM COPY %ORIGEM%\box-20100711.img %DESTINO%

SET DESTINO="E:\D"
COPY %ORIGEM%\dino-20101002.img %DESTINO%
REM COPY %ORIGEM%\cargo*.img %DESTINO%

SET DESTINO="E:\ownCloud\to_cloud"
COPY %ORIGEM%\sig.old %DESTINO% 

SET ORIGEM="E:\D"
SET DESTINO="E:\CASE04\MIRROR"
COPY %ORIGEM%\box-20100711.img %DESTINO%
COPY %ORIGEM%\dino-20101002.img %DESTINO%
COPY %ORIGEM%\cargo*.img %DESTINO%
