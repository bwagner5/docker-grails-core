# docker-grails-core

Container to build grails-core most recent snapshot from source and run the Grails framework.

This container makes it simple to build the latest snapshot from the main grails-core repository. You can then use the container to wrap the grails CLI and gradle tasks so that you do not have to install a binary on your own computer. The container can then be easily updated when a new snapshot comes out (snapshots are built from new commits in grails-core, so snapshots are usually available multiple times a day). 
