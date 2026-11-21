.class public Lcom/flurry/sdk/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/r;
.implements Lcom/flurry/sdk/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/u$8;,
        Lcom/flurry/sdk/u$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private f:Lcom/flurry/sdk/u$a;

.field private final g:Lcom/flurry/sdk/ch;

.field private h:Lcom/flurry/sdk/ap;

.field private i:Lcom/flurry/sdk/ap;

.field private j:J

.field private final k:Lcom/flurry/sdk/fy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fy",
            "<",
            "Lcom/flurry/sdk/hj;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/flurry/sdk/fy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fy",
            "<",
            "Lcom/flurry/sdk/d;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:J

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/flurry/sdk/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/flurry/sdk/u$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/u$1;-><init>(Lcom/flurry/sdk/u;)V

    iput-object v0, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/fy;

    .line 75
    new-instance v0, Lcom/flurry/sdk/u$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/u$2;-><init>(Lcom/flurry/sdk/u;)V

    iput-object v0, p0, Lcom/flurry/sdk/u;->l:Lcom/flurry/sdk/fy;

    .line 155
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 156
    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A session must be started before ad objects may be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/cr;->a()I

    move-result v1

    iput v1, p0, Lcom/flurry/sdk/u;->b:I

    .line 161
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flurry/sdk/u;->c:Ljava/lang/ref/WeakReference;

    .line 162
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flurry/sdk/u;->d:Ljava/lang/ref/WeakReference;

    .line 163
    iput-object p3, p0, Lcom/flurry/sdk/u;->e:Ljava/lang/String;

    .line 165
    sget-object v1, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u$a;

    iput-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    .line 167
    new-instance v1, Lcom/flurry/sdk/ch;

    invoke-direct {v1, p3}, Lcom/flurry/sdk/ch;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/sdk/u;->g:Lcom/flurry/sdk/ch;

    .line 169
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flurry/sdk/u;->m:Ljava/lang/ref/WeakReference;

    .line 171
    invoke-virtual {v0}, Lcom/flurry/sdk/i;->e()Lcom/flurry/sdk/v;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p0}, Lcom/flurry/sdk/v;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/u;)V

    .line 173
    invoke-direct {p0}, Lcom/flurry/sdk/u;->u()V

    .line 174
    invoke-direct {p0}, Lcom/flurry/sdk/u;->w()V

    .line 175
    return-void
.end method

