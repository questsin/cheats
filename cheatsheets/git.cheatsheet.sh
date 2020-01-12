##master branch
git config --list
git config --global user.name ""
git config --global user.email ""
git config --global credential.helper cache
git config --global core.editor "code"
git config --global color.ui true
git help
git init .
git add .
git commit -m "init commit"
git log -n 1
git log --oneline
git status
git branch
git branch new_feature
git checkout new_feature
git commit -am " commit to branch"
git checkout -b second_feature
git remote
git remote add $origin $url
git remote -v
git push -u origin master
git clone $url

##othe workflow
git config --global user.name "<your name>"
git config --global user.email "<your email address>"
mkdir demoapp
cd demoapp
git clone https://github.com/Azure-Samples/app-service-web-dotnet-get-started.git
cd app-service-web-dotnet-get-started
git remote add production <git-clone-url>
git push production
git remote add staging <git-clone-url>
code .
git add .
git commit -m "New version of web app."
git push staging
git remote -v
git remote set-url <remote-name> <remote-url>