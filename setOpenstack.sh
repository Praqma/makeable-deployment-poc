echo "Please enter your OpenStack username: "
read -sr OS_USERNAME_INPUT

echo "Please enter your OpenStack Password: "
read -sr OS_PASSWORD_INPUT

export OS_AUTH_URL=https://identity.api.zetta.io/v3
export OS_REGION_NAME=no-osl1
export OS_PROJECT_ID=bceffc437a324a64ac708205dcad8208
export OS_PROJECT_NAME=Standard
export OS_PROJECT_DOMAIN_ID=807427196c02496ea86bc65a110472e6
export OS_USER_DOMAIN_ID=807427196c02496ea86bc65a110472e6
export OS_IDENTITY_API_VERSION=3
export OS_USERNAME=$OS_USERNAME_INPUT
export OS_PASSWORD=$OS_PASSWORD_INPUT
export OS_TENANT_NAME=standard
export OS_DOMAIN_NAME=praqma


docker-machine --debug create \
        --driver openstack \
        --openstack-net-id be63ef5c-0656-42e5-9f80-8754ff9fcb23 \
        --openstack-flavor-id 7 \
        --openstack-image-id e12ff7e3-9638-4b27-b050-616880d832af  \
        --openstack-floatingip-pool Public  \
        --openstack-ssh-user ubuntu  \
        --openstack-sec-groups default,DockerAPI  \
        productDemo  

echo " - Setting up docker client to point at new instance..."
eval "$(docker-machine env productdemo)"
echo " - IP of OpenStack instance productdemo is : $(docker-machine ip productdemo)"
