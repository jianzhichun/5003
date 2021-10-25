{
  "properties" : { },
  "id" : "88e010983ba743328a867668de8157d2",
  "script" : null,
  "groupId" : "f8a48b72b2fe4a8fb5e40655c718ed1b",
  "name" : "registry",
  "createTime" : null,
  "updateTime" : 1634984165965,
  "lock" : "0",
  "method" : "POST",
  "path" : "/registry",
  "parameters" : [ {
    "name" : "email",
    "value" : "",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : "pattern",
    "error" : "Invalid email",
    "expression" : "^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$",
    "children" : null
  }, {
    "name" : "password",
    "value" : "",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : "pass",
    "error" : "Password cannot be null",
    "expression" : null,
    "children" : null
  } ],
  "option" : "[]",
  "requestBody" : "{}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": 2,\n    \"timestamp\": 1634817877200,\n    \"executeTime\": 160\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "Object",
    "type" : null,
    "defaultValue" : null,
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "code",
      "value" : "1",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "message",
      "value" : "success",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "data",
      "value" : "2",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1634817877200",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "160",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
  },
  "optionMap" : { }
}
================================
assert 1 != db.selectInt("""
    select exists (
        select * from user where email=#{email}
    )
"""): 400, 'Email already registered.'

import '@/util/aesEncrypt' as aesEncrypt;

return db.table('user')
    .primary('id')
    .save({ 
        email: email,
        name: email,
        password: aesEncrypt(password)
    })