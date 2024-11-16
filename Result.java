package com.resultmanagement.model;

public class Result {
    private String rollNo;
    private String enggPhysics;
    private String advancedWebProgramming;
    private String operatingSystem;
    private String advancedJava;
    private String springBoot;
    private String angular;
    private String dataVisualization;

    
    public Result() {}

    public Result(String rollNo, String enggPhysics, String advancedWebProgramming, String operatingSystem,
                  String advancedJava, String springBoot, String angular, String dataVisualization) {
        this.rollNo = rollNo;
        this.enggPhysics = enggPhysics;
        this.advancedWebProgramming = advancedWebProgramming;
        this.operatingSystem = operatingSystem;
        this.advancedJava = advancedJava;
        this.springBoot = springBoot;
        this.angular = angular;
        this.dataVisualization = dataVisualization;
    }

  
    public String getRollNo() {
        return rollNo;
    }

    public void setRollNo(String rollNo) {
        this.rollNo = rollNo;
    }

    public String getEnggPhysics() {
        return enggPhysics;
    }

    public void setEnggPhysics(String enggPhysics) {
        this.enggPhysics = enggPhysics;
    }

    public String getAdvancedWebProgramming() {
        return advancedWebProgramming;
    }

    public void setAdvancedWebProgramming(String advancedWebProgramming) {
        this.advancedWebProgramming = advancedWebProgramming;
    }

    public String getOperatingSystem() {
        return operatingSystem;
    }

    public void setOperatingSystem(String operatingSystem) {
        this.operatingSystem = operatingSystem;
    }

    public String getAdvancedJava() {
        return advancedJava;
    }

    public void setAdvancedJava(String advancedJava) {
        this.advancedJava = advancedJava;
    }

    public String getSpringBoot() {
        return springBoot;
    }

    public void setSpringBoot(String springBoot) {
        this.springBoot = springBoot;
    }

    public String getAngular() {
        return angular;
    }

    public void setAngular(String angular) {
        this.angular = angular;
    }

    public String getDataVisualization() {
        return dataVisualization;
    }

    public void setDataVisualization(String dataVisualization) {
        this.dataVisualization = dataVisualization;
    }
}
