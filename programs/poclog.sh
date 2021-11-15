#!/bin/sh
fluxoPrincipal() {
  dataExecucao="$(date +%Y%m%d%H%M%S)"
  echo $dataExecucao
  echo "Fluxo principal iniciando."
  echo "Processamento: ######"
  exit 9
  echo "Fluxo principal terminando."
}
logConsolidado="/home/yzmu/log/poclog.log"

relatorio() {
  echo "--- SUMARIO ---"
  echo "$sysout"|tee $logConsolidado
  echo "fluxoPrincipal: $codRetornoFluxoPrincipal"|tee -a $logConsolidado
}

sysout=$("fluxoPrincipal")
codRetornoFluxoPrincipal=$?
relatorio
exit $codRetornoFluxoPrincipal
