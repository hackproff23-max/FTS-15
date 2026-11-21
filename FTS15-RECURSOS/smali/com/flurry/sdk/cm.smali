.class public Lcom/flurry/sdk/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hf;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/at;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/flurry/sdk/bc;

.field private d:Lcom/flurry/sdk/h;

.field private e:Lcom/flurry/sdk/g;

.field private f:Lcom/flurry/sdk/ef;

.field private g:Lcom/flurry/sdk/eo;

.field private h:Ljava/io/File;

.field private i:Lcom/flurry/sdk/fw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fw",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/at;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/flurry/sdk/cm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/cm;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cm;->b:Ljava/util/Map;

    .line 76
    return-void
.end method

.method private a(Ljava/util/List;)Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/at;",
            ">;)",
            "Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 244
    invoke-static {p1}, Lcom/flurry/sdk/cr;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 245
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/flurry/sdk/cm;->a:Ljava/lang/String;

    const-string v1, "List of adLogs is empty"

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    .line 250
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fp;->d()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {}, Lcom/flurry/sdk/cr;->e()Ljava/util/List;

    move-result-object v3

    .line 254
    new-instance v0, Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;

    invoke-direct {v0}, Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;-><init>()V

    .line 255
    iput-object v2, v0, Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;->apiKey:Ljava/lang/String;

    .line 256
    iput-object v3, v0, Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;->adReportedIds:Ljava/util/List;

    .line 257
    iput-object v1, v0, Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;->sdkAdLogs:Ljava/util/List;

    .line 258
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;->testDevice:Z

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;->agentTimestamp:J

    .line 260
    invoke-static {}, Lcom/flurry/sdk/fq;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;->agentVersion:Ljava/lang/String;

    .line 262
    sget-object v1, Lcom/flurry/sdk/cm;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got ad log request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/cm;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/flurry/sdk/cm;->l()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/cm;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/flurry/sdk/cm;->k()V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/at;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/at;

    .line 329
    iget-object v2, p0, Lcom/flurry/sdk/cm;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/flurry/sdk/at;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/cm;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/flurry/sdk/cm;->j()V

    return-void
.end method

