import struct
AL=0xE0000000
def push(regs): return AL|0x092D0000|sum(1<<r for r in regs)
def pop(regs):  return AL|0x08BD0000|sum(1<<r for r in regs)
def mov_r(rd,rm): return AL|0x01A00000|(rd<<12)|rm
def mov_i(rd,imm): assert 0<=imm<256; return AL|0x03A00000|(rd<<12)|imm
def ldr_pc(rd,off):  # off = bytes relative to pc+8
    u=0x00800000 if off>=0 else 0
    return AL|0x051F0000|u|(rd<<12)|abs(off)
def str_sp(rd,imm): return AL|0x058D0000|(rd<<12)|imm
def ldr_sp(rd,imm): return AL|0x059D0000|(rd<<12)|imm
def add_i(rd,rn,imm): assert 0<=imm<256; return AL|0x02800000|(rn<<16)|(rd<<12)|imm
def subs_i(rd,rn,imm): assert 0<=imm<256; return AL|0x02500000|(rn<<16)|(rd<<12)|imm
def add_pc(rd,off): # adr rd, pc+8+off
    assert 0<=off<256; return add_i(rd,15,off)
def b(cond,here,target):
    o=((target-(here+8))>>2)&0xFFFFFF; return (cond<<28)|0x0A000000|o
def bl(here,target):
    o=((target-(here+8))>>2)&0xFFFFFF; return AL|0x0B000000|o
def sreg(s): return (s>>1, s&1)
def vldr(sd,rn,imm):
    vd,d=sreg(sd); assert imm%4==0 and imm<1024
    return AL|0x0D900A00|(d<<22)|(rn<<16)|(vd<<12)|(imm//4)
def vmov_to_s(sn,rt):
    vn,n=sreg(sn); return AL|0x0E000A10|(vn<<16)|(rt<<12)|(n<<7)
def vmov_to_r(rt,sn):
    vn,n=sreg(sn); return AL|0x0E100A10|(vn<<16)|(rt<<12)|(n<<7)
def vadd(sd,sn,sm):
    vd,d=sreg(sd); vn,n=sreg(sn); vm,m=sreg(sm)
    return AL|0x0E300A00|(d<<22)|(vn<<16)|(vd<<12)|(n<<7)|(m<<5)|vm
def decode_bl(word,here):
    assert (word>>24)==0xEB
    o=word&0xFFFFFF
    if o&0x800000: o-=0x1000000
    return here+8+o*4

def with_cond(word, cond): return (word & 0x0FFFFFFF) | (cond<<28)
def lsr_i(rd,rm,imm): return AL|0x01A00020|(rd<<12)|(imm<<7)|rm
def and_i(rd,rn,imm): assert 0<=imm<256; return AL|0x02000000|(rn<<16)|(rd<<12)|imm
def add_r(rd,rn,rm): return AL|0x00800000|(rn<<16)|(rd<<12)|rm
def cmp_i(rn,imm): assert 0<=imm<256; return AL|0x03500000|(rn<<16)|imm
def decode_b(word,here):
    assert (word>>24)==0xEA
    o=word&0xFFFFFF
    if o&0x800000: o-=0x1000000
    return here+8+o*4
