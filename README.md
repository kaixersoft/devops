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

* Suggested Git Flow <br />
| Release(Tag)		 | Master(branch)	 | Develop(branch)	 | Feature(Branch)  |<br />
|:-------------------|:------------------|:------------------|:-----------------|<br />

| Release(V1.0.0) <<---(tag) |  <<--- (master)	 | <<---- (merge dev) |  (branch)----> Feature (F1.0) | <br /> 
| Release(V1.0.1) <<---(tag) |  <<--- (master)	 | <<---- (merge dev) | Bug fixing #1 <br /> 
| Release(V1.1.1) <<---(tag) |  <<--- (master)	 | <<---- (merge dev) |  <<-- (merge Feature)(F1.0) | <br /> 
| Release(V1.1.2) <<---(tag) |  <<--- (master)	 | <<---- (merge dev) | Bug fixing #2 <br /> 
<br />
To add new feature, branch out current Develop branch
<br /><br />
| Release(V1.2.2) <<---(tag) |  <<--- (master)	 | <<---- (merge dev) |  (branch)----> Feature (F2.0) | <br /> 
| Release(V1.2.3) <<---(tag) |  <<--- (master)	 | <<---- (merge dev) | Bug fixing #3 <br /> 



* Git Flow Versioning <br />
V .  Release . Feature . Bugfix