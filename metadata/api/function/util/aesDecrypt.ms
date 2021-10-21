{
  "properties" : { },
  "id" : "ceb67bd9c2124e51a15d1ae8622aca87",
  "script" : null,
  "groupId" : "737420ab3df24cfb95951bf625c0e273",
  "name" : "aesDecrypt",
  "createTime" : null,
  "updateTime" : 1634817216867,
  "lock" : "0",
  "path" : "/aesDecrypt",
  "description" : null,
  "returnType" : null,
  "mappingPath" : "/util/aesDecrypt",
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

var raw = '1111111111111111'.getBytes("ASCII");
var skeySpec = new SecretKeySpec(raw, "AES");
var cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
var iv = new IvParameterSpec("0102030405060708".getBytes());
cipher.init(Cipher.DECRYPT_MODE, skeySpec, iv);
var base64Decoder = Base64.getDecoder()
var encrypted1 = base64Decoder.decode(str); //先用bAES64解密    
var original = cipher.doFinal(encrypted1);
var originalString = new String(original);
return originalString;