.class public Lcom/flurry/sdk/t;
.super Lcom/flurry/sdk/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/t$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/sdk/t$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/flurry/sdk/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/t;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/flurry/sdk/o;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t$a;

    iput-object v0, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/t;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/flurry/sdk/t;->v()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/t;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/flurry/sdk/t;->w()V

    return-void
.end method

.method private v()V
    .locals 4

    .prologue
    .line 123
    invoke-static {}, Lcom/flurry/sdk/hp;->b()V

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/t$a;->b:Lcom/flurry/sdk/t$a;

    iget-object v1, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/t$a;->d:Lcom/flurry/sdk/t$a;

    iget-object v1, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    monitor-exit p0

    .line 196
    :goto_0
    return-void

    .line 129
    :cond_0
    sget-object v0, Lcom/flurry/sdk/t$a;->c:Lcom/flurry/sdk/t$a;

    iput-object v0, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/t;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "render interstitial ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/flurry/sdk/t;->e()Landroid/content/Context;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/flurry/sdk/fj;->a()Lcom/flurry/sdk/fj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/fj;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/t;->a:Ljava/lang/String;

    const-string v2, "There is no network connectivity (ad will not display)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/flurry/sdk/av;->c:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 144
    :cond_1
    if-nez v0, :cond_2

    .line 145
    sget-object v0, Lcom/flurry/sdk/av;->e:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/sdk/t;->n()Lcom/flurry/sdk/ap;

    move-result-object v0

    .line 151
    if-nez v0, :cond_3

    .line 152
    sget-object v0, Lcom/flurry/sdk/av;->d:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v0

    .line 158
    if-nez v0, :cond_4

    .line 159
    sget-object v0, Lcom/flurry/sdk/av;->f:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto :goto_0

    .line 164
    :cond_4
    iget v1, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->combinable:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 165
    sget-object v0, Lcom/flurry/sdk/av;->f:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto :goto_0

    .line 170
    :cond_5
    sget-object v1, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->INTERSTITIAL:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    iget-object v2, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adViewType:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    invoke-virtual {v1, v2}, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 171
    sget-object v0, Lcom/flurry/sdk/av;->w:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto :goto_0

    .line 183
    :cond_6
    invoke-static {}, Lcom/flurry/sdk/cr;->b()Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    move-result-object v1

    iget-object v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->screenOrientation:Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 184
    sget-object v0, Lcom/flurry/sdk/av;->t:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto/16 :goto_0

    .line 188
    :cond_7
    invoke-virtual {p0}, Lcom/flurry/sdk/t;->o()V

    .line 190
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/t$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/t$3;-><init>(Lcom/flurry/sdk/t;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lcom/flurry/sdk/hp;->a()V

    .line 203
    invoke-virtual {p0}, Lcom/flurry/sdk/t;->p()V

    .line 205
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->q()Lcom/flurry/sdk/eo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/t;->e()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/flurry/sdk/eo;->a(Landroid/content/Context;Lcom/flurry/sdk/r;)Lcom/flurry/sdk/en;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/flurry/sdk/en;->a()V

    .line 210
    :cond_0
    invoke-static {p0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;)V

    .line 211
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/flurry/sdk/o;->a()V

    .line 44
    return-void
.end method

.method protected a(Lcom/flurry/sdk/d;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/flurry/sdk/o;->a(Lcom/flurry/sdk/d;)V

    .line 62
    sget-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t$a;

    iget-object v1, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    sget-object v0, Lcom/flurry/sdk/t$a;->b:Lcom/flurry/sdk/t$a;

    iput-object v0, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    .line 70
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    sget-object v0, Lcom/flurry/sdk/t$a;->d:Lcom/flurry/sdk/t$a;

    iget-object v1, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/t$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/t$1;-><init>(Lcom/flurry/sdk/t;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 82
    :cond_1
    return-void

    .line 67
    :cond_2
    :try_start_3
    sget-object v0, Lcom/flurry/sdk/t$a;->c:Lcom/flurry/sdk/t$a;

    iget-object v1, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/flurry/sdk/t$a;->d:Lcom/flurry/sdk/t$a;

    iput-object v0, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 71
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public i()Lcom/flurry/sdk/ci;
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/t;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/cr;->b()Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/t;->l()Lcom/flurry/sdk/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y$a;->a()Lcom/flurry/sdk/ci;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/flurry/sdk/x;
    .locals 4

    .prologue
    .line 55
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/t;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/cr;->b()Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/t;->l()Lcom/flurry/sdk/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y$a;->b()Lcom/flurry/sdk/x;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/t$a;->b:Lcom/flurry/sdk/t$a;

    iget-object v1, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 88
    monitor-exit p0

    .line 90
    return v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public t()V
    .locals 3

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t$a;

    iget-object v1, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/flurry/sdk/t;->h()Lcom/flurry/sdk/ch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/t;->i()Lcom/flurry/sdk/ci;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/t;->j()Lcom/flurry/sdk/x;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ci;Lcom/flurry/sdk/x;)V

    .line 102
    :cond_0
    :goto_0
    monitor-exit p0

    .line 103
    return-void

    .line 97
    :cond_1
    sget-object v0, Lcom/flurry/sdk/t$a;->b:Lcom/flurry/sdk/t$a;

    iget-object v1, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-static {p0}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;)V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 99
    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/t$a;->c:Lcom/flurry/sdk/t$a;

    iget-object v1, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/t$a;->d:Lcom/flurry/sdk/t$a;

    iget-object v1, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :cond_3
    invoke-static {p0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public u()V
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t$a;

    iget-object v1, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lcom/flurry/sdk/av;->s:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    .line 119
    :cond_0
    :goto_0
    monitor-exit p0

    .line 120
    return-void

    .line 109
    :cond_1
    sget-object v0, Lcom/flurry/sdk/t$a;->b:Lcom/flurry/sdk/t$a;

    iget-object v1, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/t$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/t$2;-><init>(Lcom/flurry/sdk/t;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 116
    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/t$a;->c:Lcom/flurry/sdk/t$a;

    iget-object v1, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/t$a;->d:Lcom/flurry/sdk/t$a;

    iget-object v1, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/sdk/t$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :cond_3
    invoke-static {p0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
