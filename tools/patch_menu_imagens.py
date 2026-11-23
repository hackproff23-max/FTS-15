#!/usr/bin/env python3
# Faz as 5 imagens dos paineis aparecerem no menu principal (FTS15)
import struct,base64,sys,os
LIB=sys.argv[1] if len(sys.argv)>1 else os.path.expanduser('~/FTS-15/FTS15-RECURSOS/lib/armeabi-v7a/libFTS15.so')
BLOB=base64.b64decode("AECN5QAwj+JM7/zq8EEt6TDQTeIAQKDh9FCP4gVgoOMAENXlASDV5QQAoOESMv3rAABQ4zAAAAoAcKDhpBDX5QEAEeMsAAAaBwCg4SAQjeIkII3i7fj86wcAoOEoEI3iLCCN4l/y/OsAAKDjCACN5QwAjeUQAI3lFACN5RgAjeUcAI3lBBCV5QUQgeAIAI3iACCg4wAw4OMAII3lBCCN5evV/Ou0Ad3hAABQ4xIAAAoICp3tCQrd7Qoane0LGt3tACq37gIKMO6CCnDuAioy7kIaMe7CGnHuEBoQ7pAqEO4QOhHukAoR7gAAjeUAAODjBACN5QgAjeLiAf3rCFCF4gFgVuLF//8aw9r86zDQjeLwgb3oAAAAACgAAAAAAQAATgAAAAIAAABzAAAAAgEAAJcAAAADAQAAugAAAFBLRzovRGF0YS9GRS9VSS9mZV9wYWluZWxfcHJveGltYV9wYXJ0aWRhLnBuZwBQS0c6L0RhdGEvRkUvVUkvZmVfcGFpbmVsX2Rlc2FmaW9fZGlhcmlvLnBuZwBQS0c6L0RhdGEvRkUvVUkvZmVfcGFpbmVsX21vZG9zX2RlX2pvZ28ucG5nAFBLRzovRGF0YS9GRS9VSS9mZV9wYWluZWxfcGVyc29uYWxpemFyLnBuZwBQS0c6L0RhdGEvRkUvVUkvZmVfcGFpbmVsX21ldV9wZXJmaWwucG5nAA==")
CAVE=0x1fb3b0; SITE=0x22d4ac; PLT=0x1370f0
d=bytearray(open(LIB,'rb').read())
def bl(src,dst):
    off=(dst-(src+8))>>2
    return struct.pack('<I',0xEB000000|(off&0xFFFFFF))
if d[SITE:SITE+4]==bl(SITE,CAVE):
    print('Ja aplicado.'); sys.exit(0)
assert d[SITE:SITE+4]==bl(SITE,PLT),'site 0x22d4ac inesperado - lib diferente?'
assert d[CAVE:CAVE+4]==bytes.fromhex('f04b2de9') or d[CAVE:CAVE+4]!=b'\0\0\0\0'
d[CAVE:CAVE+len(BLOB)]=BLOB
d[SITE:SITE+4]=bl(SITE,CAVE)
open(LIB+'.bak_menu','wb').write(open(LIB,'rb').read())
open(LIB,'wb').write(d)
print('OK: patch do menu aplicado em',LIB)
