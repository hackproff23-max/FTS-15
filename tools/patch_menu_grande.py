#!/usr/bin/env python3
# Painel "PROXIMA PARTIDA" grande (escudos e nomes maiores, linha mais alta) + escudos do menu.
# Substitui o patch dos escudos (e6). Uso: python3 patch_menu_grande.py [libFTS15.so]
import struct,base64,sys,os
LIB=sys.argv[1] if len(sys.argv)>1 else os.path.expanduser('~/FTS-15/FTS15-RECURSOS/lib/armeabi-v7a/libFTS15.so')
BLOB=base64.b64decode("AAq57hzG1OUAAFzjEs6P4k/PjxIA+tztAerc7QLa3O0DytztHv8v4QAKOO4cxtTlAABc4/jAj+JFz48SBHqc7QeKOO4e/y/hAMaU5QAAAOoExpTlYEct6QHcTeIYkZ3lDICg4QBQoOEBYKDh/6QZ4hkAAAr/BODjAKCK4QgAjeIIEKDhACCg4wAw4OMBwODjAMCN5QPAoOMEwI3lO+P86xzG1OUAAFzjhMCP4qDAjxIQagDuBwrc7SAKMO4QKhDuFDCc5RjAnOUAwI3lBKCN5QgAjeIFEKDhYgH96wHcjeJgh73oBAAt5RwG1+UBAADiNMCP4gDBjOAAepztBACd5AeacO4e/y/hBAAt5RwG1+UBAADiEMCP4gDBjOAAepztBACd5Ieaee4e/y/hAADwQQAAUEEAAPBBAACgQAAAAEAAAPjBAACIQQAAoEEAANxBAACgPwAAUEEAAABAAACAPwAA6MEAAABBAAAwQZqZgUHNzMy/")
CAVE=0x1fb5d0
OFF=dict(init=0,shift=0x28,stub1=0x48,stub2=0x50,calcA=0xe4,calcB=0x108)
d=bytearray(open(LIB,'rb').read())
R=lambda a:struct.unpack_from('<I',d,a)[0]
def bl(src,dst): return 0xEB000000|(((dst-(src+8))>>2)&0xFFFFFF)
isbl=lambda a:(R(a)>>24)==0xEB
SIMPLE=[
 (0x2112f4,[0xe3447150],0xee1f7a90),
 (0x21147c,[0xe3443150],0xee1f3a90),
 (0x211528,[0xe3443150],0xee1f3a90),
 (0x211468,[0xeeb20a0a],0xeeb00a6f),
 (0x2115d4,[0xeeb20a0a],0xeeb00a6f),
 (0x211370,[0xe3a025fe],0xee1d2a90),
 (0x21153c,[0xe3a025fe],0xee1d2a90),
 (0x211368,[0xeeba0a0a,0xeebb0a0d],0xeeb00a6c),
 (0x2113a8,[0xee3aca0b],0xee3aca2e),
 (0x2113c8,[0xee3aca0b],0xee3aca2e),
 (0x211564,[0xee3a8a0b],0xee3a8a2e),
 (0x211584,[0xee3a8a0b],0xee3a8a2e),
]
HOOKS=[(0x2112e0,'init',0xeeb90a00),(0x211300,'shift',0xee380a00),(0x211340,'stub1',None),(0x211530,'stub2',None),
       (0x20f5ac,'calcA',0xee709a0c),(0x20f5d8,'calcB',0xee799a8c)]
if all(R(a)==n for a,_,n in SIMPLE) and R(0x2112e0)==bl(0x2112e0,CAVE):
    print('Ja aplicado.'); sys.exit(0)
for a,old,new in SIMPLE:
    assert R(a) in old+[new],'bytes inesperados em 0x%x (%08x). Nada foi alterado.'%(a,R(a))
for a,n,old in HOOKS:
    assert isbl(a) or R(a)==old,'bytes inesperados em 0x%x (%08x). Nada foi alterado.'%(a,R(a))
if not os.path.exists(LIB+'.orig_grande'): open(LIB+'.orig_grande','wb').write(d)
d[CAVE:CAVE+len(BLOB)]=BLOB
for a,_,new in SIMPLE: struct.pack_into('<I',d,a,new)
for a,n,_ in HOOKS: struct.pack_into('<I',d,a,bl(a,CAVE+OFF[n]))
open(LIB,'wb').write(d)
print('OK: painel grande + escudos aplicados em',LIB)
