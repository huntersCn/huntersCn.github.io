param(
  [int]$Port = 4000,
  [string]$HostName = "127.0.0.1"
)

$ErrorActionPreference = "Stop"
$siteRoot = Split-Path -Parent $PSScriptRoot
Set-Location $siteRoot

if (-not (Get-Command ruby -ErrorAction SilentlyContinue)) {
  Write-Host ""
  Write-Host "Ruby was not found." -ForegroundColor Yellow
  Write-Host "Install Ruby 3.4+ with MSYS2/Devkit first:"
  Write-Host "  https://rubyinstaller.org/downloads/"
  Write-Host ""
  exit 1
}

$env:BUNDLE_PATH = Join-Path $siteRoot "vendor\bundle"

if (-not (Get-Command bundle -ErrorAction SilentlyContinue)) {
  Write-Host "Bundler was not found. Run 'gem install bundler' first." -ForegroundColor Yellow
  exit 1
}

if (-not (Test-Path (Join-Path $env:BUNDLE_PATH "ruby"))) {
  Write-Host "Installing Jekyll dependencies..." -ForegroundColor Cyan
  bundle config set --local path vendor/bundle
  bundle config set --local without test
  bundle install
}

Write-Host ""
Write-Host "Serving http://${HostName}:$Port/ (Ctrl+C to stop)" -ForegroundColor Green
Write-Host ""
bundle exec jekyll serve --host $HostName --port $Port --livereload
