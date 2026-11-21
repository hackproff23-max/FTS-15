.class public Lcom/flurry/sdk/q;
.super Lcom/flurry/sdk/o;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/q$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/sdk/q$a;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:J

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/o;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/flurry/sdk/q$a;->a:Lcom/flurry/sdk/q$a;

    iput-object v0, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/q;->c:Ljava/lang/ref/WeakReference;

    .line 53
    return-void
.end method

.method private A()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 329
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    sget-object v1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device is locked: banner will NOT rotate for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 339
    :goto_0
    return v0

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/q;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 335
    sget-object v1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No banner holder: banner will NOT rotate for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 343
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduled banner rotation for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 344
    iput-wide p1, p0, Lcom/flurry/sdk/q;->e:J

    .line 345
    iput-wide p1, p0, Lcom/flurry/sdk/q;->f:J

    .line 346
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/q;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/flurry/sdk/q;->y()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/q;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/flurry/sdk/q;->z()V

    return-void
.end method

.method private y()V
    .locals 4

    .prologue
    .line 238
    invoke-static {}, Lcom/flurry/sdk/hp;->b()V

    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/q$a;->b:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/q$a;->d:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    monitor-exit p0

    .line 311
    :goto_0
    return-void

    .line 244
    :cond_0
    sget-object v0, Lcom/flurry/sdk/q$a;->c:Lcom/flurry/sdk/q$a;

    iput-object v0, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    .line 245
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "render banner ("

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

    .line 249
    invoke-virtual {p0}, Lcom/flurry/sdk/q;->e()Landroid/content/Context;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/flurry/sdk/q;->f()Landroid/view/ViewGroup;

    move-result-object v1

    .line 253
    invoke-static {}, Lcom/flurry/sdk/fj;->a()Lcom/flurry/sdk/fj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/fj;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 254
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v2, "There is no network connectivity (ad will not display)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/flurry/sdk/av;->c:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 260
    :cond_1
    if-nez v0, :cond_2

    .line 261
    sget-object v0, Lcom/flurry/sdk/av;->e:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto :goto_0

    .line 266
    :cond_2
    if-nez v1, :cond_3

    .line 267
    sget-object v0, Lcom/flurry/sdk/av;->u:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/q;->n()Lcom/flurry/sdk/ap;

    move-result-object v0

    .line 273
    if-nez v0, :cond_4

    .line 274
    sget-object v0, Lcom/flurry/sdk/av;->d:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto :goto_0

    .line 279
    :cond_4
    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    .line 280
    if-nez v1, :cond_5

    .line 281
    sget-object v0, Lcom/flurry/sdk/av;->f:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto :goto_0

    .line 286
    :cond_5
    sget-object v2, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->BANNER:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    iget-object v3, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adViewType:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 287
    sget-object v0, Lcom/flurry/sdk/av;->w:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto :goto_0

    .line 292
    :cond_6
    sget-object v2, Lcom/flurry/sdk/ax;->a:Lcom/flurry/sdk/ax;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->d()Lcom/flurry/sdk/ax;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ax;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 293
    sget-object v0, Lcom/flurry/sdk/av;->w:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto/16 :goto_0

    .line 298
    :cond_7
    invoke-static {}, Lcom/flurry/sdk/cr;->b()Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    move-result-object v0

    iget-object v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->screenOrientation:Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 299
    sget-object v0, Lcom/flurry/sdk/av;->t:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto/16 :goto_0

    .line 303
    :cond_8
    invoke-virtual {p0}, Lcom/flurry/sdk/q;->o()V

    .line 305
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/q$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/q$5;-><init>(Lcom/flurry/sdk/q;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private z()V
    .locals 2

    .prologue
    .line 314
    invoke-static {}, Lcom/flurry/sdk/hp;->a()V

    .line 317
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/q;->a(J)V

    .line 321
    invoke-virtual {p0}, Lcom/flurry/sdk/q;->p()V

    .line 323
    invoke-virtual {p0}, Lcom/flurry/sdk/q;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/flurry/sdk/eg;->a(Landroid/content/Context;Lcom/flurry/sdk/s;)V

    .line 325
    invoke-static {p0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;)V

    .line 326
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/q$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/q$1;-><init>(Lcom/flurry/sdk/q;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Runnable;)V

    .line 64
    invoke-super {p0}, Lcom/flurry/sdk/o;->a()V

    .line 65
    return-void
.end method

.method public a(Landroid/widget/RelativeLayout;)V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/q;->c:Ljava/lang/ref/WeakReference;

    .line 150
    return-void
.end method

.method public a(Lcom/flurry/sdk/ap;J)V
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/flurry/sdk/q;->s()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->s()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 94
    :goto_0
    if-eqz v0, :cond_1

    .line 95
    invoke-direct {p0, p2, p3}, Lcom/flurry/sdk/q;->a(J)V

    .line 99
    :goto_1
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/q;->h()Lcom/flurry/sdk/ch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->i()Lcom/flurry/sdk/ci;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->j()Lcom/flurry/sdk/x;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ci;Lcom/flurry/sdk/x;)V

    goto :goto_1
