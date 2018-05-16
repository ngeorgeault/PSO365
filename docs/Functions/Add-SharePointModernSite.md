---
external help file: PSO365-help.xml
Module Name: PSO365
online version: https://github.com/rdtechie/PSO365
schema: 2.0.0
---

# Add-SharePointModernSite

## SYNOPSIS

This function will create a new modern SharePoint site.

## SYNTAX

```PowerShell
Add-SharePointModernSite [[-TenantUrl] <Object>] [[-Alias] <Object>] [[-Description] <Object>]
 [[-Location] <Object>] [[-Type] <Object>] [<CommonParameters>]
```

## DESCRIPTION

This function will create a new modern SharePoint site.
It's type will be a TeamSite.
It will check first the presence of a teamsite in the form of \<tenanturl\>/sites/Alias.
The title is constructed of Alias-Description-Location, ex: GL01-TestSite-Amsterdam.

## EXAMPLES

### EXAMPLE 1

```PowerShell
Add-SharePointModernSite -TenantUrl https://test.sharepointonline.com -Alias 'GL01' -Description 'TestSite' -Location 'Amsterdam'
```

## PARAMETERS

### -TenantUrl

The url to the Sharepoint online tenant, like: https://test.sharepointonline.com

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Alias

The alias of the site, like GL01.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description

The description of the site, like: TestProject

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Location

THe location of the team that will use the site.
Example: Amsterdam

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type

The type of site to create.
Defaults to TeamSite.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: TeamSite
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

Author: Richard Diphoorn

## RELATED LINKS

[https://github.com/rdtechie/PSO365](https://github.com/rdtechie/PSO365)
