import os
import json
from subprocess import call

plugin_config = json.load(open("plugins.json"))
plugin_dir = os.path.expanduser(plugin_config["plugin-dir"])
initialize = not os.path.exists(plugin_dir)
if initialize:
     os.makedirs(plugin_dir)

os.chdir(plugin_dir)

if initialize:
    for repo in plugin_config["plugins"]:
        call(f"git clone {repo}", shell=True)
else:
    for pdir in os.scandir(plugin_dir):
        if(pdir.is_dir()):
            os.chdir(pdir.path)
            call(f"git pull", shell=True)

 

