# Plugins

## Get plugins.txt list
- http://stackoverflow.com/questions/9815273/how-to-get-a-list-of-installed-jenkins-plugins-with-name-and-version-pair

- Go to `http://<jenkins-url>/script`
- Execute the following script:
```
Jenkins.instance.pluginManager.plugins.sort { it.getShortName() }.each{
  plugin -> 
    println ("${plugin.getShortName()}:${plugin.getVersion()}")
}
```
- Or the following for latest of all
```
Jenkins.instance.pluginManager.plugins.sort { it.getShortName() }.each{
  plugin -> 
    println ("${plugin.getShortName()}:latest")
}
```
- Then paste it into the plugins.txt
