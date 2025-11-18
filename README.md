Connect-HavertyPnP PowerShell Module

The Connect-HavertyPnP function provides a standardized way for Havertys team members to authenticate to SharePoint Online using certificate-based authentication via PnP.PowerShell.
This module wraps the Connect-PnPOnline command with Havertys-specific defaults and simplifies connection logic for scripts used across the IMAG solution.

Features

Certificate-based authentication using a registered Azure AD App.

Default tenant and app settings preconfigured.

Optional -Silent switch for script-friendly output.

Exported as a module function for easy reuse across repositories.

Usage
Import the Module
Import-Module .\Connect-HavertyPnP.psm1

Connect to SharePoint
Connect-HavertyPnP -SiteUrl "https://haverty.sharepoint.com/sites/hub"

Silent Mode
Connect-HavertyPnP -SiteUrl "https://haverty.sharepoint.com/sites/hub" -Silent
