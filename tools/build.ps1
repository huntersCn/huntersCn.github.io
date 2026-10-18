$ErrorActionPreference = "Stop"
$siteRoot = Split-Path -Parent $PSScriptRoot
Set-Location $siteRoot

if (-not (Get-Command ruby -ErrorAction SilentlyContinue)) {
  Write-Host "Ruby was not found. See README.md for setup instructions." -ForegroundColor Yellow
  exit 1
}

$env:BUNDLE_PATH = Join-Path $siteRoot "vendor\bundle"
$env:JEKYLL_ENV = "production"

if (-not (Get-Command bundle -ErrorAction SilentlyContinue)) {
  Write-Host "Bundler was not found. Run 'gem install bundler' first." -ForegroundColor Yellow
  exit 1
}

if (-not (Test-Path (Join-Path $env:BUNDLE_PATH "ruby"))) {
  bundle config set --local path vendor/bundle
  bundle config set --local without test
  bundle install
}

bundle exec jekyll build
Write-Host "Built to $siteRoot\_site" -ForegroundColor Green
