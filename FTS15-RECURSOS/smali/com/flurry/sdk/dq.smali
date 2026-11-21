.class public abstract Lcom/flurry/sdk/dq;
.super Lcom/flurry/sdk/ec;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dx;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Lcom/flurry/sdk/du;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/flurry/sdk/dq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ec$a;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/ec;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ec$a;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/dq;->c:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/dq;->d:Z

    .line 49
    new-instance v0, Lcom/flurry/sdk/du;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/du;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    .line 50
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/du;->a(Lcom/flurry/sdk/dx;)V

    .line 53
    invoke-direct {p0}, Lcom/flurry/sdk/dq;->k()V

    .line 56
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->showProgressDialog()V

    .line 57
    return-void
.end method

.method private a(FF)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 305
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v0

    .line 311
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 312
    invoke-virtual {v0, v4}, Lcom/flurry/sdk/dt;->a(Z)V

    .line 313
    sget-object v1, Lcom/flurry/sdk/aw;->i:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;)V

    .line 315
    :cond_2
    div-float v1, p2, p1

    .line 316
    const/high16 v2, 0x3e800000    # 0.25f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3

    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->d()Z

    move-result v2

    if-nez v2, :cond_3

    .line 317
    invoke-virtual {v0, v4}, Lcom/flurry/sdk/dt;->c(Z)V

    .line 318
    sget-object v2, Lcom/flurry/sdk/aw;->E:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;)V

    .line 320
    :cond_3
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_4

    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->e()Z

    move-result v2

    if-nez v2, :cond_4

    .line 321
    invoke-virtual {v0, v4}, Lcom/flurry/sdk/dt;->d(Z)V

    .line 322
    sget-object v2, Lcom/flurry/sdk/aw;->F:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;)V

    .line 324
    :cond_4
    const/high16 v2, 0x3f400000    # 0.75f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    invoke-virtual {v0, v4}, Lcom/flurry/sdk/dt;->e(Z)V

    .line 326
    sget-object v0, Lcom/flurry/sdk/aw;->G:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getAdFrameIndex()I

    move-result v0

    .line 218
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getAdUnit()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adFrames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 219
    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 223
    new-instance v0, Lcom/flurry/sdk/ea;

    invoke-direct {v0}, Lcom/flurry/sdk/ea;-><init>()V

    .line 224
    sget-object v1, Lcom/flurry/sdk/ea$a;->b:Lcom/flurry/sdk/ea$a;

    iput-object v1, v0, Lcom/flurry/sdk/ea;->e:Lcom/flurry/sdk/ea$a;

    .line 225
    invoke-virtual {v0}, Lcom/flurry/sdk/ea;->b()V

    .line 226
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    invoke-virtual {v1}, Lcom/flurry/sdk/du;->c()I

    move-result v1

    .line 334
    if-lez v1, :cond_0

    .line 335
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dt;->a(I)V

    .line 336
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/dt;)V

    .line 338
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getViewParams()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dt;->b(I)V

    .line 344
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/cn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dq;->setOrientation(I)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dq;->setOrientation(I)V

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dq;->setOrientation(I)V

    .line 356
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 233
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    const-string v2, "Video Close clicked: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/flurry/sdk/aw;->s:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;)V

    .line 238
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->onViewClose()V

    .line 239
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    invoke-virtual {v0}, Lcom/flurry/sdk/du;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->dismissProgressDialog()V

    .line 81
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/du;->a(I)V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getViewParams()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/du;->b(I)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/dq;->d:Z

    .line 88
    :cond_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->showProgressDialog()V

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/aw;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/aw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/co;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;I)V

    .line 261
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 200
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video Completed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Lcom/flurry/sdk/dq;->g()Z

    move-result v0

    .line 206
    sget-object v1, Lcom/flurry/sdk/aw;->j:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;)V

    .line 208
    invoke-direct {p0}, Lcom/flurry/sdk/dq;->l()V

    .line 211
    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/flurry/sdk/dq;->h()V

    .line 214
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;FF)V
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0, p2, p3}, Lcom/flurry/sdk/dq;->a(FF)V

    .line 163
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getViewParams()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/du;->b(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .locals 4

    .prologue
    .line 177
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    invoke-virtual {v0}, Lcom/flurry/sdk/du;->d()V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->onViewError()V

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    const-string v1, "errorCode"

    sget-object v2, Lcom/flurry/sdk/av;->r:Lcom/flurry/sdk/av;

    invoke-virtual {v2}, Lcom/flurry/sdk/av;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v1, "frameworkError"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "implError"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lcom/flurry/sdk/aw;->g:Lcom/flurry/sdk/aw;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;)V

    .line 190
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->dismissProgressDialog()V

    .line 191
    invoke-direct {p0}, Lcom/flurry/sdk/dq;->l()V

    .line 192
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 255
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    const-string v2, "Video Play clicked: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dq;->a(I)V

    .line 257
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 123
    sget-object v0, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video Prepared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getViewParams()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/du;->b(I)V

    .line 134
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/dq;->d:Z

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->dismissProgressDialog()V

    .line 152
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->a()I

    move-result v1

    .line 142
    iget-object v2, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/flurry/sdk/dq;->c:Z

    if-nez v2, :cond_2

    if-le v1, v3, :cond_3

    .line 143
    :cond_2
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/dq;->a(I)V

    .line 147
    :cond_3
    sget-object v1, Lcom/flurry/sdk/aw;->f:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;)V

    .line 148
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dt;->h(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->dismissProgressDialog()V

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x3

    .line 265
    .line 267
    const/4 v1, 0x3

    :try_start_0
    sget-object v2, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Precaching: Getting video from cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/r;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_0

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 277
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 278
    sget-object v0, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precaching: Error using cached file. Loading with url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 281
    :cond_1
    return-object v0

    .line 272
    :catch_0
    move-exception v1

    .line 274
    sget-object v2, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    const-string v3, "Precaching: Error accessing cached file."

    invoke-static {v5, v2, v3, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    const-string v2, "Video pause: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/flurry/sdk/dq;->i()V

    .line 94
    invoke-direct {p0}, Lcom/flurry/sdk/dq;->j()V

    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    invoke-virtual {v0}, Lcom/flurry/sdk/du;->b()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/dq;->d:Z

    .line 98
    :cond_0
    return-void
.end method

.method public cleanupLayout()V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V

    .line 297
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->dismissProgressDialog()V

    .line 298
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    invoke-virtual {v0}, Lcom/flurry/sdk/du;->j()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    .line 302
    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    const-string v2, "Video suspend: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->c()V

    .line 104
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    invoke-virtual {v0}, Lcom/flurry/sdk/du;->d()V

    .line 106
    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 246
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    const-string v2, "Video More Info clicked: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/flurry/sdk/aw;->h:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;)V

    .line 248
    return-void
.end method

.method protected abstract getViewParams()I
.end method

.method public initLayout()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 286
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 289
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 290
    iget-object v1, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    invoke-virtual {v1}, Lcom/flurry/sdk/du;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/dq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->showProgressDialog()V

    .line 292
    return-void
.end method

.method public onActivityDestroy()V
    .locals 2

    .prologue
    .line 395
    invoke-super {p0}, Lcom/flurry/sdk/ec;->onActivityDestroy()V

    .line 397
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/r;)V

    .line 398
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/aa;->g()V

    .line 399
    return-void
.end method

.method public onActivityPause()V
    .locals 0

    .prologue
    .line 381
    invoke-super {p0}, Lcom/flurry/sdk/ec;->onActivityPause()V

    .line 383
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->c()V

    .line 384
    return-void
.end method

.method public onActivityResume()V
    .locals 2

    .prologue
    .line 369
    invoke-super {p0}, Lcom/flurry/sdk/ec;->onActivityResume()V

    .line 372
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->a()I

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/flurry/sdk/dq;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 375
    :cond_0
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dq;->a(I)V

    .line 377
    :cond_1
    return-void
.end method

.method public onActivityStop()V
    .locals 0

    .prologue
    .line 388
    invoke-super {p0}, Lcom/flurry/sdk/ec;->onActivityStop()V

    .line 390
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->d()V

    .line 391
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/flurry/sdk/ec;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 363
    invoke-direct {p0}, Lcom/flurry/sdk/dq;->k()V

    .line 365
    return-void
.end method

.method protected onViewLoadTimeout()V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/flurry/sdk/aw;->s:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;)V

    .line 64
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 4

    .prologue
    .line 73
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video setAutoPlay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    iput-boolean p1, p0, Lcom/flurry/sdk/dq;->c:Z

    .line 75
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 109
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dq;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video set video uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/flurry/sdk/dq;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->a()I

    move-result v1

    iget-object v2, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    invoke-virtual {v2}, Lcom/flurry/sdk/du;->f()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->a()I

    move-result v0

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/du;->a(Landroid/net/Uri;I)V

    .line 115
    :cond_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dq;->a:Lcom/flurry/sdk/du;

    invoke-virtual {v0}, Lcom/flurry/sdk/du;->f()I

    move-result v0

    goto :goto_0
.end method
