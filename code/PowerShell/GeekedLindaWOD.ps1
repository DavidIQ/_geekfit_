$lindaWOD = @(
    @{exercise = "Barbell Deadlift"; weight = 1.5}
    @{exercise = "Barbell Bench Press"; weight = 1.0}
    @{exercise = "Barbell Clean"; weight = 0.75}
);

Write-Host "Geeked Linda WOD`n" -ForegroundColor Green;
$bodyWeight = 0;
Do {
    $bodyWeight = [int](Read-Host -Prompt "Enter your body weight (lbs)");
} While ($bodyWeight -eq 0)

Write-Host "`nPrepare 3 bars as follows (round up/down as needed):" -ForegroundColor DarkYellow;
ForEach($set in $lindaWOD) { Write-Host "$($set.exercise): $($set.weight * $bodyWeight) lbs."; }

Read-Host -Prompt "`nPress any key when ready to start";

For($i=10; $i -gt 0; $i--) {
    ForEach($set in $lindaWOD) {
        Write-Host "$($set.exercise) x $i reps";
        Read-Host -Prompt "Press any key to continue...";
    }
}

Write-Host "Done!!!!111" -ForegroundColor DarkGreen;