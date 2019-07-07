job('Test site job’) {
    scm {
        git('https://github.com/Abdessalam98/samplephpwebsite', 'v2') { node ->
            node / gitConfigName('Abdessalam BENHARIRA')
            node / gitConfigEmail('belmehelabdessalam.benharira@ynov.com')
        }
    }
    triggers {
        scm('H/60 * * * *')
    }
    steps {
        shell('cat docker-compose.yml')
        shell('docker-compose up -d php')
        shell('docker-compose exec -T php pwd')
        shell('docker-compose exec -T php phpunit tests/sampleTest.php')
        shell("docker rm -f php &>/dev/null && echo 'Container removed'")
    }
}
