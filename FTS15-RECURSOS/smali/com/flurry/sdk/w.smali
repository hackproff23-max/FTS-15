.class public Lcom/flurry/sdk/w;
.super Lcom/flurry/sdk/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/w$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/GestureDetector;

.field private c:Lcom/flurry/sdk/w$a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/Rect;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/flurry/sdk/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/w;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, v1, p2}, Lcom/flurry/sdk/o;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 38
    iput-object v1, p0, Lcom/flurry/sdk/w;->d:Ljava/util/List;

    .line 39
    iput-object v1, p0, Lcom/flurry/sdk/w;->e:Ljava/util/List;

    .line 42
    iput-boolean v2, p0, Lcom/flurry/sdk/w;->f:Z

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/w;->g:Ljava/lang/ref/WeakReference;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/w;->h:Landroid/graphics/Rect;

    .line 46
    iput v2, p0, Lcom/flurry/sdk/w;->i:I

    .line 52
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/flurry/sdk/w$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/w$1;-><init>(Lcom/flurry/sdk/w;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/flurry/sdk/w;->b:Landroid/view/GestureDetector;

    .line 72
    sget-object v0, Lcom/flurry/sdk/w$a;->a:Lcom/flurry/sdk/w$a;

    iput-object v0, p0, Lcom/flurry/sdk/w;->c:Lcom/flurry/sdk/w$a;

    .line 73
    return-void
.end method

.method private declared-synchronized A()V
    .locals 6

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/w;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 308
    :goto_0
    monitor-exit p0

    return-void

    .line 305
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/w;->a:Ljava/lang/String;

    const-string v1, "Impression logged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget-object v0, Lcom/flurry/sdk/aw;->Q:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/w;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/w;->k()Lcom/flurry/sdk/ap;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/co;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;I)V

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/w;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized B()V
    .locals 6

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/w;->a:Ljava/lang/String;

    const-string v1, "Click logged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    sget-object v0, Lcom/flurry/sdk/aw;->h:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/w;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/w;->k()Lcom/flurry/sdk/ap;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/co;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/w;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/flurry/sdk/w;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 287
    if-nez p1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 291
    :cond_0
    new-instance v0, Lcom/flurry/sdk/w$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/w$2;-><init>(Lcom/flurry/sdk/w;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/w;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/flurry/sdk/w;->A()V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/w;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/flurry/sdk/w;->B()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/w;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/flurry/sdk/w;->b:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/flurry/sdk/w;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/flurry/sdk/o;->a()V

    .line 78
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/flurry/sdk/w;->w()V

    .line 231
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/w;->g:Ljava/lang/ref/WeakReference;

    .line 232
    return-void
.end method

.method protected a(Lcom/flurry/sdk/d;)V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/flurry/sdk/o;->a(Lcom/flurry/sdk/d;)V

    .line 155
    sget-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/flurry/sdk/w;->n()Lcom/flurry/sdk/ap;

    move-result-object v0

    .line 158
    if-nez v0, :cond_1

    .line 159
    sget-object v0, Lcom/flurry/sdk/av;->d:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v0

    .line 165
    if-nez v0, :cond_2

    .line 166
    sget-object v0, Lcom/flurry/sdk/av;->f:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto :goto_0

    .line 171
    :cond_2
    sget-object v1, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->NATIVE:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    iget-object v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adViewType:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    sget-object v0, Lcom/flurry/sdk/av;->w:Lcom/flurry/sdk/av;

    invoke-static {p0, v0}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/av;)V

    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/w;->p()V

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/w$a;->b:Lcom/flurry/sdk/w$a;

    iput-object v0, p0, Lcom/flurry/sdk/w;->c:Lcom/flurry/sdk/w$a;

    .line 189
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    iput-object p1, p0, Lcom/flurry/sdk/w;->d:Ljava/util/List;

    .line 195
    return-void
.end method

.method protected r()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-super {p0}, Lcom/flurry/sdk/o;->r()V

    .line 84
    sget-object v0, Lcom/flurry/sdk/w$a;->b:Lcom/flurry/sdk/w$a;

    iget-object v1, p0, Lcom/flurry/sdk/w;->c:Lcom/flurry/sdk/w$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/w$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/w;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 90
    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0, v0}, Lcom/flurry/sdk/w;->b(Landroid/view/View;)V

    .line 98
    iget-boolean v1, p0, Lcom/flurry/sdk/w;->f:Z

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/flurry/sdk/w;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 106
    iget-object v1, p0, Lcom/flurry/sdk/w;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/flurry/sdk/w;->h:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v1, v3

    int-to-long v4, v1

    .line 108
    :goto_1
    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 119
    iget-object v1, p0, Lcom/flurry/sdk/w;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/flurry/sdk/w;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_4

    .line 120
    const/4 v1, 0x1

    .line 122
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/2addr v0, v3

    int-to-long v6, v0

    .line 123
    long-to-float v0, v4

    long-to-float v3, v6

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    if-nez v1, :cond_2

    .line 126
    iget v0, p0, Lcom/flurry/sdk/w;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/w;->i:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/flurry/sdk/w;->A()V

    goto :goto_0

    .line 130
    :cond_2
    iput v2, p0, Lcom/flurry/sdk/w;->i:I

    goto :goto_0

    .line 133
    :cond_3
    iput v2, p0, Lcom/flurry/sdk/w;->i:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move-wide v4, v6

    goto :goto_1
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/flurry/sdk/w;->d:Ljava/util/List;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/flurry/sdk/w;->e:Ljava/util/List;

    return-object v0
