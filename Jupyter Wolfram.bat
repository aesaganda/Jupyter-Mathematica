title A.E.Saganda Wolfram Otomasyonu
echo Jupyter Lab Yukleniyor...
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco install -y python3
python --version
pip install jupyterlab
choco install -y git
::wolframscript
git clone https://github.com/WolframResearch/WolframLanguageForJupyter.git
cd WolframLanguageForJupyter/
.\configure-jupyter.wls add
jupyter kernelspec list
jupyter lab