{
  "properties" : { },
  "id" : "449c2cab392a4caf8d0b32aa771d8c54",
  "script" : null,
  "groupId" : "737420ab3df24cfb95951bf625c0e273",
  "name" : "aesEncrypt",
  "createTime" : null,
  "updateTime" : 1634817212377,
  "lock" : "0",
  "path" : "/aesEncrypt",
  "description" : null,
  "returnType" : null,
  "mappingPath" : "/util/aesEncrypt",
  "parameters" : [ {
    "name" : "str",
    "value" : null,
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : "java.lang.String",
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ]
}
================================
import 'javax.crypto.Cipher';
import 'javax.crypto.spec.IvParameterSpec';
import 'javax.crypto.spec.SecretKeySpec';

import 'java.util.Base64';

var raw = "1111111111111111".getBytes();
var skeySpec = new SecretKeySpec(raw, "AES");
var cipher = Cipher.getInstance("AES/CBC/PKCS5Padding"); //"算法/模式/补码方式"    
var iv = new IvParameterSpec("0102030405060708".getBytes()); //使用CBC模式，需要一个向量iv，可增加加密算法的强度    
cipher.init(Cipher.ENCRYPT_MODE, skeySpec, iv);
var encrypted = cipher.doFinal(str.getBytes());

return Base64.getEncoder().encodeToString(encrypted);