.end method

.method public u()Z
    .locals 2

    .prologue
    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/w$a;->b:Lcom/flurry/sdk/w$a;

    iget-object v1, p0, Lcom/flurry/sdk/w;->c:Lcom/flurry/sdk/w$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/w$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 213
    monitor-exit p0

    .line 215
    return v0

    .line 213
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
    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/w$a;->a:Lcom/flurry/sdk/w$a;

    iget-object v1, p0, Lcom/flurry/sdk/w;->c:Lcom/flurry/sdk/w$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/w$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/flurry/sdk/w;->h()Lcom/flurry/sdk/ch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/w;->i()Lcom/flurry/sdk/ci;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/w;->j()Lcom/flurry/sdk/x;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ci;Lcom/flurry/sdk/x;)V

    .line 225
    :cond_0
    :goto_0
    monitor-exit p0

    .line 226
    return-void

    .line 222
    :cond_1
    sget-object v0, Lcom/flurry/sdk/w$a;->b:Lcom/flurry/sdk/w$a;

    iget-object v1, p0, Lcom/flurry/sdk/w;->c:Lcom/flurry/sdk/w$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/w$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {p0}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;)V

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public w()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/flurry/sdk/w;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 238
    iget-object v0, p0, Lcom/flurry/sdk/w;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 240
    :cond_0
    return-void
.end method

.method public x()I
    .locals 2

    .prologue
    .line 243
    sget-object v0, Lcom/flurry/sdk/w$a;->b:Lcom/flurry/sdk/w$a;

    iget-object v1, p0, Lcom/flurry/sdk/w;->c:Lcom/flurry/sdk/w$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/w$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/w;->k()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->h()Lcom/flurry/android/impl/ads/protocol/v13/NativeAdInfo;

    move-result-object v0

    iget v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/NativeAdInfo;->style:I

    goto :goto_0
.end method

.method public y()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/NativeAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    sget-object v0, Lcom/flurry/sdk/w$a;->b:Lcom/flurry/sdk/w$a;

    iget-object v1, p0, Lcom/flurry/sdk/w;->c:Lcom/flurry/sdk/w$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/w$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/flurry/sdk/w;->k()Lcom/flurry/sdk/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/ap;->i()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method
