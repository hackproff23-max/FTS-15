.class public Lcom/flurry/sdk/ce;
.super Lcom/flurry/sdk/go;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/go",
        "<",
        "Lcom/flurry/sdk/cd;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/fw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fw",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cd;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/flurry/sdk/ce;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ce;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/flurry/sdk/go;-><init>()V

    .line 34
    new-instance v0, Lcom/flurry/sdk/fw;

    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/fp;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, ".yflurryreporter"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryreporter"

    const/4 v3, 0x2

    new-instance v4, Lcom/flurry/sdk/ce$1;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/ce$1;-><init>(Lcom/flurry/sdk/ce;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/fw;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/ha;)V

    iput-object v0, p0, Lcom/flurry/sdk/ce;->b:Lcom/flurry/sdk/fw;

    .line 47
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/flurry/sdk/ce;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/flurry/sdk/cd;I)V
    .locals 5

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    const-string v1, "event"

    invoke-virtual {p1}, Lcom/flurry/sdk/cd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/flurry/sdk/cd;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "response"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/cd;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/flurry/sdk/aw;->J:Lcom/flurry/sdk/aw;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/flurry/sdk/i;->a(Ljava/lang/String;Lcom/flurry/sdk/aw;ZLjava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/ce;Lcom/flurry/sdk/cd;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ce;->a(Lcom/flurry/sdk/cd;I)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ce;Lcom/flurry/sdk/gn;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ce;->c(Lcom/flurry/sdk/gn;)V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/ce;Lcom/flurry/sdk/gn;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ce;->c(Lcom/flurry/sdk/gn;)V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/ce;Lcom/flurry/sdk/gn;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ce;->d(Lcom/flurry/sdk/gn;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/flurry/sdk/cd;)V
    .locals 4

    .prologue
    .line 66
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ce;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending next report for original url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/cd;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to current url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/cd;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/flurry/sdk/gk;

    invoke-direct {v0}, Lcom/flurry/sdk/gk;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/flurry/sdk/cd;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->a(Ljava/lang/String;)V

    .line 72
    const v1, 0x186a0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->a(I)V

    .line 73
    sget-object v1, Lcom/flurry/sdk/gl$a;->b:Lcom/flurry/sdk/gl$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->a(Lcom/flurry/sdk/gl$a;)V

    .line 74
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->a(Z)V

    .line 75
    invoke-virtual {p1}, Lcom/flurry/sdk/cd;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "Cookie"

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/i;->h()Lcom/flurry/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/gk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    new-instance v1, Lcom/flurry/sdk/ce$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/ce$2;-><init>(Lcom/flurry/sdk/ce;Lcom/flurry/sdk/cd;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->a(Lcom/flurry/sdk/gk$a;)V

    .line 144
    invoke-static {}, Lcom/flurry/sdk/fn;->a()Lcom/flurry/sdk/fn;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/fn;->a(Ljava/lang/Object;Lcom/flurry/sdk/hr;)V

    .line 145
    return-void
.end method

.method protected bridge synthetic a(Lcom/flurry/sdk/gn;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/flurry/sdk/cd;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ce;->a(Lcom/flurry/sdk/cd;)V

    return-void
.end method

.method protected declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hp;->b()V

    .line 52
    iget-object v0, p0, Lcom/flurry/sdk/ce;->b:Lcom/flurry/sdk/fw;

    invoke-virtual {v0}, Lcom/flurry/sdk/fw;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hp;->b()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 62
    iget-object v1, p0, Lcom/flurry/sdk/ce;->b:Lcom/flurry/sdk/fw;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/fw;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
