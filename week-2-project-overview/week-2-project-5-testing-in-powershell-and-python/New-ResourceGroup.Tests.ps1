# To run the test:
# Invoke-Pester .\New-ResourceGroup.Test.ps1

<#
$location = 'eastus2'
$name = "cloudskillbootcamp"

Describe 'New-ResourceGroup' {

    It 'Name should be youtube92!!' {
        $name | Should -Be 'cloudskillsbootcamp'
    }

    It 'location should be eastus2!!' {
        $location | Should -Be 'eastus2'
    }

}
#>

BeforeAll {
    function Get-User {
        @{
            Name = "Jakub"
            Age = 31
        }
    }
}

Describe "describe" {
    It "user" {
        $user = Get-User

        $user | Should -Not -BeNullOrEmpty -ErrorAction Stop
        #$user.Name | Should -Be "Tomas"
        $user.Name | Should -Be "Jakub"
        #$user.Age | Should -Be 27
        $user.Age | Should -Be 31

    }
}