.method private A()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 498
    invoke-static {}, Lcom/flurry/sdk/hp;->b()V

    .line 500
    monitor-enter p0

    .line 501
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$a;->b:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/u$a;->d:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    monitor-exit p0

    .line 597
    :goto_0
    return-void

    .line 506
    :cond_0
    sget-object v0, Lcom/flurry/sdk/u$a;->b:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/u;->h:Lcom/flurry/sdk/ap;

    if-eqz v0, :cond_2

    .line 507
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/j;->b()Lcom/flurry/android/FlurryAdListener;

    move-result-object v2

    .line 508
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing shouldDisplayAd, listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    if-eqz v2, :cond_2

    .line 510
    const/4 v1, 0x0

    .line 512
    :try_start_1
    iget-object v3, p0, Lcom/flurry/sdk/u;->e:Ljava/lang/String;

    sget-object v0, Lcom/flurry/sdk/ax;->a:Lcom/flurry/sdk/ax;

    iget-object v4, p0, Lcom/flurry/sdk/u;->h:Lcom/flurry/sdk/ap;

    invoke-virtual {v4}, Lcom/flurry/sdk/ap;->d()Lcom/flurry/sdk/ax;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/flurry/sdk/ax;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/android/FlurryAdType;->WEB_BANNER:Lcom/flurry/android/FlurryAdType;

    :goto_1
    invoke-interface {v2, v3, v0}, Lcom/flurry/android/FlurryAdListener;->shouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 517
    :goto_2
    if-nez v0, :cond_2

    .line 518
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 512
    :cond_1
    :try_start_3
    sget-object v0, Lcom/flurry/android/FlurryAdType;->WEB_TAKEOVER:Lcom/flurry/android/FlurryAdType;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 513
    :catch_0
    move-exception v0

    .line 514
    const/4 v2, 0x6

    :try_start_4
    sget-object v3, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    const-string v4, "AdListener.shouldDisplayAd"

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_2

    .line 523
    :cond_2
    sget-object v0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$a;

    iput-object v0, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    .line 524
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 526
    sget-object v0, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "render banner ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->e()Landroid/content/Context;

    move-result-object v0

    .line 529
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->f()Landroid/view/ViewGroup;

    move-result-object v1

    .line 532
    invoke-static {}, Lcom/flurry/sdk/fj;->a()Lcom/flurry/sdk/fj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/fj;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 533
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    const-string v2, "There is no network connectivity (ad will not display)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 534
    sget-object v0, Lcom/flurry/sdk/av;->c:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto/16 :goto_0

    .line 539
    :cond_3
    if-nez v0, :cond_4

    .line 540
    sget-object v0, Lcom/flurry/sdk/av;->e:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto/16 :goto_0

    .line 546
    :cond_4
    if-nez v1, :cond_5

    .line 547
    sget-object v0, Lcom/flurry/sdk/av;->u:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto/16 :goto_0

    .line 552
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/u;->h:Lcom/flurry/sdk/ap;

    .line 553
    if-nez v0, :cond_6

    .line 554
    sget-object v0, Lcom/flurry/sdk/av;->d:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto/16 :goto_0

    .line 559
    :cond_6
    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    .line 560
    if-nez v1, :cond_7

    .line 561
    sget-object v0, Lcom/flurry/sdk/av;->f:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto/16 :goto_0

    .line 566
    :cond_7
    iget v2, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->combinable:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 567
    sget-object v0, Lcom/flurry/sdk/av;->f:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto/16 :goto_0

    .line 572
    :cond_8
    sget-object v2, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->LEGACY:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    iget-object v3, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adViewType:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 573
    sget-object v0, Lcom/flurry/sdk/av;->w:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto/16 :goto_0

    .line 578
    :cond_9
    sget-object v2, Lcom/flurry/sdk/ax;->a:Lcom/flurry/sdk/ax;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->d()Lcom/flurry/sdk/ax;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/ax;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/flurry/sdk/ax;->b:Lcom/flurry/sdk/ax;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->d()Lcom/flurry/sdk/ax;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ax;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 579
    sget-object v0, Lcom/flurry/sdk/av;->w:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto/16 :goto_0

    .line 584
    :cond_a
    invoke-static {}, Lcom/flurry/sdk/cr;->b()Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    move-result-object v0

    iget-object v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->screenOrientation:Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 585
    sget-object v0, Lcom/flurry/sdk/av;->t:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto/16 :goto_0

    .line 589
    :cond_b
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->t()V

    .line 591
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$7;-><init>(Lcom/flurry/sdk/u;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private B()V
    .locals 2

    .prologue
    .line 600
    invoke-static {}, Lcom/flurry/sdk/hp;->a()V

    .line 603
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/u;->a(J)V

    .line 607
    invoke-direct {p0}, Lcom/flurry/sdk/u;->z()V

    .line 610
    sget-object v0, Lcom/flurry/sdk/ax;->a:Lcom/flurry/sdk/ax;

    iget-object v1, p0, Lcom/flurry/sdk/u;->i:Lcom/flurry/sdk/ap;

    invoke-virtual {v1}, Lcom/flurry/sdk/ap;->d()Lcom/flurry/sdk/ax;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ax;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/flurry/sdk/eg;->a(Landroid/content/Context;Lcom/flurry/sdk/s;)V

    .line 619
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;)V

    .line 620
    return-void

    .line 613
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->q()Lcom/flurry/sdk/eo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->e()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/flurry/sdk/eo;->a(Landroid/content/Context;Lcom/flurry/sdk/r;)Lcom/flurry/sdk/en;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Lcom/flurry/sdk/en;->a()V

    goto :goto_0
