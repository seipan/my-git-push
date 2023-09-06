# 現在のブランチを取得する
branch =$(git branch --contains | grep -v detached | sed -e 's/^\* //g')

echo $branch

# pull
git pull origin $branch

#全部ステージングする
git add .
#コミットする
git commit -m \"$1\"

#プッシュする
git push origin $branch