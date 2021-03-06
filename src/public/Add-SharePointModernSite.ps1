
function Add-SharePointModernSite {
    <#
    .SYNOPSIS
    This function will create a new modern SharePoint site.
    .DESCRIPTION
    This function will create a new modern SharePoint site. It's type will be a TeamSite.
    It will check first the presence of a teamsite in the form of <tenanturl>/sites/Alias.
    The title is constructed of Alias-Description-Location, ex: GL01-TestSite-Amsterdam.
    .LINK
    https://github.com/rdtechie/PSO365
    .EXAMPLE
    Add-SharePointModernSite -TenantUrl https://test.sharepointonline.com -Alias 'GL01' -Description 'TestSite' -Location 'Amsterdam'
    .PARAMETER TenantUrl
    The url to the Sharepoint online tenant, like: https://test.sharepointonline.com
    .PARAMETER Alias
    The alias of the site, like GL01.
    .PARAMETER Description
    The description of the site, like: TestProject
    .PARAMETER Location
    THe location of the team that will use the site. Example: Amsterdam
    .PARAMETER Type
    The type of site to create. Defaults to TeamSite.
    .NOTES
    Author: Richard Diphoorn
    #>

    [CmdletBinding()]
    param(
        $TenantUrl,
        $Alias,
        $Description,
        $Location,
        $Type = 'TeamSite'
    )
    begin {
    }
    process {
        if (-not(Get-PnPTenantSite -Url ( -join ($TenantUrl, '/sites/', $Alias)) -ErrorAction SilentlyContinue)) {
            $Title = ( -join ( $Alias, '-', $Description, '-', $Location ) )
            Write-Verbose -Message "Creating the site $Alias." -Verbose
            New-PnPSite -Type $Type -Title $Title -Alias $Alias -Description $Description -IsPublic -Verbose
        }
        else {
            Write-Warning -Message "Site $Alias already exists, skipping."
        }
    }
    end {
    }
}
