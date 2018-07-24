Role Name
=========

Install or Reinstall SumoLogic Windows Collector. 

Requirements
------------

Internet Access from the remote Windows host is required. 


Role Variables
--------------


Dependencies
------------



Example Playbook
----------------

    - hosts: servers
      roles:
         - role: decmaxn.sumo_collector_win
           sumo_install_pkg: 'C:\folder'
           sumo_download_url: 'https://collectors.sumologic.com/rest/download/win64'
           sumo_reinstall: true
           sumo_force_download: true
           sumo_collector_name: "your collector name"
           sumo_collector_description: "your collector description"
           sumo_category_name: "xxxx/xxxx/xxxx"
           sumo_source_name: "xxxxxx"
           sumo_source_folder: "C:\\logs\\*.log"

Put the following variables in valut. 

           sumo_accessid: 'xxxxxxxx'
           sumo_accesskey: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
License
-------

BSD

Author Information
------------------

victor.ma@gmail.com