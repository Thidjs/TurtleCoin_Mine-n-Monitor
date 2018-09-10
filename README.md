Original developers / repositories / software used

zbobyuan: Original JJ-s-XMR-STAK-HashRate-Monitor-and-Restart-Tool
https://github.com/zbobyuan/JJ-s-XMR-STAK-HashRate-Monitor-and-Restart-Tool
XMR: 42JFvWHSSGCFUBSwTz522zXrkSuhZ6WnwCFv1mFaokDS7LqfT2MyHW32QbmH3CL94xjXUW8UsQMAj8NFDxaVR8Y1TNqY54W

mutl3y: Forked JJ-s-XMR-STAK-HashRate-Monitor-and-Restart-Tool reworked and added Grafana capabilities
https://github.com/mutl3y/JJ-s-XMR-STAK-HashRate-Monitor-and-Restart-Tool
XMR: 49QA139gTEVMDV9LrTbx3qGKKEoYJucCtT4t5oUHHWfPBQbKc4MdktXfKSeT1ggoYVQhVsZcPAMphRS8vu8oxTf769NDTMu

psychocrypt: xmr-stak
https://github.com/fireice-uk/xmr-stak
XMR: m45tcqnJMgd3VqeTznNotiNj4G9PQoK67TGRiHyj6EYSZ31NUbAfs9XdiU5squmZb717iHJLxZv3KfEw8jCYGL5wa19yrVCn

fireice-uk: xmr-stak
https://github.com/fireice-uk/xmr-stakc
XMR: 4581HhZkQHgZrZjKeCfCJxZff9E3xCgHGF25zABZz7oR71TnbbgiS7sK9jveE6Dx6uMs2LwszDuvQJgRZQotdpHt1fTdDhk

nickbabcock: OhmGraphite
https://github.com/nickbabcock/OhmGraphite

LibreHardwareMonitor/LibreHardwareMonitor
https://github.com/LibreHardwareMonitor/LibreHardwareMonitor

Docker Toolbox
https://docs.docker.com/toolbox/toolbox_install_windows/


Changed; 
config edit:

hashmonitor.ini (with config script.bat)
.\xmr-stak\config.txt (with config script.bat)
.\xmr-stak\pools.txt (with config script.bat)
.\OhmGraphite-0.5.0/OhmGraphite.exe.config (with config script.bat)
.\grafana\build-docker.cmd (renamed from monitor.cmd)
.\grafana\grafana\grafana.ini (with config script.bat)
.\grafana\influxdb\influxdb.conf (added databases for ohmgraphite and telegraph)
.\grafana\Dockerfile (new grafana and influxdb versions)