.end method

.method private C()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 623
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    sget-object v1, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device is locked: banner will NOT rotate for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 633
    :goto_0
    return v0

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/u;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 629
    sget-object v1, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No banner holder: banner will NOT rotate for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/u;J)J
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/flurry/sdk/u;->j:J

    return-wide p1
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 637
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduled banner rotation for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 638
    iput-wide p1, p0, Lcom/flurry/sdk/u;->o:J

    .line 639
    iput-wide p1, p0, Lcom/flurry/sdk/u;->p:J

    .line 640
    return-void
.end method

.method private a(Lcom/flurry/sdk/d;)V
    .locals 5

    .prologue
    .line 452
    sget-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->j()Lcom/flurry/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->b()I

    move-result v0

    .line 455
    if-nez v0, :cond_1

    .line 456
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting ad request from EnsureCacheNotEmpty size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->i()Lcom/flurry/sdk/ci;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->j()Lcom/flurry/sdk/x;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/x;Lcom/flurry/sdk/ap;)V

    .line 461
    :cond_1
    sget-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 462
    monitor-enter p0

    .line 463
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 464
    sget-object v0, Lcom/flurry/sdk/u$a;->b:Lcom/flurry/sdk/u$a;

    iput-object v0, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    .line 468
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    iget-boolean v0, p0, Lcom/flurry/sdk/u;->n:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/u$a;->d:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 471
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$6;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$6;-><init>(Lcom/flurry/sdk/u;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 479
    :cond_4
    return-void

    .line 465
    :cond_5
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    sget-object v0, Lcom/flurry/sdk/u$a;->d:Lcom/flurry/sdk/u$a;

    iput-object v0, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    goto :goto_0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/u;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/flurry/sdk/u;->y()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/u;Lcom/flurry/sdk/d;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/d;)V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/u;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/flurry/sdk/u;->A()V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/u;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/flurry/sdk/u;->B()V

    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/u;->j:J

    .line 418
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hk;->a(Lcom/flurry/sdk/fy;)V

    .line 419
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 422
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/u;->k:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hk;->b(Lcom/flurry/sdk/fy;)V

    .line 423
    return-void
.end method

.method private w()V
    .locals 3

    .prologue
    .line 426
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/u;->l:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/fz;->a(Ljava/lang/String;Lcom/flurry/sdk/fy;)V

    .line 427
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 430
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/u;->l:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fz;->a(Lcom/flurry/sdk/fy;)V

    .line 431
    return-void
.end method

.method private y()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 438
    iget-wide v0, p0, Lcom/flurry/sdk/u;->o:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    .line 439
    iget-wide v0, p0, Lcom/flurry/sdk/u;->p:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/flurry/sdk/u;->j:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/u;->p:J

    .line 440
    iget-wide v0, p0, Lcom/flurry/sdk/u;->p:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/flurry/sdk/u;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rotating banner for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->h()Lcom/flurry/sdk/ch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->i()Lcom/flurry/sdk/ci;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->j()Lcom/flurry/sdk/x;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ci;Lcom/flurry/sdk/x;)V

    .line 446
    :cond_0
    iget-wide v0, p0, Lcom/flurry/sdk/u;->o:J

    iput-wide v0, p0, Lcom/flurry/sdk/u;->p:J

    .line 449
    :cond_1
    return-void
.end method

