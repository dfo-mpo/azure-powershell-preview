FROM mcr.microsoft.com/azure-powershell:latest

RUN pwsh -Command Set-PSRepository -Name PSGallery -InstallationPolicy Trusted && \
    pwsh -Command Install-Module -Name AzureADPreview -Repository PSGallery && \
    pwsh -Command Set-PSRepository -Name PSGallery -InstallationPolicy Untrusted

CMD [ "pwsh" ]
