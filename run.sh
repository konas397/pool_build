git clone ${1} /tmp_flyway/flyway
echo "--[runnig gitsdiff2fly]----------"
if [ "x$2" == "x" ]; then
  /opt/app/gitdiff2fly -flyway-repo-path=/tmp_flyway/flyway
else
  git config --global user.email "teamcity@mmbank.ru"
  git config --global user.name "teamcity"
  /opt/app/gitdiff2fly -flyway-repo-path=/tmp_flyway/flyway -next-version=$2
fi