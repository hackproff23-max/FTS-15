.class public final Lcom/flurry/sdk/ib;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/flurry/sdk/jb;

.field private b:Lcom/flurry/sdk/ip;

.field private c:Lcom/flurry/sdk/hz;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/flurry/sdk/ic",
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

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/is;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/flurry/sdk/jb;->a:Lcom/flurry/sdk/jb;

    iput-object v0, p0, Lcom/flurry/sdk/ib;->a:Lcom/flurry/sdk/jb;

    .line 70
    sget-object v0, Lcom/flurry/sdk/ip;->a:Lcom/flurry/sdk/ip;

    iput-object v0, p0, Lcom/flurry/sdk/ib;->b:Lcom/flurry/sdk/ip;

    .line 71
    sget-object v0, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hy;

    iput-object v0, p0, Lcom/flurry/sdk/ib;->c:Lcom/flurry/sdk/hz;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ib;->d:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ib;->e:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ib;->f:Ljava/util/List;

    .line 79
    iput v1, p0, Lcom/flurry/sdk/ib;->i:I

    .line 80
    iput v1, p0, Lcom/flurry/sdk/ib;->j:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ib;->m:Z

    .line 94
    return-void
.end method

.method private a(Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/is;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 554
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    new-instance v0, Lcom/flurry/sdk/hv;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/hv;-><init>(Ljava/lang/String;)V

    .line 562
    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/jw;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/flurry/sdk/iq;->a(Lcom/flurry/sdk/jw;Ljava/lang/Object;)Lcom/flurry/sdk/is;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/jw;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/flurry/sdk/iq;->a(Lcom/flurry/sdk/jw;Ljava/lang/Object;)Lcom/flurry/sdk/is;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/jw;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/flurry/sdk/iq;->a(Lcom/flurry/sdk/jw;Ljava/lang/Object;)Lcom/flurry/sdk/is;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_0
    return-void

    .line 556
    :cond_1
    if-eq p2, v2, :cond_0

    if-eq p3, v2, :cond_0

    .line 557
    new-instance v0, Lcom/flurry/sdk/hv;

    invoke-direct {v0, p2, p3}, Lcom/flurry/sdk/hv;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/ib;
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ib;->g:Z

    .line 158
    return-object p0
.end method

.method public b()Lcom/flurry/sdk/ia;
    .locals 12

    .prologue
    .line 539
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 540
    iget-object v0, p0, Lcom/flurry/sdk/ib;->e:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 541
    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 542
    iget-object v0, p0, Lcom/flurry/sdk/ib;->f:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 543
    iget-object v0, p0, Lcom/flurry/sdk/ib;->h:Ljava/lang/String;

    iget v1, p0, Lcom/flurry/sdk/ib;->i:I

    iget v2, p0, Lcom/flurry/sdk/ib;->j:I

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/flurry/sdk/ib;->a(Ljava/lang/String;IILjava/util/List;)V

    .line 545
    new-instance v0, Lcom/flurry/sdk/ia;

    iget-object v1, p0, Lcom/flurry/sdk/ib;->a:Lcom/flurry/sdk/jb;

    iget-object v2, p0, Lcom/flurry/sdk/ib;->c:Lcom/flurry/sdk/hz;

    iget-object v3, p0, Lcom/flurry/sdk/ib;->d:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/flurry/sdk/ib;->g:Z

    iget-boolean v5, p0, Lcom/flurry/sdk/ib;->k:Z

    iget-boolean v6, p0, Lcom/flurry/sdk/ib;->o:Z

    iget-boolean v7, p0, Lcom/flurry/sdk/ib;->m:Z

    iget-boolean v8, p0, Lcom/flurry/sdk/ib;->n:Z

    iget-boolean v9, p0, Lcom/flurry/sdk/ib;->l:Z

    iget-object v10, p0, Lcom/flurry/sdk/ib;->b:Lcom/flurry/sdk/ip;

    invoke-direct/range {v0 .. v11}, Lcom/flurry/sdk/ia;-><init>(Lcom/flurry/sdk/jb;Lcom/flurry/sdk/hz;Ljava/util/Map;ZZZZZZLcom/flurry/sdk/ip;Ljava/util/List;)V

    return-object v0
.end method
