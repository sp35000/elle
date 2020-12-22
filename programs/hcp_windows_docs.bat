@ECHO ------------------------------
@ECHO Script: hcp_windows-docs.bat
@ECHO ------------------------------
SET ORIGEM="C:\WINDOWS"

SET DESTINO="C:\mirror\cloud\ownCloud\to_cloud"
DEL %DESTINO%\sig.old

SET DESTINO="C:\mirror\cloud\myCloud"
DEL %DESTINO%\sig.old

SET DESTINO="X:\stage-2020"
COPY %ORIGEM%\sig.old %DESTINO%

PAUSE
SET DESTINO="C:\mirror\cloud\ownCloud\to_cloud"
COPY %ORIGEM%\sig.old %DESTINO% 

SET DESTINO="C:\mirror\cloud\myCloud"
COPY %ORIGEM%\sig.old %DESTINO% 

