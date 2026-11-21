.class public Lcom/flurry/sdk/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ch$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/flurry/sdk/ci;

.field private final d:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/flurry/sdk/ap;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/flurry/sdk/ap;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/flurry/sdk/ch$a;

.field private g:Lcom/flurry/sdk/r;

.field private h:Lcom/flurry/sdk/ci;

.field private i:Lcom/flurry/sdk/x;

.field private j:Lcom/flurry/sdk/ap;

.field private k:Lcom/flurry/sdk/ap;

.field private l:I

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private final r:Lcom/flurry/sdk/fy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fy",
            "<",
            "Lcom/flurry/sdk/hj;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/flurry/sdk/fy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fy",
            "<",
            "Lcom/flurry/sdk/ad;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/flurry/sdk/fy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fy",
            "<",
            "Lcom/flurry/sdk/cj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/flurry/sdk/ch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/flurry/sdk/ch$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ch$1;-><init>(Lcom/flurry/sdk/ch;)V

    iput-object v0, p0, Lcom/flurry/sdk/ch;->r:Lcom/flurry/sdk/fy;

    .line 124
    new-instance v0, Lcom/flurry/sdk/ch$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ch$4;-><init>(Lcom/flurry/sdk/ch;)V

    iput-object v0, p0, Lcom/flurry/sdk/ch;->s:Lcom/flurry/sdk/fy;

    .line 136
    new-instance v0, Lcom/flurry/sdk/ch$5;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ch$5;-><init>(Lcom/flurry/sdk/ch;)V

    iput-object v0, p0, Lcom/flurry/sdk/ch;->t:Lcom/flurry/sdk/fy;

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adSpace cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/ch;->b:Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/flurry/sdk/ci;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/ci;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/ch;->c:Lcom/flurry/sdk/ci;

    .line 166
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ch;->d:Ljava/util/TreeSet;

    .line 167
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ch;->e:Ljava/util/TreeSet;

    .line 169
    sget-object v0, Lcom/flurry/sdk/ch$a;->a:Lcom/flurry/sdk/ch$a;

    iput-object v0, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    .line 170
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V

    .line 171
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ch;)Lcom/flurry/sdk/ch$a;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/ap;ILcom/flurry/sdk/cy;)V
    .locals 7

    .prologue
    .line 631
    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Lcom/flurry/sdk/cy;->e()Ljava/lang/String;

    move-result-object v2

    .line 633
    new-instance v6, Lcom/flurry/sdk/gk;

    invoke-direct {v6}, Lcom/flurry/sdk/gk;-><init>()V

    .line 634
    invoke-virtual {v6, v2}, Lcom/flurry/sdk/gk;->a(Ljava/lang/String;)V

    .line 635
    const/16 v0, 0x4e20

    invoke-virtual {v6, v0}, Lcom/flurry/sdk/gk;->a(I)V

    .line 636
    new-instance v0, Lcom/flurry/sdk/gy;

    invoke-direct {v0}, Lcom/flurry/sdk/gy;-><init>()V

    invoke-virtual {v6, v0}, Lcom/flurry/sdk/gk;->b(Lcom/flurry/sdk/gx;)V

    .line 637
    new-instance v0, Lcom/flurry/sdk/ch$11;

    move-object v1, p0

    move-object v3, p3

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/ch$11;-><init>(Lcom/flurry/sdk/ch;Ljava/lang/String;Lcom/flurry/sdk/cy;ILcom/flurry/sdk/ap;)V

    invoke-virtual {v6, v0}, Lcom/flurry/sdk/gk;->a(Lcom/flurry/sdk/gk$a;)V

    .line 672
    invoke-static {}, Lcom/flurry/sdk/fn;->a()Lcom/flurry/sdk/fn;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/flurry/sdk/fn;->a(Ljava/lang/Object;Lcom/flurry/sdk/hr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    monitor-exit p0

    return-void

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/ap;Lcom/flurry/sdk/av;)V
    .locals 6

    .prologue
    .line 872
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 874
    const-string v0, "preRender"

    const-string v2, "true"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    const-string v0, "errorCode"

    if-nez p2, :cond_0

    sget-object p2, Lcom/flurry/sdk/av;->a:Lcom/flurry/sdk/av;

    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/av;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    sget-object v0, Lcom/flurry/sdk/aw;->g:Lcom/flurry/sdk/aw;

    iget-object v2, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    invoke-interface {v2}, Lcom/flurry/sdk/r;->e()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/co;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    monitor-exit p0

    return-void

    .line 872
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/ap;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 843
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pre-render: HTTP get for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 844
    new-instance v0, Lcom/flurry/sdk/gk;

    invoke-direct {v0}, Lcom/flurry/sdk/gk;-><init>()V

    .line 845
    invoke-virtual {v0, p2}, Lcom/flurry/sdk/gk;->a(Ljava/lang/String;)V

    .line 846
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->a(I)V

    .line 847
    new-instance v1, Lcom/flurry/sdk/gy;

    invoke-direct {v1}, Lcom/flurry/sdk/gy;-><init>()V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->b(Lcom/flurry/sdk/gx;)V

    .line 848
    new-instance v1, Lcom/flurry/sdk/ch$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/flurry/sdk/ch$3;-><init>(Lcom/flurry/sdk/ch;Ljava/lang/String;Lcom/flurry/sdk/ap;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->a(Lcom/flurry/sdk/gk$a;)V

    .line 868
    invoke-static {}, Lcom/flurry/sdk/fn;->a()Lcom/flurry/sdk/fn;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/fn;->a(Ljava/lang/Object;Lcom/flurry/sdk/hr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    monitor-exit p0

    return-void

    .line 843
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/ch$a;)V
    .locals 4

    .prologue
    .line 283
    monitor-enter p0

    if-nez p1, :cond_0

    .line 284
    :try_start_0
    sget-object p1, Lcom/flurry/sdk/ch$a;->a:Lcom/flurry/sdk/ch$a;

    .line 287
    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ch;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/flurry/sdk/ch$a;->a:Lcom/flurry/sdk/ch$a;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/ch$a;->a:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding fetch listeners for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ch;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ch;->r:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hk;->a(Lcom/flurry/sdk/fy;)V

    .line 293
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.AssetStatusEvent"

    iget-object v2, p0, Lcom/flurry/sdk/ch;->s:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/fz;->a(Ljava/lang/String;Lcom/flurry/sdk/fy;)V

    .line 294
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.AdResponseEvent"

    iget-object v2, p0, Lcom/flurry/sdk/ch;->t:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/fz;->a(Ljava/lang/String;Lcom/flurry/sdk/fy;)V

    .line 302
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 295
    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/ch$a;->a:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/ch$a;->a:Lcom/flurry/sdk/ch$a;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing fetch listeners for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ch;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ch;->r:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hk;->b(Lcom/flurry/sdk/fy;)V

    .line 298
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ch;->s:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fz;->a(Lcom/flurry/sdk/fy;)V

    .line 299
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ch;->t:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fz;->a(Lcom/flurry/sdk/fy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ch;Lcom/flurry/sdk/ap;Lcom/flurry/sdk/av;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ap;Lcom/flurry/sdk/av;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ch;Ljava/lang/String;Lcom/flurry/sdk/ah;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ch;->a(Ljava/lang/String;Lcom/flurry/sdk/ah;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ch;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ch;->a(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/flurry/sdk/ah;)V
    .locals 4

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ch$a;->e:Lcom/flurry/sdk/ch$a;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/ap;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected asset status change for asset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-object v0, Lcom/flurry/sdk/ah;->d:Lcom/flurry/sdk/ah;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ah;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/ah;->g:Lcom/flurry/sdk/ah;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ah;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ch$9;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ch$9;-><init>(Lcom/flurry/sdk/ch;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :cond_1
    monitor-exit p0

    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ch$a;->d:Lcom/flurry/sdk/ch$a;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 389
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 331
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 335
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ap;

    .line 336
    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    iget-boolean v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->renderTime:Z

    if-nez v1, :cond_3

    .line 338
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->n()V

    goto :goto_0

    .line 342
    :cond_3
    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adFrames:Ljava/util/List;

    .line 343
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    iget v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->binding:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 345
    :cond_4
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->n()V

    goto :goto_0

    .line 350
    :cond_5
    const/4 v1, 0x0

    .line 352
    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 353
    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->clientSideRtbPayload:Ljava/util/Map;

    .line 354
    if-eqz v2, :cond_6

    .line 355
    const-string v3, "GROUP_ID"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 356
    const-string v1, "GROUP_ID"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 361
    :cond_6
    if-nez v1, :cond_8

    .line 364
    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adFrames:Ljava/util/List;

    .line 365
    iget-object v2, p0, Lcom/flurry/sdk/ch;->k:Lcom/flurry/sdk/ap;

    invoke-virtual {v2}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adFrames:Ljava/util/List;

    .line 366
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 368
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 369
    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    iput-object v2, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adFrames:Ljava/util/List;

    .line 370
    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ch;->k:Lcom/flurry/sdk/ap;

    invoke-virtual {v2}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->groupId:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->groupId:Ljava/lang/String;

    .line 371
    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->clientSideRtbPayload:Ljava/util/Map;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->clientSideRtbPayload:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 372
    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ch;->k:Lcom/flurry/sdk/ap;

    invoke-virtual {v2}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->clientSideRtbPayload:Ljava/util/Map;

    iput-object v2, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->clientSideRtbPayload:Ljava/util/Map;

    .line 375
    :cond_7
    iput-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    .line 382
    :goto_1
    sget-object v0, Lcom/flurry/sdk/ch$a;->e:Lcom/flurry/sdk/ch$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ch$a;)V

    .line 383
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ch$8;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ch$8;-><init>(Lcom/flurry/sdk/ch;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 378
    :cond_8
    iput-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/flurry/sdk/ch;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->g()V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/ch;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->h()V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/ch;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->i()V

    return-void
.end method

.method private declared-synchronized e()V
    .locals 4

    .prologue
    .line 255
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetch finished for adObject:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adSpace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ch;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/flurry/sdk/ch;->c:Lcom/flurry/sdk/ci;

    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->b()V

    .line 258
    invoke-static {}, Lcom/flurry/sdk/fn;->a()Lcom/flurry/sdk/fn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/fn;->a(Ljava/lang/Object;)V

    .line 260
    sget-object v0, Lcom/flurry/sdk/ch$a;->a:Lcom/flurry/sdk/ch$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ch$a;)V

    .line 263
    iget-object v0, p0, Lcom/flurry/sdk/ch;->i:Lcom/flurry/sdk/x;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/flurry/sdk/ch;->i:Lcom/flurry/sdk/x;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->e:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x;->a(Ljava/util/Collection;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ch;->e:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ch;->h:Lcom/flurry/sdk/ci;

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ch;->i:Lcom/flurry/sdk/x;

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ch;->k:Lcom/flurry/sdk/ap;

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/ch;->l:I

    .line 275
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/ch;->m:J

    .line 276
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/ch;->n:J

    .line 277
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/ch;->o:J

    .line 278
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/ch;->p:J

    .line 279
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/ch;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/flurry/sdk/ch;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->j()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/ch;)Lcom/flurry/sdk/ci;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flurry/sdk/ch;->h:Lcom/flurry/sdk/ci;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 2

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ch$a;->b:Lcom/flurry/sdk/ch$a;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/flurry/sdk/ch;->d:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->i:Lcom/flurry/sdk/x;

    invoke-virtual {v1}, Lcom/flurry/sdk/x;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 309
    iget-object v0, p0, Lcom/flurry/sdk/ch;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/flurry/sdk/ch;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ap;

    iput-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    .line 313
    :cond_0
    sget-object v0, Lcom/flurry/sdk/ch$a;->e:Lcom/flurry/sdk/ch$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ch$a;)V

    .line 315
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ch$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ch$7;-><init>(Lcom/flurry/sdk/ch;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :cond_1
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 4

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/ch;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/ch;->m:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    sget-object v1, Lcom/flurry/sdk/av;->v:Lcom/flurry/sdk/av;

    invoke-static {v0, v1}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    .line 395
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :cond_0
    monitor-exit p0

    return-void

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/flurry/sdk/ch;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->f()V

    return-void
.end method

.method static synthetic h(Lcom/flurry/sdk/ch;)Lcom/flurry/sdk/ci;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flurry/sdk/ch;->c:Lcom/flurry/sdk/ci;

    return-object v0
.end method

.method private declared-synchronized h()V
    .locals 4

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/ch;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/ch;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :cond_0
    monitor-exit p0

    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 407
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/ch;->p:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/ch;->p:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    sget-object v1, Lcom/flurry/sdk/av;->m:Lcom/flurry/sdk/av;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ap;Lcom/flurry/sdk/av;)V

    .line 410
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 414
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/flurry/sdk/ch;->o:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/ch;->o:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->m()V

    .line 417
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/flurry/sdk/ch;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->l()V

    return-void
.end method

.method private declared-synchronized j()V
    .locals 4

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/ch;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/ch;->q:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 424
    invoke-static {}, Lcom/flurry/sdk/fn;->a()Lcom/flurry/sdk/fn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/fn;->a(Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    sget-object v1, Lcom/flurry/sdk/av;->o:Lcom/flurry/sdk/av;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ap;Lcom/flurry/sdk/av;)V

    .line 426
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_0
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic j(Lcom/flurry/sdk/ch;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->o()V

    return-void
.end method

.method private declared-synchronized k()V
    .locals 6

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ch$a;->c:Lcom/flurry/sdk/ch$a;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 470
    :goto_0
    monitor-exit p0

    return-void

    .line 453
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    if-nez v0, :cond_1

    .line 454
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v2, "An auction is required, but there is no ad unit!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    sget-object v1, Lcom/flurry/sdk/av;->d:Lcom/flurry/sdk/av;

    invoke-static {v0, v1}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    .line 456
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 458
    :cond_1
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/ch$a;->d:Lcom/flurry/sdk/ch$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ch$a;)V

    .line 461
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v0

    iget-wide v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->preRenderTimeoutMillis:J

    .line 462
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 463
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting CSRTB auction timeout for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/ch;->n:J

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    iput-object v0, p0, Lcom/flurry/sdk/ch;->k:Lcom/flurry/sdk/ap;

    .line 468
    iget-object v0, p0, Lcom/flurry/sdk/ch;->c:Lcom/flurry/sdk/ci;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/x;Lcom/flurry/sdk/ap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic k(Lcom/flurry/sdk/ch;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->p()V

    return-void
.end method

.method static synthetic l(Lcom/flurry/sdk/ch;)Lcom/flurry/sdk/r;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    return-object v0
.end method

.method private declared-synchronized l()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    .line 474
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ch$a;->e:Lcom/flurry/sdk/ch$a;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 628
    :goto_0
    monitor-exit p0

    return-void

    .line 479
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->e()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    sget-object v1, Lcom/flurry/sdk/av;->e:Lcom/flurry/sdk/av;

    invoke-static {v0, v1}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    .line 481
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 486
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    sget-object v1, Lcom/flurry/sdk/av;->x:Lcom/flurry/sdk/av;

    invoke-static {v0, v1}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    .line 488
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V

    goto :goto_0

    .line 492
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v2

    .line 494
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    if-eqz v0, :cond_b

    .line 496
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v0

    iget-object v3, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adFrames:Ljava/util/List;

    .line 497
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 498
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    sget-object v1, Lcom/flurry/sdk/av;->f:Lcom/flurry/sdk/av;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ap;Lcom/flurry/sdk/av;)V

    .line 499
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V

    goto :goto_0

    .line 504
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 505
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    .line 506
    iget v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->binding:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_6

    .line 508
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->renderTime:Z

    .line 509
    sget-object v0, Lcom/flurry/sdk/ch$a;->c:Lcom/flurry/sdk/ch$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ch$a;)V

    .line 510
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->k()V

    goto :goto_0

    .line 514
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ap;->d(I)Lcom/flurry/sdk/cy;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_7

    .line 516
    invoke-virtual {v0}, Lcom/flurry/sdk/cy;->c()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 504
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 518
    :cond_8
    invoke-virtual {v0}, Lcom/flurry/sdk/cy;->d()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 538
    :cond_9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/ch;->p:J

    .line 541
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->o()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 545
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/ap;)Lcom/flurry/sdk/af;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v1}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    iget v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->preCacheAdSkippableTimeLimitMillis:I

    int-to-long v4, v1

    .line 547
    const/4 v1, 0x3

    sget-object v3, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pre-caching required for ad, AdUnitCachedStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skip time limit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 550
    sget-object v1, Lcom/flurry/sdk/af;->d:Lcom/flurry/sdk/af;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/af;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 551
    cmp-long v1, v4, v8

    if-lez v1, :cond_a

    iget-wide v6, p0, Lcom/flurry/sdk/ch;->o:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_a

    .line 552
    const/4 v1, 0x3

    sget-object v3, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting skip timer for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/flurry/sdk/ch;->o:J

    .line 558
    :cond_a
    sget-object v1, Lcom/flurry/sdk/af;->d:Lcom/flurry/sdk/af;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/af;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 560
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v2, "Pre-caching completed, ad may proceed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    if-nez v0, :cond_16

    .line 615
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/flurry/sdk/aw;->e:Lcom/flurry/sdk/aw;

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/i;->a(Ljava/lang/String;Lcom/flurry/sdk/aw;ZLjava/util/Map;)V

    .line 616
    iget-object v0, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    sget-object v1, Lcom/flurry/sdk/av;->v:Lcom/flurry/sdk/av;

    invoke-static {v0, v1}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    .line 617
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V

    goto/16 :goto_0

    .line 524
    :cond_c
    iget-object v2, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v2}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v2

    iget-wide v2, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->preRenderTimeoutMillis:J

    .line 525
    cmp-long v4, v2, v8

    if-lez v4, :cond_d

    iget-wide v4, p0, Lcom/flurry/sdk/ch;->p:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_d

    .line 527
    const/4 v4, 0x3

    sget-object v5, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting VAST resolve timeout for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/flurry/sdk/ch;->p:J

    .line 532
    :cond_d
    iget-object v2, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-direct {p0, v2, v1, v0}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ap;ILcom/flurry/sdk/cy;)V

    goto/16 :goto_0

    .line 562
    :cond_e
    sget-object v1, Lcom/flurry/sdk/af;->b:Lcom/flurry/sdk/af;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 563
    cmp-long v0, v4, v8

    if-nez v0, :cond_f

    .line 565
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v3, "No skip timer"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->m()V

    goto/16 :goto_1

    .line 568
    :cond_f
    cmp-long v0, v4, v8

    if-lez v0, :cond_3

    .line 569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/flurry/sdk/ch;->o:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_10

    .line 571
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v3, "Skip timer expired"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->m()V

    goto/16 :goto_1

    .line 576
    :cond_10
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v2, "Waiting for skip timer"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    :cond_11
    cmp-long v0, v4, v8

    if-nez v0, :cond_12

    .line 584
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v3, "No skip timer"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->m()V

    goto/16 :goto_1

    .line 589
    :cond_12
    iget v0, p0, Lcom/flurry/sdk/ch;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/ch;->l:I

    if-le v0, v10, :cond_13

    .line 591
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v2, "Too many precaching attempts, precaching failed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    sget-object v1, Lcom/flurry/sdk/av;->h:Lcom/flurry/sdk/av;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ap;Lcom/flurry/sdk/av;)V

    .line 593
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V

    goto/16 :goto_0

    .line 596
    :cond_13
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/aa;->b(Lcom/flurry/sdk/ap;)I

    move-result v0

    .line 597
    if-lez v0, :cond_14

    .line 598
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " asset(s), attempt #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/flurry/sdk/ch;->l:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 602
    :cond_14
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v2, "No assets to cache"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 609
    :cond_15
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v2, "Pre-caching not required for ad"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 620
    :cond_16
    sget-object v0, Lcom/flurry/sdk/ch$a;->f:Lcom/flurry/sdk/ch$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ch$a;)V

    .line 621
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ch$10;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ch$10;-><init>(Lcom/flurry/sdk/ch;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized m()V
    .locals 5

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ch$a;->e:Lcom/flurry/sdk/ch$a;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 703
    :goto_0
    monitor-exit p0

    return-void

    .line 681
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->groupId:Ljava/lang/String;

    .line 683
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Precaching required for incomplete ad unit, skipping ad group -- adspace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/ch;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groupId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/flurry/sdk/ch;->e:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 687
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    .line 689
    iget-object v0, p0, Lcom/flurry/sdk/ch;->e:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->d:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 690
    iget-object v0, p0, Lcom/flurry/sdk/ch;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 693
    iget-object v0, p0, Lcom/flurry/sdk/ch;->d:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->i:Lcom/flurry/sdk/x;

    invoke-virtual {v1}, Lcom/flurry/sdk/x;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 694
    iget-object v0, p0, Lcom/flurry/sdk/ch;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/flurry/sdk/ch;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ap;

    iput-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    .line 698
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingAdGroupSkipped"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    .line 701
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/ch;->l:I

    .line 702
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/ch;->o:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic m(Lcom/flurry/sdk/ch;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V

    return-void
.end method

.method private declared-synchronized n()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 707
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ch$a;->c:Lcom/flurry/sdk/ch$a;

    iget-object v2, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/flurry/sdk/ch$a;->d:Lcom/flurry/sdk/ch$a;

    iget-object v2, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 732
    :goto_0
    monitor-exit p0

    return-void

    .line 713
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v1}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adFrames:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    move-object v7, v0

    .line 717
    new-instance v1, Lcom/flurry/sdk/b;

    sget-object v2, Lcom/flurry/sdk/aw;->e:Lcom/flurry/sdk/aw;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/flurry/sdk/b;-><init>(Lcom/flurry/sdk/aw;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;)V

    invoke-static {v7, v1}, Lcom/flurry/sdk/cr;->a(Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;Lcom/flurry/sdk/b;)Ljava/util/List;

    move-result-object v1

    .line 718
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/a;

    .line 719
    sget-object v3, Lcom/flurry/sdk/au;->f:Lcom/flurry/sdk/au;

    invoke-virtual {v1}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/au;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v7, v8

    .line 725
    :goto_1
    sget-object v1, Lcom/flurry/sdk/aw;->e:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    invoke-interface {v3}, Lcom/flurry/sdk/r;->e()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    iget-object v5, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/flurry/sdk/co;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;I)V

    .line 726
    if-ne v7, v9, :cond_2

    .line 728
    iget-object v1, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    sget-object v2, Lcom/flurry/sdk/av;->n:Lcom/flurry/sdk/av;

    invoke-direct {p0, v1, v2}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ap;Lcom/flurry/sdk/av;)V

    .line 731
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    move v7, v9

    goto :goto_1
