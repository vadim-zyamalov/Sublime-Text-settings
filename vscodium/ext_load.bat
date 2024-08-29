copy .\settings.json "%APPDATA%\VSCodium\User\"
for /f %%l in (vscodium.txt) do (
	codium --install-extension %%l --force
)
