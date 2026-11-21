.class public final Lcom/flurry/sdk/ia;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ia$a;
    }
.end annotation


# instance fields
.field final a:Lcom/flurry/sdk/ie;

.field final b:Lcom/flurry/sdk/im;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/jw",
            "<*>;",
            "Lcom/flurry/sdk/ia$a",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/jw",
            "<*>;",
            "Lcom/flurry/sdk/ir",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/is;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/flurry/sdk/ja;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 175
    sget-object v1, Lcom/flurry/sdk/jb;->a:Lcom/flurry/sdk/jb;

    sget-object v2, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hy;

    .line 176
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/flurry/sdk/ip;->a:Lcom/flurry/sdk/ip;

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    .line 175
    invoke-direct/range {v0 .. v11}, Lcom/flurry/sdk/ia;-><init>(Lcom/flurry/sdk/jb;Lcom/flurry/sdk/hz;Ljava/util/Map;ZZZZZZLcom/flurry/sdk/ip;Ljava/util/List;)V

    .line 179
    return-void
.end method

.method constructor <init>(Lcom/flurry/sdk/jb;Lcom/flurry/sdk/hz;Ljava/util/Map;ZZZZZZLcom/flurry/sdk/ip;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jb;",
            "Lcom/flurry/sdk/hz;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/flurry/sdk/ic",
            "<*>;>;ZZZZZZ",
            "Lcom/flurry/sdk/ip;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/is;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ia;->c:Ljava/lang/ThreadLocal;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ia;->d:Ljava/util/Map;

    .line 124
    new-instance v0, Lcom/flurry/sdk/ia$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ia$1;-><init>(Lcom/flurry/sdk/ia;)V

    iput-object v0, p0, Lcom/flurry/sdk/ia;->a:Lcom/flurry/sdk/ie;

    .line 131
    new-instance v0, Lcom/flurry/sdk/ia$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ia$2;-><init>(Lcom/flurry/sdk/ia;)V

    iput-object v0, p0, Lcom/flurry/sdk/ia;->b:Lcom/flurry/sdk/im;

    .line 187
    new-instance v0, Lcom/flurry/sdk/ja;

    invoke-direct {v0, p3}, Lcom/flurry/sdk/ja;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/flurry/sdk/ia;->f:Lcom/flurry/sdk/ja;

    .line 188
    iput-boolean p4, p0, Lcom/flurry/sdk/ia;->g:Z

    .line 189
    iput-boolean p6, p0, Lcom/flurry/sdk/ia;->i:Z

    .line 190
    iput-boolean p7, p0, Lcom/flurry/sdk/ia;->h:Z

    .line 191
    iput-boolean p8, p0, Lcom/flurry/sdk/ia;->j:Z

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    sget-object v1, Lcom/flurry/sdk/jv;->Q:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v1, Lcom/flurry/sdk/jq;->a:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    sget-object v1, Lcom/flurry/sdk/jv;->x:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v1, Lcom/flurry/sdk/jv;->m:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v1, Lcom/flurry/sdk/jv;->g:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v1, Lcom/flurry/sdk/jv;->i:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v1, Lcom/flurry/sdk/jv;->k:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    .line 212
    invoke-direct {p0, p10}, Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/ir;

    move-result-object v3

    .line 211
    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/jv;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/flurry/sdk/ir;)Lcom/flurry/sdk/is;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    .line 214
    invoke-direct {p0, p9}, Lcom/flurry/sdk/ia;->a(Z)Lcom/flurry/sdk/ir;

    move-result-object v3

    .line 213
    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/jv;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/flurry/sdk/ir;)Lcom/flurry/sdk/is;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    .line 216
    invoke-direct {p0, p9}, Lcom/flurry/sdk/ia;->b(Z)Lcom/flurry/sdk/ir;

    move-result-object v3

    .line 215
    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/jv;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/flurry/sdk/ir;)Lcom/flurry/sdk/is;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v1, Lcom/flurry/sdk/jv;->r:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v1, Lcom/flurry/sdk/jv;->t:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v1, Lcom/flurry/sdk/jv;->z:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v1, Lcom/flurry/sdk/jv;->B:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/flurry/sdk/jv;->v:Lcom/flurry/sdk/ir;

    invoke-static {v1, v2}, Lcom/flurry/sdk/jv;->a(Ljava/lang/Class;Lcom/flurry/sdk/ir;)Lcom/flurry/sdk/is;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/flurry/sdk/jv;->w:Lcom/flurry/sdk/ir;

    invoke-static {v1, v2}, Lcom/flurry/sdk/jv;->a(Ljava/lang/Class;Lcom/flurry/sdk/ir;)Lcom/flurry/sdk/is;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v1, Lcom/flurry/sdk/jv;->D:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v1, Lcom/flurry/sdk/jv;->F:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Lcom/flurry/sdk/jv;->J:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v1, Lcom/flurry/sdk/jv;->O:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v1, Lcom/flurry/sdk/jv;->H:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v1, Lcom/flurry/sdk/jv;->d:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v1, Lcom/flurry/sdk/jl;->a:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v1, Lcom/flurry/sdk/jv;->M:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v1, Lcom/flurry/sdk/jt;->a:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v1, Lcom/flurry/sdk/js;->a:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v1, Lcom/flurry/sdk/jv;->K:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v1, Lcom/flurry/sdk/jj;->a:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v1, Lcom/flurry/sdk/jv;->R:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v1, Lcom/flurry/sdk/jv;->b:Lcom/flurry/sdk/is;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lcom/flurry/sdk/jk;

    iget-object v2, p0, Lcom/flurry/sdk/ia;->f:Lcom/flurry/sdk/ja;

    invoke-direct {v1, v2}, Lcom/flurry/sdk/jk;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v1, Lcom/flurry/sdk/jp;

    iget-object v2, p0, Lcom/flurry/sdk/ia;->f:Lcom/flurry/sdk/ja;

    invoke-direct {v1, v2, p5}, Lcom/flurry/sdk/jp;-><init>(Lcom/flurry/sdk/ja;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v1, Lcom/flurry/sdk/jm;

    iget-object v2, p0, Lcom/flurry/sdk/ia;->f:Lcom/flurry/sdk/ja;

    invoke-direct {v1, v2}, Lcom/flurry/sdk/jm;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Lcom/flurry/sdk/jr;

    iget-object v2, p0, Lcom/flurry/sdk/ia;->f:Lcom/flurry/sdk/ja;

    invoke-direct {v1, v2, p2, p1}, Lcom/flurry/sdk/jr;-><init>(Lcom/flurry/sdk/ja;Lcom/flurry/sdk/hz;Lcom/flurry/sdk/jb;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ia;->e:Ljava/util/List;

    .line 246
    return-void
.end method

.method private a(Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/ir;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/ir",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    sget-object v0, Lcom/flurry/sdk/ip;->a:Lcom/flurry/sdk/ip;

    if-ne p1, v0, :cond_0

    .line 306
    sget-object v0, Lcom/flurry/sdk/jv;->n:Lcom/flurry/sdk/ir;

    .line 308
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/ia$5;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ia$5;-><init>(Lcom/flurry/sdk/ia;)V

    goto :goto_0
.end method

.method private a(Z)Lcom/flurry/sdk/ir;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/flurry/sdk/ir",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    sget-object v0, Lcom/flurry/sdk/jv;->p:Lcom/flurry/sdk/ir;

    .line 252
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/ia$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ia$3;-><init>(Lcom/flurry/sdk/ia;)V

    goto :goto_0
.end method

.method private a(Ljava/io/Writer;)Lcom/flurry/sdk/jz;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/flurry/sdk/ia;->i:Z

    if-eqz v0, :cond_0

    .line 641
    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 643
    :cond_0
    new-instance v0, Lcom/flurry/sdk/jz;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/jz;-><init>(Ljava/io/Writer;)V

    .line 644
    iget-boolean v1, p0, Lcom/flurry/sdk/ia;->j:Z

    if-eqz v1, :cond_1

    .line 645
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jz;->c(Ljava/lang/String;)V

    .line 647
    :cond_1
    iget-boolean v1, p0, Lcom/flurry/sdk/ia;->g:Z

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jz;->d(Z)V

    .line 648
    return-object v0
.end method

.method private a(D)V
    .locals 3

    .prologue
    .line 297
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ia;D)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ia;->a(D)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/flurry/sdk/jx;)V
    .locals 2

    .prologue
    .line 777
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->f()Lcom/flurry/sdk/jy;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/jy;->j:Lcom/flurry/sdk/jy;

    if-eq v0, v1, :cond_0

    .line 778
    new-instance v0, Lcom/flurry/sdk/ih;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ih;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/flurry/sdk/ka; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 780
    :catch_0
    move-exception v0

    .line 781
    new-instance v1, Lcom/flurry/sdk/io;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/io;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 782
    :catch_1
    move-exception v0

    .line 783
    new-instance v1, Lcom/flurry/sdk/ih;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/ih;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 785
    :cond_0
    return-void
.end method

.method private b(Z)Lcom/flurry/sdk/ir;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/flurry/sdk/ir",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    sget-object v0, Lcom/flurry/sdk/jv;->o:Lcom/flurry/sdk/ir;

    .line 276
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/ia$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ia$4;-><init>(Lcom/flurry/sdk/ia;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/is;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/sdk/is;",
            "Lcom/flurry/sdk/jw",
            "<TT;>;)",
            "Lcom/flurry/sdk/ir",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 424
    iget-object v1, p0, Lcom/flurry/sdk/ia;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/is;

    .line 425
    if-nez v1, :cond_1

    .line 426
    if-ne v0, p1, :cond_0

    .line 427
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 432
    :cond_1
    invoke-interface {v0, p0, p2}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_0

    .line 434
    return-object v0

    .line 437
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSON cannot serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/sdk/jw",
            "<TT;>;)",
            "Lcom/flurry/sdk/ir",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/flurry/sdk/ia;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ir;

    .line 335
    if-eqz v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-object v0

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ia;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 340
    const/4 v1, 0x0

    .line 341
    if-nez v0, :cond_5

    .line 342
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 343
    iget-object v0, p0, Lcom/flurry/sdk/ia;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 344
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 348
    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ia$a;

    .line 349
    if-nez v0, :cond_0

    .line 354
    :try_start_0
    new-instance v3, Lcom/flurry/sdk/ia$a;

    invoke-direct {v3}, Lcom/flurry/sdk/ia$a;-><init>()V

    .line 355
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/flurry/sdk/ia;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/is;

    .line 358
    invoke-interface {v0, p0, p1}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {v3, v0}, Lcom/flurry/sdk/ia$a;->a(Lcom/flurry/sdk/ir;)V

    .line 361
    iget-object v3, p0, Lcom/flurry/sdk/ia;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/flurry/sdk/ia;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 365
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    if-eqz v1, :cond_4

    .line 370
    iget-object v1, p0, Lcom/flurry/sdk/ia;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Class;)Lcom/flurry/sdk/ir;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/flurry/sdk/ir",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {p1}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jx;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/sdk/jx;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/ih;,
            Lcom/flurry/sdk/io;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 797
    .line 798
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->p()Z

    move-result v2

    .line 799
    invoke-virtual {p1, v1}, Lcom/flurry/sdk/jx;->a(Z)V

    .line 801
    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->f()Lcom/flurry/sdk/jy;

    .line 802
    const/4 v1, 0x0

    .line 803
    invoke-static {p2}, Lcom/flurry/sdk/jw;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/jw;

    move-result-object v0

    .line 804
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;

    move-result-object v0

    .line 805
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ir;->b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 822
    invoke-virtual {p1, v2}, Lcom/flurry/sdk/jx;->a(Z)V

    :goto_0
    return-object v0

    .line 807
    :catch_0
    move-exception v0

    .line 812
    if-eqz v1, :cond_0

    .line 813
    const/4 v0, 0x0

    .line 822
    invoke-virtual {p1, v2}, Lcom/flurry/sdk/jx;->a(Z)V

    goto :goto_0

    .line 815
    :cond_0
    :try_start_1
    new-instance v1, Lcom/flurry/sdk/io;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/io;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/jx;->a(Z)V

    throw v0

    .line 816
    :catch_1
    move-exception v0

    .line 817
    :try_start_2
    new-instance v1, Lcom/flurry/sdk/io;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/io;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 818
    :catch_2
    move-exception v0

    .line 820
    new-instance v1, Lcom/flurry/sdk/io;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/io;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/io;,
            Lcom/flurry/sdk/ih;
        }
    .end annotation

    .prologue
    .line 742
    new-instance v0, Lcom/flurry/sdk/jx;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/jx;-><init>(Ljava/io/Reader;)V

    .line 743
    invoke-virtual {p0, v0, p2}, Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/jx;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 744
    invoke-static {v1, v0}, Lcom/flurry/sdk/ia;->a(Ljava/lang/Object;Lcom/flurry/sdk/jx;)V

    .line 745
    invoke-static {p2}, Lcom/flurry/sdk/jg;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/ig;Lcom/flurry/sdk/jz;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/ih;
        }
    .end annotation

    .prologue
    .line 656
    invoke-virtual {p2}, Lcom/flurry/sdk/jz;->g()Z

    move-result v1

    .line 657
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/jz;->b(Z)V

    .line 658
    invoke-virtual {p2}, Lcom/flurry/sdk/jz;->h()Z

    move-result v2

    .line 659
    iget-boolean v0, p0, Lcom/flurry/sdk/ia;->h:Z

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/jz;->c(Z)V

    .line 660
    invoke-virtual {p2}, Lcom/flurry/sdk/jz;->i()Z

    move-result v3

    .line 661
    iget-boolean v0, p0, Lcom/flurry/sdk/ia;->g:Z

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/jz;->d(Z)V

    .line 663
    :try_start_0
    invoke-static {p1, p2}, Lcom/flurry/sdk/jh;->a(Lcom/flurry/sdk/ig;Lcom/flurry/sdk/jz;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    invoke-virtual {p2, v1}, Lcom/flurry/sdk/jz;->b(Z)V

    .line 668
    invoke-virtual {p2, v2}, Lcom/flurry/sdk/jz;->c(Z)V

    .line 669
    invoke-virtual {p2, v3}, Lcom/flurry/sdk/jz;->d(Z)V

    .line 671
    return-void

    .line 664
    :catch_0
    move-exception v0

    .line 665
    :try_start_1
    new-instance v4, Lcom/flurry/sdk/ih;

    invoke-direct {v4, v0}, Lcom/flurry/sdk/ih;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    :catchall_0
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/flurry/sdk/jz;->b(Z)V

    .line 668
    invoke-virtual {p2, v2}, Lcom/flurry/sdk/jz;->c(Z)V

    .line 669
    invoke-virtual {p2, v3}, Lcom/flurry/sdk/jz;->d(Z)V

    throw v0
.end method

.method public a(Lcom/flurry/sdk/ig;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/ih;
        }
    .end annotation

    .prologue
    .line 628
    :try_start_0
    invoke-static {p2}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ia;->a(Ljava/io/Writer;)Lcom/flurry/sdk/jz;

    move-result-object v0

    .line 629
    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/ig;Lcom/flurry/sdk/jz;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/ih;
        }
    .end annotation

    .prologue
    .line 548
    if-eqz p1, :cond_0

    .line 549
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/flurry/sdk/ia;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    sget-object v0, Lcom/flurry/sdk/ii;->a:Lcom/flurry/sdk/ii;

    invoke-virtual {p0, v0, p2}, Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/ig;Ljava/lang/Appendable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/flurry/sdk/jz;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/ih;
        }
    .end annotation

    .prologue
    .line 587
    invoke-static {p2}, Lcom/flurry/sdk/jw;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;

    move-result-object v0

    .line 588
    invoke-virtual {p3}, Lcom/flurry/sdk/jz;->g()Z

    move-result v1

    .line 589
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/flurry/sdk/jz;->b(Z)V

    .line 590
    invoke-virtual {p3}, Lcom/flurry/sdk/jz;->h()Z

    move-result v2

    .line 591
    iget-boolean v3, p0, Lcom/flurry/sdk/ia;->h:Z

    invoke-virtual {p3, v3}, Lcom/flurry/sdk/jz;->c(Z)V

    .line 592
    invoke-virtual {p3}, Lcom/flurry/sdk/jz;->i()Z

    move-result v3

    .line 593
    iget-boolean v4, p0, Lcom/flurry/sdk/ia;->g:Z

    invoke-virtual {p3, v4}, Lcom/flurry/sdk/jz;->d(Z)V

    .line 595
    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/flurry/sdk/ir;->a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    invoke-virtual {p3, v1}, Lcom/flurry/sdk/jz;->b(Z)V

    .line 600
    invoke-virtual {p3, v2}, Lcom/flurry/sdk/jz;->c(Z)V

    .line 601
    invoke-virtual {p3, v3}, Lcom/flurry/sdk/jz;->d(Z)V

    .line 603
    return-void

    .line 596
    :catch_0
    move-exception v0

    .line 597
    :try_start_1
    new-instance v4, Lcom/flurry/sdk/ih;

    invoke-direct {v4, v0}, Lcom/flurry/sdk/ih;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    :catchall_0
    move-exception v0

    invoke-virtual {p3, v1}, Lcom/flurry/sdk/jz;->b(Z)V

    .line 600
    invoke-virtual {p3, v2}, Lcom/flurry/sdk/jz;->c(Z)V

    .line 601
    invoke-virtual {p3, v3}, Lcom/flurry/sdk/jz;->d(Z)V

    throw v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/ih;
        }
    .end annotation

    .prologue
    .line 573
    :try_start_0
    invoke-static {p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ia;->a(Ljava/io/Writer;)Lcom/flurry/sdk/jz;

    move-result-object v0

    .line 574
    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/ia;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/flurry/sdk/jz;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    return-void

    .line 575
    :catch_0
    move-exception v0

    .line 576
    new-instance v1, Lcom/flurry/sdk/ih;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/ih;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/ia;->g:Z

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    .line 902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ia;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ia;->f:Lcom/flurry/sdk/ja;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    .line 904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
