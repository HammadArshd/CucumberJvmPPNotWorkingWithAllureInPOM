To execute:

```
mvn clean verify
```

Purpose of this project is to show the behaviour of https://github.com/temyers/cucumber-jvm-parallel-plugin

When in surefire-plugin below lines are added: 

```
<argLine>
-javaagent:"${settings.localRepository}/org/aspectj/aspectjweaver/${aspectj.version}/aspectjweaver-${aspectj.version}.jar"
-Dcucumber.options="--plugin io.qameta.allure.cucumber3jvm.AllureCucumber3Jvm"
</argLine> 
```

cucumber-jvm-parallel-plugin stops producing, expected json files:

```
<cucumberOutputDir>
    ${project.build.directory}/cucumber-jvm-parallel-plugin/json
</cucumberOutputDir>

<plugins>
    <plugin>
        <name>json</name>
    </plugin>
</plugins>
```

comment the above argLine and it will start working again.
