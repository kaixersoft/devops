GIT Deployment for PHP
=======================

Git deployment shell script for PHP projects.
* Git Workflow
	* Push your changes directly to your Production server / Staging server
	* Eg: git push production master   or   git push staging staging:master

* Sourcecode Archive
	* Push your latest code on Bitbucket or Github for arhieving
	* Eg: git push github master

* Benefits 
	* Work locally and deploy via Git push to your server
	* Easy rollback job and can all be done locally

* Assumption
	* Users are all in one group that has R/W rights on both repo and webroot folder
	* Best to use LAMP/LEMP Vagrant setup local and sync your webroot to your host folder
	* Push to commit to your server only when tested locally in order to prevent repetitive commit messages.

* Suggested Git Flow 
 Release(Tag)		| Master(branch)	| Develop(branch)	| Feature(Branch)  
------------------- | ----------------- | ----------------- | -----------------
 Release(V1.0.0) 	| <<--- (master)	| <<---- (develop)	| ----> Feature Branch(F1.0)   
 Release(V1.0.0) 	| <<--- (master)	| <<---- (bubfix 1)	|


