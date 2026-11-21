.class public Lcom/flurry/sdk/fo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hf;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/flurry/sdk/fo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/fo;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide v2, p0, Lcom/flurry/sdk/fo;->b:J

    .line 30
    iput-wide v2, p0, Lcom/flurry/sdk/fo;->c:J

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/sdk/fo;->d:J

    .line 32
    iput-wide v2, p0, Lcom/flurry/sdk/fo;->e:J

    .line 34
    iput-wide v2, p0, Lcom/flurry/sdk/fo;->f:J

    .line 38
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/fo;->b:J

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/fo;->c:J

    .line 46
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/fo$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/fo$1;-><init>(Lcom/flurry/sdk/fo;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/flurry/sdk/fo;->b:J

    return-wide v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 56
    invoke-static {}, Lcom/flurry/sdk/hc;->a()Lcom/flurry/sdk/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->c()J

    move-result-wide v0

    .line 59
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 60
    iget-wide v2, p0, Lcom/flurry/sdk/fo;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/fo;->e:J

    .line 62
    :cond_0
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/flurry/sdk/fo;->c:J

    return-wide v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/fo;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/fo;->d:J

    .line 67
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/flurry/sdk/fo;->d:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/flurry/sdk/fo;->e:J

    return-wide v0
.end method

.method public declared-synchronized f()J
    .locals 4

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/fo;->c:J

    sub-long/2addr v0, v2

    .line 92
    iget-wide v2, p0, Lcom/flurry/sdk/fo;->f:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/flurry/sdk/fo;->f:J

    .line 94
    iget-wide v0, p0, Lcom/flurry/sdk/fo;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 92
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/flurry/sdk/fo;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/fo;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
