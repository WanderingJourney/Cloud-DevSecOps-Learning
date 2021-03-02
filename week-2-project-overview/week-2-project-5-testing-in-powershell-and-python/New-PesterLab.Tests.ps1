BeforeAll {
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
}

Describe "New-PesterLab" {
    It "Returns expected output" {
        New-PesterLab | Should -Be "YOUR_EXPECTED_VALUE"
    }
}
