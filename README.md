# DevOps Docker PHP Nginx MariaDB

## 📦 Requirements

This project should be working as expected with the following minimal version of:

| Requirement | Version |
| ----------- | :-----: |
| PHP         |  >=7.1  |
| PHPUnit     |  >=6.5  |
| Nginx       | >=1.12  |
| MariaDB     | >=10.1  |

### Suggested requirements

#### For Mac

- [Kitematic](https://kitematic.com/)

## 🔧 Useful links

- [Docker Engine](https://docs.docker.com/installation/)
- [Docker Compose](https://docs.docker.com/compose/)

## 🧐 What's inside?

```
.
├── app
|    ├── content
|    ├── template
|    ├── tests
|    ├── config.php
|    ├── functions.php
|    └── index.php
├── docker
|    ├── nginx
|    ├── mariadb
|    └── php
├── .gitignore
├── docker-compose.yml
└── README.md
```



## 🚀 Quick start

1. **Clone the git repository**

```bash
# cloning git repository into `samplephpwebsite` folder
$ git clone https://github.com/Abdessalam98/samplephpwebsite samplephpwebsite
```

2. **Run containers**

Check that you have `./docker-compose.yml` or override it by creating a new one then run `docker-compose up -d`

```bash
# Now you can run all containers with detached mode based on docker-compose.yml
$ docker-compose up -d
```

3. **Start using the project**

> web server is running at http://localhost:8080

Open browser and see the rendered pages

## ✅ Testing app with PHPUnit

PHPUnit is already set. You can directly run tests inside the PHP container. All tests are in `./app/tests`

For this example we made a test class `SampleTest` that runs tests for site functions

```bash
$ docker-compose exec -T php phpunit tests/sampleTest.php
```

## Author

[Abdessalam BENHARIRA](https://abdessalam-benharira.me)