.end method

.method private declared-synchronized o()V
    .locals 6

    .prologue
    .line 735
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hp;->a()V

    .line 738
    sget-object v0, Lcom/flurry/sdk/ch$a;->f:Lcom/flurry/sdk/ch$a;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 763
    :goto_0
    monitor-exit p0

    return-void

    .line 743
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v2, "Preparing ad"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->e()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    sget-object v1, Lcom/flurry/sdk/av;->e:Lcom/flurry/sdk/av;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ap;Lcom/flurry/sdk/av;)V

    .line 748
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 752
    :cond_1
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/aw;->d:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    invoke-interface {v2}, Lcom/flurry/sdk/r;->e()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    iget-object v4, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/co;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;I)V

    .line 754
    iget-object v0, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/ap;)V

    .line 756
    sget-object v0, Lcom/flurry/sdk/ch$a;->g:Lcom/flurry/sdk/ch$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ch$a;)V

    .line 757
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ch$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ch$2;-><init>(Lcom/flurry/sdk/ch;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized p()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 767
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ch$a;->g:Lcom/flurry/sdk/ch$a;

    iget-object v2, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 840
    :goto_0
    monitor-exit p0

    return-void

    .line 771
    :cond_0
    const/4 v1, 0x3

    :try_start_1
    sget-object v2, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v3, "Pre-rendering ad"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v1}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    iget-object v6, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adFrames:Ljava/util/List;

    .line 775
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 776
    iget-object v1, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ap;->d(I)Lcom/flurry/sdk/cy;

    move-result-object v1

    .line 777
    if-eqz v1, :cond_2

    .line 778
    invoke-virtual {v1}, Lcom/flurry/sdk/cy;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/flurry/sdk/cy;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    sget-object v1, Lcom/flurry/sdk/av;->g:Lcom/flurry/sdk/av;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ap;Lcom/flurry/sdk/av;)V

    .line 781
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 767
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 775
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 788
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    .line 789
    iget-object v1, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v1}, Lcom/flurry/sdk/ap;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 790
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v3, "Precaching required for ad, copying assets"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v1, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/ap;)Lcom/flurry/sdk/af;

    move-result-object v0

    .line 794
    sget-object v1, Lcom/flurry/sdk/af;->d:Lcom/flurry/sdk/af;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 795
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingAdAssetsAvailable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    .line 798
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    iget-object v2, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 799
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v2, "Could not copy required ad assets"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingAdAssetCopyFailed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    .line 801
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    sget-object v1, Lcom/flurry/sdk/av;->i:Lcom/flurry/sdk/av;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ap;Lcom/flurry/sdk/av;)V

    .line 802
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V

    goto/16 :goto_0

    .line 806
    :cond_4
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v2, "Ad assets incomplete"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingAdAssetsIncomplete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    .line 808
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    sget-object v1, Lcom/flurry/sdk/av;->j:Lcom/flurry/sdk/av;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ap;Lcom/flurry/sdk/av;)V

    .line 809
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V

    goto/16 :goto_0

    .line 812
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 813
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v2, "Precaching optional for ad, copying assets"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    iget-object v2, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;)Z

    .line 820
    :cond_6
    sget-object v0, Lcom/flurry/sdk/aw;->K:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    invoke-interface {v2}, Lcom/flurry/sdk/r;->e()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    iget-object v4, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/co;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;I)V

    .line 823
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    .line 824
    iget v1, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->binding:I

    .line 825
    if-ne v1, v7, :cond_8

    .line 826
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v3, "Binding is HTML_URL, pre-render required"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v1, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    invoke-virtual {v1}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    iget-wide v2, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->preRenderTimeoutMillis:J

    .line 829
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    .line 830
    const/4 v1, 0x3

    sget-object v4, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting pre-render timeout for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/flurry/sdk/ch;->q:J

    .line 834
    :cond_7
    iget-object v1, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    iget-object v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->display:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ap;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 837
    :cond_8
    iget-object v0, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    invoke-static {v0}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;)V

    .line 838
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V

    .line 176
    iget-object v0, p0, Lcom/flurry/sdk/ch;->c:Lcom/flurry/sdk/ci;

    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->a()V

    .line 177
    iget-object v0, p0, Lcom/flurry/sdk/ch;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ci;Lcom/flurry/sdk/x;)V
    .locals 6

    .prologue
    .line 185
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 240
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 189
    :cond_1
    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchAd: adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/flurry/sdk/ch$a;->a:Lcom/flurry/sdk/ch$a;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->f:Lcom/flurry/sdk/ch$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iput-object p1, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    .line 198
    iput-object p3, p0, Lcom/flurry/sdk/ch;->i:Lcom/flurry/sdk/x;

    .line 199
    iput-object p2, p0, Lcom/flurry/sdk/ch;->h:Lcom/flurry/sdk/ci;

    .line 202
    invoke-static {}, Lcom/flurry/sdk/fj;->a()Lcom/flurry/sdk/fj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fj;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    const-string v2, "There is no network connectivity (ad will not fetch)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    sget-object v1, Lcom/flurry/sdk/av;->c:Lcom/flurry/sdk/av;

    invoke-static {v0, v1}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    .line 205
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 210
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/aa;->g()V

    .line 213
    iget-object v0, p0, Lcom/flurry/sdk/ch;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/flurry/sdk/ch;->d:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->i:Lcom/flurry/sdk/x;

    invoke-virtual {v1}, Lcom/flurry/sdk/x;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/ch;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 220
    sget-object v0, Lcom/flurry/sdk/ch$a;->b:Lcom/flurry/sdk/ch$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ch$a;)V

    .line 221
    const-wide/16 v0, 0x3a98

    .line 222
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 223
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/ch;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting ad request timeout for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/ch;->m:J

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/ch;->h:Lcom/flurry/sdk/ci;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/r;

    iget-object v2, p0, Lcom/flurry/sdk/ch;->i:Lcom/flurry/sdk/x;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/x;Lcom/flurry/sdk/ap;)V

    goto/16 :goto_0

    .line 228
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/ch;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ap;

    iput-object v0, p0, Lcom/flurry/sdk/ch;->j:Lcom/flurry/sdk/ap;

    .line 232
    sget-object v0, Lcom/flurry/sdk/ch$a;->e:Lcom/flurry/sdk/ch$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ch$a;)V

    .line 233
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ch$6;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ch$6;-><init>(Lcom/flurry/sdk/ch;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ch;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ch;->h:Lcom/flurry/sdk/ci;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/flurry/sdk/ch;->h:Lcom/flurry/sdk/ci;

    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->b()V

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/ch;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