.end method

.method protected a(Lcom/flurry/sdk/d;)V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/flurry/sdk/o;->a(Lcom/flurry/sdk/d;)V

    .line 122
    sget-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/q$a;->a:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    sget-object v0, Lcom/flurry/sdk/q$a;->b:Lcom/flurry/sdk/q$a;

    iput-object v0, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    .line 129
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-boolean v0, p0, Lcom/flurry/sdk/q;->d:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/q$a;->d:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/q$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/q$2;-><init>(Lcom/flurry/sdk/q;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 140
    :cond_2
    return-void

    .line 126
    :cond_3
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/q$a;->c:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/flurry/sdk/q$a;->d:Lcom/flurry/sdk/q$a;

    iput-object v0, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/flurry/sdk/o;->b()V

    .line 70
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/flurry/sdk/o;->c()V

    .line 76
    iget-wide v0, p0, Lcom/flurry/sdk/q;->e:J

    iput-wide v0, p0, Lcom/flurry/sdk/q;->f:J

    .line 77
    return-void
.end method

.method public i()Lcom/flurry/sdk/ci;
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/cr;->b()Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->l()Lcom/flurry/sdk/e;

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
    .line 88
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/cr;->b()Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->l()Lcom/flurry/sdk/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y$a;->b()Lcom/flurry/sdk/x;

    move-result-object v0

    return-object v0
.end method

.method protected r()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 103
    invoke-super {p0}, Lcom/flurry/sdk/o;->r()V

    .line 105
    iget-wide v0, p0, Lcom/flurry/sdk/q;->e:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    .line 106
    iget-wide v0, p0, Lcom/flurry/sdk/q;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->q()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/q;->f:J

    .line 107
    iget-wide v0, p0, Lcom/flurry/sdk/q;->f:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/flurry/sdk/q;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rotating banner for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/flurry/sdk/q;->h()Lcom/flurry/sdk/ch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->i()Lcom/flurry/sdk/ci;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->j()Lcom/flurry/sdk/x;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ci;Lcom/flurry/sdk/x;)V

    .line 113
    :cond_0
    iget-wide v0, p0, Lcom/flurry/sdk/q;->e:J

    iput-wide v0, p0, Lcom/flurry/sdk/q;->f:J

    .line 116
    :cond_1
    return-void
.end method

.method public s()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/flurry/sdk/q;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public t()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-static {}, Lcom/flurry/sdk/hp;->a()V

    .line 157
    iget-object v0, p0, Lcom/flurry/sdk/q;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 158
    if-eqz v0, :cond_2

    .line 160
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 161
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 164
    instance-of v2, v1, Lcom/flurry/sdk/ec;

    if-eqz v2, :cond_0

    .line 166
    check-cast v1, Lcom/flurry/sdk/ec;

    invoke-virtual {v1}, Lcom/flurry/sdk/ec;->onActivityDestroy()V

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/q;->f()Landroid/view/ViewGroup;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 173
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/q;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 178
    return-void
.end method

.method public u()Z
    .locals 2

    .prologue
    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/q$a;->b:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 184
    monitor-exit p0

    .line 186
    return v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public v()V
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/q;->d:Z

    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/q$a;->a:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/flurry/sdk/q;->h()Lcom/flurry/sdk/ch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->i()Lcom/flurry/sdk/ci;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->j()Lcom/flurry/sdk/x;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ci;Lcom/flurry/sdk/x;)V

    .line 199
    :cond_0
    :goto_0
    monitor-exit p0

    .line 200
    return-void

    .line 194
    :cond_1
    sget-object v0, Lcom/flurry/sdk/q$a;->b:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-static {p0}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;)V

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 196
    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/q$a;->c:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/q$a;->d:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    :cond_3
    invoke-static {p0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public w()V
    .locals 2

    .prologue
    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/q$a;->a:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    sget-object v0, Lcom/flurry/sdk/av;->s:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    .line 216
    :cond_0
    :goto_0
    monitor-exit p0

    .line 217
    return-void

    .line 206
    :cond_1
    sget-object v0, Lcom/flurry/sdk/q$a;->b:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/q$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/q$3;-><init>(Lcom/flurry/sdk/q;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 213
    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/q$a;->c:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/q$a;->d:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :cond_3
    invoke-static {p0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public x()V
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/q;->d:Z

    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/q$a;->a:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/flurry/sdk/q;->h()Lcom/flurry/sdk/ch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->i()Lcom/flurry/sdk/ci;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/q;->j()Lcom/flurry/sdk/x;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ci;Lcom/flurry/sdk/x;)V

    .line 234
    :cond_0
    :goto_0
    monitor-exit p0

    .line 235
    return-void

    .line 224
    :cond_1
    sget-object v0, Lcom/flurry/sdk/q$a;->b:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/q$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/q$4;-><init>(Lcom/flurry/sdk/q;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 231
    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/q$a;->c:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/q$a;->d:Lcom/flurry/sdk/q$a;

    iget-object v1, p0, Lcom/flurry/sdk/q;->b:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    :cond_3
    invoke-static {p0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
