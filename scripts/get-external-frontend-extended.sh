echo "Getting frontend service address"
frontend=$(kubectl get service frontend-external --no-headers | awk '{print $4}')

s2="<pending>"
echo frontend address is: ${frontend}

if [[ ${frontend} !=  ${s2} ]]; then
  printf 'frontend adress is OK'
else
  sleep 30
  frontend=$(kubectl get service frontend-external --no-headers | awk '{print $4}')
fi

echo frontend address after sleep is: ${frontend}