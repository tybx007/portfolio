# Run this after editing any source file to refresh the GitHub Pages folder.
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$docs = Join-Path $root 'docs'

New-Item -ItemType Directory -Force -Path $docs | Out-Null

Copy-Item (Join-Path $root 'immersive-portfolio.html') (Join-Path $docs 'index.html') -Force

$assets = @(
  'portfolio-cv.html',
  'resume.html',
  'resume.pdf',
  '856b3ffe-8140-4a77-9c78-3051c8b4e496.jpg',
  'AdmissionManagementSystem (3).pdf',
  'gargantua.pdf',
  'uniRMS20(1).pdf'
)

foreach ($asset in $assets) {
  Copy-Item (Join-Path $root $asset) (Join-Path $docs $asset) -Force
}

Write-Host 'docs/ is up to date.'
