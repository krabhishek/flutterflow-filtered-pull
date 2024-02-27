# .flutterflowignore
This is a quick and dirty solution for ensuring that local changes made during 
development does not get overwritten when using the Flutterflow CLI

# Usage

add a .flutterflowignore file in the root of your project and treat it just like gitignore
Any file or folder in .flutterflowignore will not be overwritten when you run flutterflow-clean-pull

requires rsync and flutterflow_cli to be installed on your machine and available in your path

If you use gitbash (like me), you can refer to install-rsync.sh to setup rsync on GitBash.
