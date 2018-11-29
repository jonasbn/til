# http://git-scm.com/book/en/Git-and-Other-Systems-Migrating-to-Git

git svn clone https://subversion.dkhm/svn/scripts/plq2lasernet --trunk=trunk --branches=branches --tags=releases --authors-file=dkhm-svn-users.txt  --no-metadata -s plq2lasernet

cp -Rf .git/refs/remotes/origin/tags/* .git/refs/tags/
rm -Rf .git/refs/remotes/origin/tags

cp -Rf .git/refs/remotes/origin/* .git/refs/heads/
rm -Rf .git/refs/remotes/origin

git remote add origin ssh://jonasbn@git.dkhm:29418/batch/plq2lasernet.git

git push -u origin master

git push --tags

git push origin <branch>
