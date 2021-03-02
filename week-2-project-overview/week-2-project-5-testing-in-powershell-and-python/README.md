
Prerequisite:

[pester](https://pester.dev/docs/introduction/installation)

Install-Module -Name Pester -Force -SkipPublisherCheck

```powershell
Invoke-Pester ./New-ResourceGroup_test.ps1

Invoke-Pester: The term 'Invoke-Pester' is not recognized as a name of a cmdlet, function, script file, or executable program.
Check the spelling of the name, or if a path was included, verify that the path is correct and try again.

Install-Module -Name Pester -Force -SkipPublisherCheck
Import-Module -Name Pester -PassThru

Invoke-Pester ./New-ResourceGroup_test.ps1

Starting discovery in 1 files.
Discovery finished in 159ms.                                                                                                                                                                
[-] New-ResourceGroup.Name should be youtube92 47ms (28ms|19ms)
 RuntimeException: Legacy Should syntax (without dashes) is not supported in Pester 5. Please refer to migration guide at: https://pester.dev/docs/migrations/v3-to-v4
 RuntimeException: Legacy Should syntax (without dashes) is not supported in Pester 5. Please refer to migration guide at: https://pester.dev/docs/migrations/v3-to-v4
 ParameterBindingException: Cannot retrieve the dynamic parameters for the cmdlet. Legacy Should syntax (without dashes) is not supported in Pester 5. Please refer to migration guide at: https://pester.dev/docs/migrations/v3-to-v4
 at <ScriptBlock>, /home/scott/Documents/GitHub/Cloud-DevSecOps-Learning/week-2-project-overview/week-2-project-5-testing-in-powershell-and-python/New-ResourceGroup_test.ps1:9
[-] New-ResourceGroup.location should be eastus2 8ms (6ms|2ms)
 RuntimeException: Legacy Should syntax (without dashes) is not supported in Pester 5. Please refer to migration guide at: https://pester.dev/docs/migrations/v3-to-v4
 RuntimeException: Legacy Should syntax (without dashes) is not supported in Pester 5. Please refer to migration guide at: https://pester.dev/docs/migrations/v3-to-v4
 ParameterBindingException: Cannot retrieve the dynamic parameters for the cmdlet. Legacy Should syntax (without dashes) is not supported in Pester 5. Please refer to migration guide at: https://pester.dev/docs/migrations/v3-to-v4
 at <ScriptBlock>, /home/scott/Documents/GitHub/Cloud-DevSecOps-Learning/week-2-project-overview/week-2-project-5-testing-in-powershell-and-python/New-ResourceGroup_test.ps1:13
Tests completed in 575ms
Tests Passed: 0, Failed: 2, Skipped: 0 NotRun: 0

```

Old syntax#

```pester
    It 'Check something' {
        10 | Should Be 10
    }
```

New syntax#

```pester
    It 'Check something' {
        10 | Should -Be 10
    }
```

```powershell
Invoke-Pester ./New-ResourceGroup_test.ps1

Starting discovery in 1 files.
Discovery finished in 9ms.
[-] New-ResourceGroup.Name should be youtube92 67ms (64ms|3ms)
 Expected 'youtube92', but got $null.
 at $name | Should -Be 'youtube92', /home/scott/Documents/GitHub/Cloud-DevSecOps-Learning/week-2-project-overview/week-2-project-5-testing-in-powershell-and-python/New-ResourceGroup_test.ps1:9
 at <ScriptBlock>, /home/scott/Documents/GitHub/Cloud-DevSecOps-Learning/week-2-project-overview/week-2-project-5-testing-in-powershell-and-python/New-ResourceGroup_test.ps1:9
[-] New-ResourceGroup.location should be eastus2 9ms (7ms|2ms)
 Expected 'eastus2', but got $null.
 at $location | Should -Be 'eastus2', /home/scott/Documents/GitHub/Cloud-DevSecOps-Learning/week-2-project-overview/week-2-project-5-testing-in-powershell-and-python/New-ResourceGroup_test.ps1:13
 at <ScriptBlock>, /home/scott/Documents/GitHub/Cloud-DevSecOps-Learning/week-2-project-overview/week-2-project-5-testing-in-powershell-and-python/New-ResourceGroup_test.ps1:13
Tests completed in 143ms
Tests Passed: 0, Failed: 2, Skipped: 0 NotRun: 0
```