.method private z()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/flurry/sdk/u;->h:Lcom/flurry/sdk/ap;

    iput-object v0, p0, Lcom/flurry/sdk/u;->i:Lcom/flurry/sdk/ap;

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/u;->h:Lcom/flurry/sdk/ap;

    .line 495
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/flurry/sdk/u;->v()V

    .line 192
    invoke-direct {p0}, Lcom/flurry/sdk/u;->x()V

    .line 194
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->e()Lcom/flurry/sdk/v;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/v;->a(Ljava/lang/String;Lcom/flurry/sdk/u;)Z

    .line 196
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p0}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/r;)V

    .line 201
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$3;-><init>(Lcom/flurry/sdk/u;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Runnable;)V

    .line 208
    iget-object v0, p0, Lcom/flurry/sdk/u;->g:Lcom/flurry/sdk/ch;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/flurry/sdk/u;->g:Lcom/flurry/sdk/ch;

    invoke-virtual {v0}, Lcom/flurry/sdk/ch;->a()V

    .line 220
    :cond_1
    return-void
.end method

.method public a(Landroid/widget/RelativeLayout;)V
    .locals 1

    .prologue
    .line 320
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/u;->m:Ljava/lang/ref/WeakReference;

    .line 321
    return-void
.end method

.method public a(Lcom/flurry/sdk/ap;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/flurry/sdk/u;->h:Lcom/flurry/sdk/ap;

    .line 280
    return-void
.end method

.method public a(Lcom/flurry/sdk/ap;J)V
    .locals 4

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/flurry/sdk/ap;->d()Lcom/flurry/sdk/ax;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/ax;->a:Lcom/flurry/sdk/ax;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ax;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 296
    if-eqz v0, :cond_2

    .line 297
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->s()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->s()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 298
    :goto_0
    if-eqz v0, :cond_1

    .line 299
    invoke-direct {p0, p2, p3}, Lcom/flurry/sdk/u;->a(J)V

    .line 306
    :goto_1
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->h()Lcom/flurry/sdk/ch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->i()Lcom/flurry/sdk/ci;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->j()Lcom/flurry/sdk/x;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ci;Lcom/flurry/sdk/x;)V

    goto :goto_1

    .line 304
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->h()Lcom/flurry/sdk/ch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->i()Lcom/flurry/sdk/ci;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->j()Lcom/flurry/sdk/x;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ci;Lcom/flurry/sdk/x;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->h()Lcom/flurry/sdk/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ch;->b()V

    .line 289
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->j()Lcom/flurry/sdk/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/x;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/flurry/sdk/u;->v()V

    .line 225
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/flurry/sdk/u;->u()V

    .line 231
    iget-wide v0, p0, Lcom/flurry/sdk/u;->o:J

    iput-wide v0, p0, Lcom/flurry/sdk/u;->p:J

    .line 232
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/flurry/sdk/u;->b:I

    return v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/flurry/sdk/u;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public f()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/flurry/sdk/u;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 181
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->a()V

    .line 182
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/flurry/sdk/u;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/flurry/sdk/ch;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/flurry/sdk/u;->g:Lcom/flurry/sdk/ch;

    return-object v0
.end method

.method public i()Lcom/flurry/sdk/ci;
    .locals 4

    .prologue
    .line 257
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/cr;->b()Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->l()Lcom/flurry/sdk/e;

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
    .line 263
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/cr;->b()Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->l()Lcom/flurry/sdk/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y$a;->b()Lcom/flurry/sdk/x;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/flurry/sdk/ap;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/flurry/sdk/u;->i:Lcom/flurry/sdk/ap;

    return-object v0
.end method

.method public l()Lcom/flurry/sdk/e;
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/j;->d()Lcom/flurry/sdk/e;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/flurry/sdk/u;->g:Lcom/flurry/sdk/ch;

    invoke-virtual {v0}, Lcom/flurry/sdk/ch;->c()V

    .line 311
    return-void
.end method

