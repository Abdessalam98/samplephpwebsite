node {
    def commit_id
    
    stage('Start') {
        checkout scm
        echo "${env.BUILD_NUMBER}"
        sh 'git --version'
        sh "git rev-parse --short HEAD > .git/commit-id"                        
        commit_id = readFile('.git/commit-id').trim()
    }

    stage('Test') {   
        sh "docker build -t php-image-test-${env.BUILD_NUMBER} ./docker/php"
        sh "docker run --name php-test-${env.BUILD_NUMBER} -d -v app:/app php-image-test-${env.BUILD_NUMBER}"
        sh "docker cp ./app/. php-test-${env.BUILD_NUMBER}:/app/"
        sh "docker exec -it php-test-${env.BUILD_NUMBER} phpunit tests/sampleTest.php"
    }   

    stage('Build') {
        // sh "docker build -t php-image:${commit_id} ./docker/php"
        sh "docker build -t php-image:${env.BRANCH_NAME}-build-${env.BUILD_NUMBER} ./docker/php"
    }

    stage('Deploy'){
        echo 'Push to Repo'
    }
}
