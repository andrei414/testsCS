pipeline {
    agent any
    stages {
        stage('check branch'){
            steps{
                sh "git branch"
                sh "env"
            }
        }
        /*stage ('git clone main'){
            steps{
                sh "cd testsCS/"
            }
        }*/
        stage('check shellcheck') {
            when {
                anyOf {branch 'master'}
            }
            steps {
                sh """curl -D- -k -u andrei414:Test12345 -X POST -d @test.json -H "Content-Type: application/json" https://tsst123.atlassian.net/jira/rest/api/2/issue/ | grep -o -P '.{0,0}date.{0,0}' >| file.txt"""
                sh "ls -la"
                sh "cat file.txt"
                sh 'value=`cat file.txt`;echo $value;git checkout $value;rm test1;touch test1;git add .;git commit --allow-empty -m "jenkins update";git push https://andrei414:paroladetest1@github.com/andrei414/testsCS.git'
                sh "git branch -a"
                sh "git branch" 
            }
        }
        stage('create pull request'){
            steps{
                sh "git branch"
                sh "git pull remotes/origin/master"
            }
        }
    }
}