.method public n()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v0, p0, Lcom/flurry/sdk/u;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 327
    if-eqz v0, :cond_2

    .line 329
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 330
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 331
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 333
    instance-of v2, v1, Lcom/flurry/sdk/ec;

    if-eqz v2, :cond_0

    .line 335
    check-cast v1, Lcom/flurry/sdk/ec;

    invoke-virtual {v1}, Lcom/flurry/sdk/ec;->onActivityDestroy()V

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->f()Landroid/view/ViewGroup;

    move-result-object v1

    .line 340
    if-eqz v1, :cond_2

    .line 341
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 342
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/u;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 347
    return-void
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 351
    monitor-enter p0

    .line 352
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$a;->b:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 353
    monitor-exit p0

    .line 355
    return v0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public p()V
    .locals 3

    .prologue
    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/u;->n:Z

    .line 360
    monitor-enter p0

    .line 361
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->h()Lcom/flurry/sdk/ch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->i()Lcom/flurry/sdk/ci;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->j()Lcom/flurry/sdk/x;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ci;Lcom/flurry/sdk/x;)V

    .line 371
    :cond_0
    :goto_0
    monitor-exit p0

    .line 372
    return-void

    .line 363
    :cond_1
    sget-object v0, Lcom/flurry/sdk/u$a;->b:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    invoke-static {p0}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;)V

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 365
    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/u$a;->d:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    :cond_3
    sget-object v0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u$a;

    iput-object v0, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    .line 369
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->h()Lcom/flurry/sdk/ch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->i()Lcom/flurry/sdk/ci;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->j()Lcom/flurry/sdk/x;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ci;Lcom/flurry/sdk/x;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public q()V
    .locals 2

    .prologue
    .line 375
    monitor-enter p0

    .line 376
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/u$a;->d:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    :cond_0
    sget-object v0, Lcom/flurry/sdk/av;->s:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    .line 388
    :cond_1
    :goto_0
    monitor-exit p0

    .line 389
    return-void

    .line 378
    :cond_2
    sget-object v0, Lcom/flurry/sdk/u$a;->b:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$4;-><init>(Lcom/flurry/sdk/u;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 385
    :cond_3
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    invoke-static {p0}, Lcom/flurry/sdk/cq;->b(Lcom/flurry/sdk/r;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public r()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 392
    iput-boolean v1, p0, Lcom/flurry/sdk/u;->n:Z

    .line 393
    const/4 v0, 0x0

    .line 394
    monitor-enter p0

    .line 395
    :try_start_0
    sget-object v2, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u$a;

    iget-object v3, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->h()Lcom/flurry/sdk/ch;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->i()Lcom/flurry/sdk/ci;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->j()Lcom/flurry/sdk/x;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ci;Lcom/flurry/sdk/x;)V

    .line 411
    :cond_0
    :goto_0
    monitor-exit p0

    .line 413
    return v0

    .line 397
    :cond_1
    sget-object v2, Lcom/flurry/sdk/u$a;->b:Lcom/flurry/sdk/u$a;

    iget-object v3, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/u$5;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/u$5;-><init>(Lcom/flurry/sdk/u;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    move v0, v1

    goto :goto_0

    .line 405
    :cond_2
    sget-object v1, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$a;

    iget-object v2, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/flurry/sdk/u$a;->d:Lcom/flurry/sdk/u$a;

    iget-object v2, p0, Lcom/flurry/sdk/u;->f:Lcom/flurry/sdk/u$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/u$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/u;->h()Lcom/flurry/sdk/ch;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->i()Lcom/flurry/sdk/ci;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/u;->j()Lcom/flurry/sdk/x;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ci;Lcom/flurry/sdk/x;)V

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public s()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/flurry/sdk/u;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected t()V
    .locals 3

    .prologue
    .line 482
    invoke-static {}, Lcom/flurry/sdk/hp;->b()V

    .line 484
    iget-object v0, p0, Lcom/flurry/sdk/u;->h:Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/u;->h:Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    const-string v2, "Precaching optional for ad, copying assets before display"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/u;->h:Lcom/flurry/sdk/ap;

    invoke-virtual {v0, p0, v1}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;)Z

    .line 490
    :cond_0
    return-void
.end method