.method private declared-synchronized j()V
    .locals 6

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/flurry/sdk/cm;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/cm;->a(Ljava/util/List;)Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->g()Lcom/flurry/sdk/cf;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/j;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/fp;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/flurry/sdk/fq;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/flurry/sdk/cf;->a(Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/cm;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()V
    .locals 3

    .prologue
    .line 268
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/cm;->a:Ljava/lang/String;

    const-string v2, "Saving AdLog data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/flurry/sdk/cm;->i:Lcom/flurry/sdk/fw;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/flurry/sdk/cm;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fw;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()V
    .locals 3

    .prologue
    .line 274
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/cm;->a:Ljava/lang/String;

    const-string v2, "Loading AdLog data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/flurry/sdk/cm;->i:Lcom/flurry/sdk/fw;

    invoke-virtual {v0}, Lcom/flurry/sdk/fw;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 277
    if-eqz v0, :cond_1

    .line 278
    invoke-direct {p0, v0}, Lcom/flurry/sdk/cm;->b(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/cm;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/cm;->a:Ljava/lang/String;

    const-string v2, "Legacy AdLog data found, converting."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/flurry/sdk/cm;->h:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/l;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_2

    .line 286
    invoke-direct {p0, v0}, Lcom/flurry/sdk/cm;->b(Ljava/util/List;)V

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/cm;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 290
    invoke-direct {p0}, Lcom/flurry/sdk/cm;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/flurry/sdk/cm;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 347
    iget-object v0, p0, Lcom/flurry/sdk/cm;->i:Lcom/flurry/sdk/fw;

    invoke-virtual {v0}, Lcom/flurry/sdk/fw;->b()Z

    .line 348
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/flurry/sdk/at;
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/flurry/sdk/cm;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/at;

    .line 336
    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/flurry/sdk/at;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/at;-><init>(Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/flurry/sdk/cm;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x7fff

    if-ge v1, v2, :cond_0

    .line 339
    iget-object v1, p0, Lcom/flurry/sdk/cm;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/flurry/sdk/at;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/flurry/sdk/cm;->d:Lcom/flurry/sdk/h;

    invoke-virtual {v0}, Lcom/flurry/sdk/h;->a()V

    .line 169
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->d()Lcom/flurry/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/p;->a()V

    .line 170
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->e()Lcom/flurry/sdk/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/v;->a()V

    .line 172
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/cm$10;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/cm$10;-><init>(Lcom/flurry/sdk/cm;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 179
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/cm$11;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/cm$11;-><init>(Lcom/flurry/sdk/cm;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 186
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/cm$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/cm$2;-><init>(Lcom/flurry/sdk/cm;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 84
    new-instance v0, Lcom/flurry/sdk/bc;

    invoke-direct {v0}, Lcom/flurry/sdk/bc;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cm;->c:Lcom/flurry/sdk/bc;

    .line 85
    new-instance v0, Lcom/flurry/sdk/h;

    invoke-direct {v0}, Lcom/flurry/sdk/h;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cm;->d:Lcom/flurry/sdk/h;

    .line 86
    new-instance v0, Lcom/flurry/sdk/g;

    invoke-direct {v0}, Lcom/flurry/sdk/g;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cm;->e:Lcom/flurry/sdk/g;

    .line 87
    iget-object v0, p0, Lcom/flurry/sdk/cm;->e:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->a()V

    .line 89
    new-instance v0, Lcom/flurry/sdk/ei;

    invoke-direct {v0}, Lcom/flurry/sdk/ei;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cm;->f:Lcom/flurry/sdk/ef;

    .line 90
    new-instance v0, Lcom/flurry/sdk/ej;

    invoke-direct {v0}, Lcom/flurry/sdk/ej;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cm;->g:Lcom/flurry/sdk/eo;

    .line 92
    invoke-virtual {p0}, Lcom/flurry/sdk/cm;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cm;->h:Ljava/io/File;

    .line 94
    new-instance v0, Lcom/flurry/sdk/fw;

    invoke-virtual {p0}, Lcom/flurry/sdk/cm;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryadlog."

    const/4 v3, 0x1

    new-instance v4, Lcom/flurry/sdk/cm$1;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/cm$1;-><init>(Lcom/flurry/sdk/cm;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/fw;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/ha;)V

    iput-object v0, p0, Lcom/flurry/sdk/cm;->i:Lcom/flurry/sdk/fw;

    .line 101
    invoke-static {p1}, Lcom/flurry/sdk/cw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cm;->j:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/cm$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/cm$4;-><init>(Lcom/flurry/sdk/cm;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/flurry/sdk/aw;ZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/aw;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    monitor-enter p0

    if-nez p2, :cond_0

    .line 305
    :goto_0
    monitor-exit p0

    return-void

    .line 300
    :cond_0
    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/cm;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logAdEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/cm;->a(Ljava/lang/String;)Lcom/flurry/sdk/at;

    move-result-object v0

    .line 303
    new-instance v1, Lcom/flurry/sdk/as;

    invoke-virtual {p2}, Lcom/flurry/sdk/aw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/flurry/sdk/fd;->a()Lcom/flurry/sdk/fd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/fd;->f()J

    move-result-wide v4

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/flurry/sdk/as;-><init>(Ljava/lang/String;ZJLjava/util/Map;)V

    .line 304
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/at;->a(Lcom/flurry/sdk/as;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lcom/flurry/sdk/bc;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/flurry/sdk/cm;->c:Lcom/flurry/sdk/bc;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/flurry/sdk/cm;->d:Lcom/flurry/sdk/h;

    invoke-virtual {v0}, Lcom/flurry/sdk/h;->b()V

    .line 114
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->k()Lcom/flurry/sdk/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ba;->b()V

    .line 116
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/cm$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/cm$5;-><init>(Lcom/flurry/sdk/cm;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 123
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/cm$6;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/cm$6;-><init>(Lcom/flurry/sdk/cm;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public c()Lcom/flurry/sdk/g;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/flurry/sdk/cm;->e:Lcom/flurry/sdk/g;

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/flurry/sdk/ft;->a()Lcom/flurry/sdk/ft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ft;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->d()Lcom/flurry/sdk/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/p;->d(Landroid/content/Context;)V

    .line 140
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->e()Lcom/flurry/sdk/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/v;->c(Landroid/content/Context;)V

    .line 143
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/cm$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/cm$7;-><init>(Lcom/flurry/sdk/cm;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 150
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/cm$8;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/cm$8;-><init>(Lcom/flurry/sdk/cm;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 157
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/cm$9;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/cm$9;-><init>(Lcom/flurry/sdk/cm;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method public d()Lcom/flurry/sdk/ef;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/flurry/sdk/cm;->f:Lcom/flurry/sdk/ef;

    return-object v0
.end method

.method public e()Lcom/flurry/sdk/eo;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/flurry/sdk/cm;->g:Lcom/flurry/sdk/eo;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryadlog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/fp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 4

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".yflurryadlog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/fp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/hp;->i(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v1, 0x10

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized h()V
    .locals 2

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/cm$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/cm$3;-><init>(Lcom/flurry/sdk/cm;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/flurry/sdk/cm;->j:Ljava/lang/String;

    return-object v0
.end method
