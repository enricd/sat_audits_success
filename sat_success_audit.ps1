param(
    $Path
)

if (-not $Path) {
    $log = cmd.exe /c "docker logs storagenode 2>&1"
} else {
    $log = Get-Content $Path
}

Write-Host "========== AUDIT ============="  -ForegroundColor Cyan

$auditsSuccess = ($log | Select-String GET_AUDIT | Select-String downloaded).Count

$auditSat1 = ($log | Select-String GET_AUDIT | Select-String 121RTSDpyNZVcEU84Ticf2L1ntiuUimbWgfATz21tuvgk3vzoA6 | Select-String downloaded).Count

$auditSat2 = ($log | Select-String GET_AUDIT | Select-String 12EayRS2V1kEsWESU9QMRseFhdxYxKicsiFmxrsLZHeLUtdps3S | Select-String downloaded).Count

$auditSat3 = ($log | Select-String GET_AUDIT | Select-String 1wFTAgs9DP5RSnCqKV1eLf6N9wtk4EAtmN5DpSxcs8EjT69tGE | Select-String downloaded).Count

$auditSat4 = ($log | Select-String GET_AUDIT | Select-String 118UWpMCHzs6CvSgWd9BfFVjw5K9pZbJjkfZJexMtSkmKxvvAW | Select-String downloaded).Count

$auditSat5 = ($log | Select-String GET_AUDIT | Select-String 12rfG3sh9NCWiX3ivPjq2HtdLmbqCrvHVEzJubnzFzosMuawymB | Select-String downloaded).Count

$auditSat6 = ($log | Select-String GET_AUDIT | Select-String 12L9ZFwhzVpuEKMUNUqkaTLGzwY9G24tbiigLiXpmZWKwmcNDDs | Select-String downloaded).Count

Write-Host ("Successful:`t`t" + $auditsSuccess) -ForegroundColor Green
Write-Host ("Sat asia-east audits:`t" + $auditSat1)
Write-Host ("Sat us-central audits:`t" + $auditSat2)
Write-Host ("Sat saltlake audits:`t" + $auditSat3)
Write-Host ("Sat stefan-bent audits:`t" + $auditSat4)
Write-Host ("Sat eu-north audits:`t" + $auditSat5)
Write-Host ("Sat eu-west audits:`t" + $auditSat6)