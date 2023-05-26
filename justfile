set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

watch:
  watchexec -nrp -w "src/generate_configuration.py" -w "src/dactyl_manuform.py" -- just generate

generate: _generate

[unix]
_generate:
  #!/usr/bin/env bash
  cd src
  python generate_configuration.py
  python dactyl_manuform.py

[windows]
_generate:
  #!powershell.exe
  cd src
  python generate_configuration.py
  python dactyl_manuform.py
