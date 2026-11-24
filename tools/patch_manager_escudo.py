#!/usr/bin/env python3
"""FTS15 - Manager Mode: escudo do time 2 nao cobre mais o nome.
Gancho em 0x211530 (bl do escudo do time 2 em CFEStatsBox::RenderFixture) -> codigo novo em 0x1fb7a0
(area morta de CFEPictureMenuManager). So muda o modo pequeno empilhado; o menu principal nao muda.
Uso: python3 tools/patch_manager_escudo.py [caminho_da_lib]"""
import sys, os, struct, base64
so = sys.argv[1] if len(sys.argv) > 1 else os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "FTS15-RECURSOS/lib/armeabi-v7a/libFTS15.so")
STUB = base64.b64decode("kMod7gEBXOMLAAAKSMq07hD68e4IAAAaJMCP4gAwnOUDwIzgAArc7RAKAO5gCjDuAgrf7WAKMO4QChDukf//6gAAgECo////")
OLD  = base64.b64decode("AGCg4wgAgeIBAFDhADAAIwAAUuMBIAATAxCS4QAA4BMAEKDjACCg45AG/esIcIDiAICA5QRQgOUAAFXjDAAACjgAn+WVeCXg")
HOOK, STUBADDR = 0x211530, 0x1fb7a0
NEWBL = struct.pack("<I", 0xEB000000 | (((STUBADDR - (HOOK + 8)) >> 2) & 0xFFFFFF))
OLDBL = bytes.fromhex("3ca8ffeb")
d = bytearray(open(so, "rb").read())
if bytes(d[HOOK:HOOK+4]) == NEWBL and bytes(d[STUBADDR:STUBADDR+len(STUB)]) == STUB:
    sys.exit("Ja aplicado. Nada foi alterado.")
if bytes(d[HOOK:HOOK+4]) != OLDBL:
    sys.exit("ERRO: 0x211530 nao tem o gancho do menu grande esperado (%s). Nada foi alterado." % bytes(d[HOOK:HOOK+4]).hex())
if bytes(d[STUBADDR:STUBADDR+len(STUB)]) != OLD:
    sys.exit("ERRO: area 0x1fb7a0 diferente do esperado. Nada foi alterado.")
d[STUBADDR:STUBADDR+len(STUB)] = STUB
d[HOOK:HOOK+4] = NEWBL
open(so, "wb").write(d)
print("OK: escudo do time 2 corrigido no Manager Mode (%d bytes em 0x%x + gancho em 0x%x)." % (len(STUB), STUBADDR, HOOK))
