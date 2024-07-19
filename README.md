# mock-servers

Vuln and Normal servers

## list

- normal
    - banner
        - ssh-banner.sh
            - generate random ssh banner and listen server
            - Usage: ./ssh-banner.sh [listen-port] [ssh-banner-txt]
            - banner lists at ssh-banner-list.txt
            - banner lists from some sources
                - <https://github.com/richlamdev/ssh-default-banners>
                - <https://gist.githubusercontent.com/p3t3r67x0/74d202fc260c4ad07706fb5ca3613bb3/raw/f3bd279d12798a5e6a4c54bd86b1149d58f033cf/ssh_banner.md>
                - some online servers
    - ghost-cms
        two version of setup method.
        - vagrant
            - install debian for ghost-cms os.
        - docker
            - docker-compose file of ghost cms.
            - run official docker ghost:5-alpine image and setup admin account.
        - ansible
            - requirements python3-pip, mysqlclient, ansible-galaxy, community.mysql ansible module.
            - run ansible to install and setup ghost cms.
            - you can setup with admin account only on this ansible version. not at docker version.
- vuln
    - sqli
    - ssti
    - xss
    - get-priviledge
