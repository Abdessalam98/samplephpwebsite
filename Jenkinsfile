node {
    def commit_id
    
    stage('Start') {
        checkout scm
        echo "${env.BRANCH_NAME}"
        echo "${env.BUILD_NUMBER}"
        sh 'git --version'
        sh "git rev-parse --short HEAD > .git/commit-id"                        
        commit_id = readFile('.git/commit-id').trim()
    }

    stage('Test') {
        sh 'cat docker-compose.yml'
        sh 'docker-compose up -d php'
        sh 'docker-compose up -d php php -v'
        sh 'docker-compose exec -T php phpunit tests/sampleTest.php'
    }   

    stage('Build') {
        // sh "docker build -t sample-php-image:${commit_id} ./docker/php"
        sh "docker build -t sample-php-image:${env.BRANCH_NAME}-build-${env.BUILD_NUMBER} ./docker/php"
    }

    stage('Deploy'){
        echo 'Push to Repo'
    }
}
