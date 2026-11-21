.class public abstract Lcom/flurry/sdk/go;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReportInfo:",
        "Lcom/flurry/sdk/gn;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TReportInfo;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:I

.field private f:J

.field private final g:Ljava/lang/Runnable;

.field private final h:Lcom/flurry/sdk/fy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fy",
            "<",
            "Lcom/flurry/sdk/fi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/go;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const v0, 0x7fffffff

    iput v0, p0, Lcom/flurry/sdk/go;->b:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/go;->c:Ljava/util/List;

    .line 33
    new-instance v0, Lcom/flurry/sdk/go$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/go$1;-><init>(Lcom/flurry/sdk/go;)V

    iput-object v0, p0, Lcom/flurry/sdk/go;->g:Ljava/lang/Runnable;

    .line 40
    new-instance v0, Lcom/flurry/sdk/go$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/go$2;-><init>(Lcom/flurry/sdk/go;)V

    iput-object v0, p0, Lcom/flurry/sdk/go;->h:Lcom/flurry/sdk/fy;

    .line 50
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/go;->h:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/fz;->a(Ljava/lang/String;Lcom/flurry/sdk/fy;)V

    .line 52
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/flurry/sdk/go;->f:J

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/go;->e:I

    .line 56
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/go$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/go$3;-><init>(Lcom/flurry/sdk/go;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method private declared-synchronized a()V
    .locals 3

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/go;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/flurry/sdk/go;->e:I

    if-ltz v0, :cond_1

    .line 132
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/go;->a:Ljava/lang/String;

    const-string v2, "Transmit is in progress"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 137
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/flurry/sdk/go;->g()V

    .line 138
    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/flurry/sdk/go;->f:J

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/go;->e:I

    goto :goto_0

    .line 145
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/go;->e:I

    .line 146
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/go$8;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/go$8;-><init>(Lcom/flurry/sdk/go;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/go;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/flurry/sdk/go;->a()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/go;)Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/go;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/flurry/sdk/go;->e()V

    return-void
.end method

.method private declared-synchronized e()V
    .locals 4

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hp;->b()V

    .line 157
    const/4 v1, 0x0

    .line 160
    invoke-static {}, Lcom/flurry/sdk/fj;->a()Lcom/flurry/sdk/fj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fj;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/go;->e:I

    iget-object v2, p0, Lcom/flurry/sdk/go;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 162
    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Ljava/util/List;

    iget v2, p0, Lcom/flurry/sdk/go;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/go;->e:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gn;

    .line 163
    invoke-virtual {v0}, Lcom/flurry/sdk/gn;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    :goto_0
    if-nez v0, :cond_3

    .line 174
    invoke-direct {p0}, Lcom/flurry/sdk/go;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_1
    monitor-exit p0

    return-void

    .line 169
    :cond_1
    const/4 v0, 0x3

    :try_start_1
    sget-object v2, Lcom/flurry/sdk/go;->a:Ljava/lang/String;

    const-string v3, "Network is not available, aborting transmission"

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/go;->a(Lcom/flurry/sdk/gn;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 6

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/go;->g()V

    .line 183
    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/go;->b(Ljava/util/List;)V

    .line 185
    iget-boolean v0, p0, Lcom/flurry/sdk/go;->d:Z

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/go;->a:Ljava/lang/String;

    const-string v2, "Reporter paused"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/flurry/sdk/go;->f:J

    .line 202
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/go;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 189
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/go;->a:Ljava/lang/String;

    const-string v2, "All reports sent successfully"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/flurry/sdk/go;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 195
    :cond_1
    :try_start_2
    iget-wide v0, p0, Lcom/flurry/sdk/go;->f:J

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/go;->f:J

    .line 197
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/go;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "One or more reports failed to send, backing off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/flurry/sdk/go;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/go;->g:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/flurry/sdk/go;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized g()V
    .locals 6

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 207
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gn;

    .line 210
    invoke-virtual {v0}, Lcom/flurry/sdk/gn;->e()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/flurry/sdk/gn;->f()I

    move-result v2

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/flurry/sdk/gn;->d()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 211
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 214
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 217
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/go;->h:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/fz;->b(Ljava/lang/String;Lcom/flurry/sdk/fy;)V

    .line 218
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/flurry/sdk/gn;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TReportInfo;>;)V"
        }
    .end annotation
.end method

.method public b()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/go;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->c(Ljava/lang/Runnable;)V

    .line 67
    invoke-direct {p0}, Lcom/flurry/sdk/go;->h()V

    .line 68
    return-void
.end method

.method public declared-synchronized b(Lcom/flurry/sdk/gn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    .prologue
    .line 87
    monitor-enter p0

    if-nez p1, :cond_0

    .line 100
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/go$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/go$5;-><init>(Lcom/flurry/sdk/go;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TReportInfo;>;)V"
        }
    .end annotation
.end method

.method public c()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/go;->d:Z

    .line 72
    return-void
.end method

.method protected declared-synchronized c(Lcom/flurry/sdk/gn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    .prologue
    .line 103
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/gn;->a(Z)V

    .line 105
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/go$6;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/go$6;-><init>(Lcom/flurry/sdk/go;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/go;->d:Z

    .line 78
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/go$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/go$4;-><init>(Lcom/flurry/sdk/go;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method protected declared-synchronized d(Lcom/flurry/sdk/gn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/sdk/gn;->i()V

    .line 116
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/go$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/go$7;-><init>(Lcom/flurry/sdk/go;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
