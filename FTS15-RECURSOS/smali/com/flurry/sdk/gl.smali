.class public Lcom/flurry/sdk/gl;
.super Lcom/flurry/sdk/hr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/gl$2;,
        Lcom/flurry/sdk/gl$a;,
        Lcom/flurry/sdk/gl$b;,
        Lcom/flurry/sdk/gl$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/flurry/sdk/gl$a;

.field private d:I

.field private e:I

.field private f:Z

.field private final g:Lcom/flurry/sdk/fu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fu",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/flurry/sdk/gl$c;

.field private k:Ljava/net/HttpURLConnection;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/Exception;

.field private o:I

.field private final p:Lcom/flurry/sdk/fu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fu",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/flurry/sdk/gl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/flurry/sdk/hr;-><init>()V

    .line 128
    const/16 v0, 0x2710

    iput v0, p0, Lcom/flurry/sdk/gl;->d:I

    .line 129
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/flurry/sdk/gl;->e:I

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gl;->f:Z

    .line 131
    new-instance v0, Lcom/flurry/sdk/fu;

    invoke-direct {v0}, Lcom/flurry/sdk/fu;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/gl;->g:Lcom/flurry/sdk/fu;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/gl;->o:I

    .line 140
    new-instance v0, Lcom/flurry/sdk/fu;

    invoke-direct {v0}, Lcom/flurry/sdk/fu;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/gl;->p:Lcom/flurry/sdk/fu;

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/gl;->q:Ljava/lang/Object;

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gl;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/flurry/sdk/gl;->j:Lcom/flurry/sdk/gl$c;

    if-nez v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    if-eqz p1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/flurry/sdk/gl;->j:Lcom/flurry/sdk/gl$c;

    invoke-interface {v0, p0, p1}, Lcom/flurry/sdk/gl$c;->a(Lcom/flurry/sdk/gl;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private a(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/flurry/sdk/gl;->j:Lcom/flurry/sdk/gl$c;

    if-nez v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    if-eqz p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/flurry/sdk/gl;->j:Lcom/flurry/sdk/gl$c;

    invoke-interface {v0, p0, p1}, Lcom/flurry/sdk/gl$c;->a(Lcom/flurry/sdk/gl;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private m()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-boolean v0, p0, Lcom/flurry/sdk/gl;->m:Z

    if-eqz v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gl;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/hp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gl;->b:Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/flurry/sdk/gl;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 277
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    .line 278
    iget-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/flurry/sdk/gl;->d:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 279
    iget-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/flurry/sdk/gl;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 280
    iget-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/flurry/sdk/gl;->c:Lcom/flurry/sdk/gl$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/gl$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Lcom/flurry/sdk/gl;->f:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 282
    iget-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    sget-object v1, Lcom/flurry/sdk/gl$a;->c:Lcom/flurry/sdk/gl$a;

    iget-object v3, p0, Lcom/flurry/sdk/gl;->c:Lcom/flurry/sdk/gl$a;

    invoke-virtual {v1, v3}, Lcom/flurry/sdk/gl$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 283
    iget-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 286
    iget-object v0, p0, Lcom/flurry/sdk/gl;->g:Lcom/flurry/sdk/fu;

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->b()Ljava/util/Collection;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 288
    iget-object v4, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 357
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/flurry/sdk/gl;->o()V

    throw v0

    .line 292
    :cond_1
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/gl$a;->b:Lcom/flurry/sdk/gl$a;

    iget-object v1, p0, Lcom/flurry/sdk/gl;->c:Lcom/flurry/sdk/gl$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gl$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/gl$a;->c:Lcom/flurry/sdk/gl$a;

    iget-object v1, p0, Lcom/flurry/sdk/gl;->c:Lcom/flurry/sdk/gl$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gl$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_2
    iget-boolean v0, p0, Lcom/flurry/sdk/gl;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 357
    invoke-direct {p0}, Lcom/flurry/sdk/gl;->o()V

    goto/16 :goto_0

    .line 302
    :cond_3
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/gl$a;->c:Lcom/flurry/sdk/gl$a;

    iget-object v1, p0, Lcom/flurry/sdk/gl;->c:Lcom/flurry/sdk/gl$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gl$a;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    :try_start_3
    iget-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 309
    :try_start_4
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 312
    :try_start_5
    invoke-direct {p0, v1}, Lcom/flurry/sdk/gl;->a(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 315
    :try_start_6
    invoke-static {v1}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v3}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/gl;->o:I

    .line 324
    iget-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 325
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    iget-object v5, p0, Lcom/flurry/sdk/gl;->p:Lcom/flurry/sdk/fu;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/flurry/sdk/fu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 315
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v2}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    throw v0

    .line 333
    :cond_6
    sget-object v0, Lcom/flurry/sdk/gl$a;->b:Lcom/flurry/sdk/gl$a;

    iget-object v1, p0, Lcom/flurry/sdk/gl;->c:Lcom/flurry/sdk/gl$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gl$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/flurry/sdk/gl$a;->c:Lcom/flurry/sdk/gl$a;

    iget-object v1, p0, Lcom/flurry/sdk/gl;->c:Lcom/flurry/sdk/gl$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gl$a;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    if-nez v0, :cond_7

    .line 357
    invoke-direct {p0}, Lcom/flurry/sdk/gl;->o()V

    goto/16 :goto_0

    .line 338
    :cond_7
    :try_start_7
    iget-boolean v0, p0, Lcom/flurry/sdk/gl;->m:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_8

    .line 357
    invoke-direct {p0}, Lcom/flurry/sdk/gl;->o()V

    goto/16 :goto_0

    .line 347
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v3

    .line 348
    :try_start_9
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 351
    :try_start_a
    invoke-direct {p0, v1}, Lcom/flurry/sdk/gl;->a(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 353
    :try_start_b
    invoke-static {v1}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    .line 354
    invoke-static {v3}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 357
    invoke-direct {p0}, Lcom/flurry/sdk/gl;->o()V

    goto/16 :goto_0

    .line 353
    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_c
    invoke-static {v2}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    .line 354
    invoke-static {v1}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 353
    :catchall_3
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_4

    .line 315
    :catchall_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method

.method private n()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/flurry/sdk/gl;->j:Lcom/flurry/sdk/gl$c;

    if-nez v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/flurry/sdk/gl;->j:Lcom/flurry/sdk/gl$c;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/gl$c;->a(Lcom/flurry/sdk/gl;)V

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/flurry/sdk/gl;->l:Z

    if-eqz v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gl;->l:Z

    .line 412
    iget-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/flurry/sdk/gl;->l:Z

    if-eqz v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gl;->l:Z

    .line 425
    iget-object v0, p0, Lcom/flurry/sdk/gl;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 426
    new-instance v0, Lcom/flurry/sdk/gl$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gl$1;-><init>(Lcom/flurry/sdk/gl;)V

    .line 437
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/flurry/sdk/gl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/gl$a;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/flurry/sdk/gl;->c:Lcom/flurry/sdk/gl$a;

    .line 158
    return-void
.end method

.method public a(Lcom/flurry/sdk/gl$c;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/flurry/sdk/gl;->j:Lcom/flurry/sdk/gl$c;

    .line 180
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/flurry/sdk/gl;->b:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/flurry/sdk/gl;->g:Lcom/flurry/sdk/fu;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/fu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/flurry/sdk/gl;->f:Z

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gl;->p:Lcom/flurry/sdk/fu;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/fu;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lcom/flurry/sdk/gl;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/gl;->m:Z

    monitor-exit v1

    return v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/flurry/sdk/gl;->o:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/flurry/sdk/gl;->o:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/flurry/sdk/gl;->o:I

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/flurry/sdk/gl;->n:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 221
    iget-object v1, p0, Lcom/flurry/sdk/gl;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/flurry/sdk/gl;->m:Z

    .line 223
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-direct {p0}, Lcom/flurry/sdk/gl;->p()V

    .line 226
    return-void

    .line 223
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->g()V

    .line 263
    return-void
.end method

.method public safeRun()V
    .locals 5

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/gl;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/flurry/sdk/gl;->n()V

    .line 258
    :goto_0
    return-void

    .line 235
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/fj;->a()Lcom/flurry/sdk/fj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fj;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network not available, aborting http request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    invoke-direct {p0}, Lcom/flurry/sdk/gl;->n()V

    goto :goto_0

    .line 241
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/gl;->c:Lcom/flurry/sdk/gl$a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/gl$a;->a:Lcom/flurry/sdk/gl$a;

    iget-object v1, p0, Lcom/flurry/sdk/gl;->c:Lcom/flurry/sdk/gl$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gl$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    :cond_2
    sget-object v0, Lcom/flurry/sdk/gl$a;->b:Lcom/flurry/sdk/gl$a;

    iput-object v0, p0, Lcom/flurry/sdk/gl;->c:Lcom/flurry/sdk/gl$a;

    .line 247
    :cond_3
    invoke-direct {p0}, Lcom/flurry/sdk/gl;->m()V

    .line 249
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/flurry/sdk/gl;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    invoke-direct {p0}, Lcom/flurry/sdk/gl;->n()V

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    const/4 v1, 0x4

    :try_start_3
    sget-object v2, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/flurry/sdk/gl;->o:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/gl;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during http request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/gl;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    iput-object v0, p0, Lcom/flurry/sdk/gl;->n:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    invoke-direct {p0}, Lcom/flurry/sdk/gl;->n()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/flurry/sdk/gl;->n()V

    throw v0
.end method
