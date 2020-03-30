node {
    stage('build'){
        echo "building"
    }
}
stage('Deploy approval'){
    input "Deploy to prod?"
}
stage('Deploy approval2'){
    input "Deploy to prod??"
}
node {
    stage('deploy to prod'){
        echo "deploying"
    }
}