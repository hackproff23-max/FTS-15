.class public Lcom/flurry/sdk/ci;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ci$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/gh",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/flurry/sdk/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/gh",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/AdResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/flurry/sdk/ci$a;

.field private g:Lcom/flurry/sdk/r;

.field private h:Lcom/flurry/sdk/ap;

.field private i:Lcom/flurry/sdk/x;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ap;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/flurry/sdk/fy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fy",
            "<",
            "Lcom/flurry/sdk/ff;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/flurry/sdk/ci;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ci;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/flurry/sdk/gh;

    const-string v1, "ad request"

    new-instance v2, Lcom/flurry/sdk/cl;

    const-class v3, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;

    invoke-direct {v2, v3}, Lcom/flurry/sdk/cl;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/gh;-><init>(Ljava/lang/String;Lcom/flurry/sdk/gx;)V

    iput-object v0, p0, Lcom/flurry/sdk/ci;->b:Lcom/flurry/sdk/gh;

    .line 82
    new-instance v0, Lcom/flurry/sdk/gh;

    const-string v1, "ad response"

    new-instance v2, Lcom/flurry/sdk/cl;

    const-class v3, Lcom/flurry/android/impl/ads/protocol/v13/AdResponse;

    invoke-direct {v2, v3}, Lcom/flurry/sdk/cl;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/gh;-><init>(Ljava/lang/String;Lcom/flurry/sdk/gx;)V

    iput-object v0, p0, Lcom/flurry/sdk/ci;->c:Lcom/flurry/sdk/gh;

    .line 94
    new-instance v0, Lcom/flurry/sdk/ci$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ci$1;-><init>(Lcom/flurry/sdk/ci;)V

    iput-object v0, p0, Lcom/flurry/sdk/ci;->k:Lcom/flurry/sdk/fy;

    .line 102
    iput-object p1, p0, Lcom/flurry/sdk/ci;->d:Ljava/lang/String;

    .line 104
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ci;->e:Ljava/util/List;

    .line 109
    sget-object v0, Lcom/flurry/sdk/ci$a;->a:Lcom/flurry/sdk/ci$a;

    iput-object v0, p0, Lcom/flurry/sdk/ci;->f:Lcom/flurry/sdk/ci$a;

    .line 110
    invoke-direct {p0}, Lcom/flurry/sdk/ci;->d()V

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ci;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/flurry/sdk/ci;->j:Ljava/util/List;

    return-object p1
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/ci$a;)V
    .locals 4

    .prologue
    .line 179
    monitor-enter p0

    if-nez p1, :cond_0

    .line 180
    :try_start_0
    sget-object p1, Lcom/flurry/sdk/ci$a;->a:Lcom/flurry/sdk/ci$a;

    .line 183
    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ci;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ci;->f:Lcom/flurry/sdk/ci$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/flurry/sdk/ci$a;->a:Lcom/flurry/sdk/ci$a;

    iget-object v1, p0, Lcom/flurry/sdk/ci;->f:Lcom/flurry/sdk/ci$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ci$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/ci$a;->a:Lcom/flurry/sdk/ci$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ci$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ci;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding request listeners for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ci;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v2, p0, Lcom/flurry/sdk/ci;->k:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/fz;->a(Ljava/lang/String;Lcom/flurry/sdk/fy;)V

    .line 193
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/flurry/sdk/ci;->f:Lcom/flurry/sdk/ci$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 188
    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/ci$a;->a:Lcom/flurry/sdk/ci$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ci$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/ci$a;->a:Lcom/flurry/sdk/ci$a;

    iget-object v1, p0, Lcom/flurry/sdk/ci;->f:Lcom/flurry/sdk/ci$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ci$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ci;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing request listeners for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ci;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ci;->k:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fz;->a(Lcom/flurry/sdk/fy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ci;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/ci;->e()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ci;Lcom/flurry/sdk/ci$a;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/ci$a;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ci;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;)V
    .locals 22

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/flurry/sdk/ci$a;->c:Lcom/flurry/sdk/ci$a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flurry/sdk/ci;->f:Lcom/flurry/sdk/ci$a;

    invoke-virtual {v4, v5}, Lcom/flurry/sdk/ci$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 488
    :goto_0
    monitor-exit p0

    return-void

    .line 218
    :cond_0
    :try_start_1
    sget-object v4, Lcom/flurry/sdk/ci$a;->d:Lcom/flurry/sdk/ci$a;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/ci$a;)V

    .line 220
    invoke-interface/range {p1 .. p1}, Lcom/flurry/sdk/r;->f()Landroid/view/ViewGroup;

    move-result-object v7

    .line 221
    invoke-interface/range {p1 .. p1}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/e;

    move-result-object v13

    .line 224
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/flurry/sdk/q;

    if-eqz v4, :cond_7

    .line 225
    sget-object v4, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->BANNER:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    move-object v12, v4

    .line 234
    :goto_1
    invoke-static {}, Lcom/flurry/sdk/hn;->j()I

    move-result v4

    .line 240
    invoke-static {v4}, Lcom/flurry/sdk/hn;->c(I)Landroid/util/Pair;

    move-result-object v5

    .line 241
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 242
    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 244
    invoke-static {}, Lcom/flurry/sdk/hn;->k()Landroid/util/Pair;

    move-result-object v6

    .line 246
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 247
    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 249
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    if-lez v6, :cond_12

    .line 251
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-static {v4}, Lcom/flurry/sdk/hn;->a(I)I

    move-result v4

    move v6, v4

    .line 254
    :goto_2
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    if-lez v4, :cond_11

    .line 256
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-static {v4}, Lcom/flurry/sdk/hn;->a(I)I

    move-result v4

    .line 259
    :goto_3
    new-instance v14, Lcom/flurry/android/impl/ads/protocol/v13/AdViewContainer;

    invoke-direct {v14}, Lcom/flurry/android/impl/ads/protocol/v13/AdViewContainer;-><init>()V

    .line 260
    iput v9, v14, Lcom/flurry/android/impl/ads/protocol/v13/AdViewContainer;->screenHeight:I

    .line 261
    iput v8, v14, Lcom/flurry/android/impl/ads/protocol/v13/AdViewContainer;->screenWidth:I

    .line 262
    iput v6, v14, Lcom/flurry/android/impl/ads/protocol/v13/AdViewContainer;->viewHeight:I

    .line 263
    iput v4, v14, Lcom/flurry/android/impl/ads/protocol/v13/AdViewContainer;->viewWidth:I

    .line 264
    invoke-static {}, Lcom/flurry/sdk/hn;->e()F

    move-result v4

    iput v4, v14, Lcom/flurry/android/impl/ads/protocol/v13/AdViewContainer;->density:F

    .line 265
    invoke-static {}, Lcom/flurry/sdk/cr;->b()Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    move-result-object v4

    iput-object v4, v14, Lcom/flurry/android/impl/ads/protocol/v13/AdViewContainer;->screenOrientation:Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    .line 267
    invoke-static {}, Lcom/flurry/sdk/cr;->c()Lcom/flurry/android/impl/ads/protocol/v13/Location;

    move-result-object v6

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 269
    new-instance v15, Lcom/flurry/android/impl/ads/protocol/v13/TargetingOverride;

    invoke-direct {v15}, Lcom/flurry/android/impl/ads/protocol/v13/TargetingOverride;-><init>()V

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v15, Lcom/flurry/android/impl/ads/protocol/v13/TargetingOverride;->personas:Ljava/util/List;

    .line 271
    const/4 v4, -0x2

    iput v4, v15, Lcom/flurry/android/impl/ads/protocol/v13/TargetingOverride;->ageRange:I

    .line 272
    const/4 v4, -0x2

    iput v4, v15, Lcom/flurry/android/impl/ads/protocol/v13/TargetingOverride;->gender:I

    .line 273
    const/4 v4, 0x0

    .line 275
    if-eqz v13, :cond_10

    .line 276
    invoke-virtual {v13}, Lcom/flurry/sdk/e;->getLocation()Lcom/flurry/android/impl/ads/protocol/v13/Location;

    move-result-object v4

    .line 277
    if-eqz v4, :cond_1

    move-object v6, v4

    .line 281
    :cond_1
    invoke-virtual {v13}, Lcom/flurry/sdk/e;->getKeywords()Ljava/util/Map;

    move-result-object v4

    .line 282
    if-eqz v4, :cond_2

    move-object v5, v4

    .line 286
    :cond_2
    invoke-virtual {v13}, Lcom/flurry/sdk/e;->getGender()Ljava/lang/Integer;

    move-result-object v4

    .line 287
    if-eqz v4, :cond_3

    .line 288
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v15, Lcom/flurry/android/impl/ads/protocol/v13/TargetingOverride;->ageRange:I

    .line 291
    :cond_3
    invoke-virtual {v13}, Lcom/flurry/sdk/e;->getGender()Ljava/lang/Integer;

    move-result-object v4

    .line 292
    if-eqz v4, :cond_4

    .line 293
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v15, Lcom/flurry/android/impl/ads/protocol/v13/TargetingOverride;->gender:I

    .line 296
    :cond_4
    invoke-virtual {v13}, Lcom/flurry/sdk/e;->getEnableTestAds()Z

    move-result v4

    move v9, v4

    move-object v10, v5

    move-object v11, v6

    .line 299
    :goto_4
    invoke-static {}, Lcom/flurry/sdk/cr;->e()Ljava/util/List;

    move-result-object v16

    .line 300
    invoke-static {}, Lcom/flurry/sdk/cr;->f()Ljava/util/List;

    move-result-object v17

    .line 302
    sget-object v4, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->STREAM:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    sget-object v5, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->STREAM:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    invoke-virtual {v4, v5}, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 303
    invoke-static {}, Lcom/flurry/sdk/cr;->g()Ljava/util/List;

    move-result-object v4

    move-object v8, v4

    .line 309
    :goto_5
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 310
    if-eqz v13, :cond_5

    .line 311
    invoke-virtual {v13}, Lcom/flurry/sdk/e;->getFixedAdId()Ljava/lang/String;

    move-result-object v4

    .line 312
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 313
    const-string v5, "FLURRY_VIEWER"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_5
    const/4 v5, 0x0

    .line 320
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 321
    if-eqz p2, :cond_f

    .line 322
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v4

    .line 323
    iget-boolean v5, v4, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->renderTime:Z

    .line 324
    iget-object v4, v4, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->clientSideRtbPayload:Ljava/util/Map;

    move-object v6, v4

    move v7, v5

    .line 327
    :goto_6
    new-instance v13, Lcom/flurry/android/impl/ads/protocol/v13/NativeAdConfiguration;

    invoke-direct {v13}, Lcom/flurry/android/impl/ads/protocol/v13/NativeAdConfiguration;-><init>()V

    .line 328
    const/4 v5, 0x0

    .line 329
    const/4 v4, 0x0

    .line 330
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/flurry/sdk/w;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 331
    move-object/from16 v0, p1

    check-cast v0, Lcom/flurry/sdk/w;

    move-object v4, v0

    .line 333
    invoke-virtual {v4}, Lcom/flurry/sdk/w;->s()Ljava/util/List;

    move-result-object v5

    .line 334
    invoke-virtual {v4}, Lcom/flurry/sdk/w;->t()Ljava/util/List;

    move-result-object v4

    .line 337
    :cond_6
    if-nez v5, :cond_b

    .line 338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, v13, Lcom/flurry/android/impl/ads/protocol/v13/NativeAdConfiguration;->requestedStyles:Ljava/util/List;

    .line 343
    :goto_7
    if-nez v4, :cond_c

    .line 344
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v13, Lcom/flurry/android/impl/ads/protocol/v13/NativeAdConfiguration;->requestedAssets:Ljava/util/List;

    .line 349
    :goto_8
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/i;->h()Lcom/flurry/sdk/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/n;->b()Ljava/lang/String;

    move-result-object v4

    .line 350
    if-nez v4, :cond_e

    .line 351
    const-string v4, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    .line 357
    :goto_9
    :try_start_2
    new-instance v19, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;

    invoke-direct/range {v19 .. v19}, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;-><init>()V

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->requestTime:J

    .line 360
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/fp;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->apiKey:Ljava/lang/String;

    .line 361
    invoke-static {}, Lcom/flurry/sdk/fq;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->agentVersion:Ljava/lang/String;

    .line 362
    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->adViewType:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/sdk/ci;->d:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->adSpaceName:Ljava/lang/String;

    .line 364
    invoke-static {}, Lcom/flurry/sdk/fd;->a()Lcom/flurry/sdk/fd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/fd;->c()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->sessionId:J

    .line 365
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->adReportedIds:Ljava/util/List;

    .line 366
    move-object/from16 v0, v19

    iput-object v11, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->location:Lcom/flurry/android/impl/ads/protocol/v13/Location;

    .line 367
    move-object/from16 v0, v19

    iput-boolean v9, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->testDevice:Z

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/sdk/ci;->e:Ljava/util/List;

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->bindings:Ljava/util/List;

    .line 369
    move-object/from16 v0, v19

    iput-object v14, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->adViewContainer:Lcom/flurry/android/impl/ads/protocol/v13/AdViewContainer;

    .line 370
    invoke-static {}, Lcom/flurry/sdk/fg;->a()Lcom/flurry/sdk/fg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/fg;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->locale:Ljava/lang/String;

    .line 371
    invoke-static {}, Lcom/flurry/sdk/fg;->a()Lcom/flurry/sdk/fg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/fg;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->timezone:Ljava/lang/String;

    .line 372
    invoke-static {}, Lcom/flurry/sdk/fm;->a()Lcom/flurry/sdk/fm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/fm;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->osVersion:Ljava/lang/String;

    .line 373
    invoke-static {}, Lcom/flurry/sdk/fm;->a()Lcom/flurry/sdk/fm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/fm;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->devicePlatform:Ljava/lang/String;

    .line 374
    move-object/from16 v0, v19

    iput-object v10, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->keywords:Ljava/util/Map;

    .line 375
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->canDoSKAppStore:Z

    .line 376
    invoke-static {}, Lcom/flurry/sdk/fd;->a()Lcom/flurry/sdk/fd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/fd;->h()Lcom/flurry/sdk/fj$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/fj$a;->a()I

    move-result v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->networkStatus:I

    .line 377
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->frequencyCapRequestInfoList:Ljava/util/List;

    .line 378
    move-object/from16 v0, v19

    iput-object v8, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->streamInfoList:Ljava/util/List;

    .line 379
    invoke-static {}, Lcom/flurry/sdk/fe;->a()Lcom/flurry/sdk/fe;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/fe;->e()Z

    move-result v4

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->adTrackingEnabled:Z

    .line 380
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->preferredLanguage:Ljava/lang/String;

    .line 381
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->bcat:Ljava/util/List;

    .line 382
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/i;->s()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->userAgent:Ljava/lang/String;

    .line 383
    move-object/from16 v0, v19

    iput-object v15, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->targetingOverride:Lcom/flurry/android/impl/ads/protocol/v13/TargetingOverride;

    .line 384
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/i;->m()Lcom/flurry/android/impl/ads/protocol/v13/Configuration;

    move-result-object v4

    if-nez v4, :cond_d

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->sendConfiguration:Z

    .line 385
    invoke-static {}, Lcom/flurry/sdk/cr;->d()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->origins:Ljava/util/List;

    .line 386
    move-object/from16 v0, v19

    iput-boolean v7, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->renderTime:Z

    .line 387
    move-object/from16 v0, v19

    iput-object v6, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->clientSideRtbPayload:Ljava/util/Map;

    .line 388
    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->nativeAdConfiguration:Lcom/flurry/android/impl/ads/protocol/v13/NativeAdConfiguration;

    .line 389
    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->bCookie:Ljava/lang/String;

    .line 390
    invoke-interface/range {p1 .. p1}, Lcom/flurry/sdk/r;->e()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/flurry/sdk/hm;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;->appBundleId:Ljava/lang/String;

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/sdk/ci;->b:Lcom/flurry/sdk/gh;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/flurry/sdk/gh;->a(Ljava/lang/Object;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 400
    :try_start_3
    new-instance v5, Lcom/flurry/sdk/gk;

    invoke-direct {v5}, Lcom/flurry/sdk/gk;-><init>()V

    .line 401
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/sdk/j;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/flurry/sdk/gk;->a(Ljava/lang/String;)V

    .line 402
    const/16 v6, 0x4e20

    invoke-virtual {v5, v6}, Lcom/flurry/sdk/gk;->a(I)V

    .line 403
    sget-object v6, Lcom/flurry/sdk/gl$a;->c:Lcom/flurry/sdk/gl$a;

    invoke-virtual {v5, v6}, Lcom/flurry/sdk/gk;->a(Lcom/flurry/sdk/gl$a;)V

    .line 404
    const-string v6, "Content-Type"

    const-string v7, "application/x-flurry"

    invoke-virtual {v5, v6, v7}, Lcom/flurry/sdk/gk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v6, "Accept"

    const-string v7, "application/x-flurry"

    invoke-virtual {v5, v6, v7}, Lcom/flurry/sdk/gk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v6, "FM-Checksum"

    invoke-static {v4}, Lcom/flurry/sdk/gh;->c([B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/flurry/sdk/gk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    new-instance v6, Lcom/flurry/sdk/gt;

    invoke-direct {v6}, Lcom/flurry/sdk/gt;-><init>()V

    invoke-virtual {v5, v6}, Lcom/flurry/sdk/gk;->a(Lcom/flurry/sdk/gx;)V

    .line 408
    new-instance v6, Lcom/flurry/sdk/gt;

    invoke-direct {v6}, Lcom/flurry/sdk/gt;-><init>()V

    invoke-virtual {v5, v6}, Lcom/flurry/sdk/gk;->b(Lcom/flurry/sdk/gx;)V

    .line 409
    invoke-virtual {v5, v4}, Lcom/flurry/sdk/gk;->a(Ljava/lang/Object;)V

    .line 410
    new-instance v4, Lcom/flurry/sdk/ci$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/flurry/sdk/ci$4;-><init>(Lcom/flurry/sdk/ci;)V

    invoke-virtual {v5, v4}, Lcom/flurry/sdk/gk;->a(Lcom/flurry/sdk/gk$a;)V

    .line 487
    invoke-static {}, Lcom/flurry/sdk/fn;->a()Lcom/flurry/sdk/fn;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lcom/flurry/sdk/fn;->a(Ljava/lang/Object;Lcom/flurry/sdk/hr;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 214
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 226
    :cond_7
    :try_start_4
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/flurry/sdk/t;

    if-eqz v4, :cond_8

    .line 227
    sget-object v4, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->INTERSTITIAL:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    move-object v12, v4

    goto/16 :goto_1

    .line 228
    :cond_8
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/flurry/sdk/w;

    if-eqz v4, :cond_9

    .line 229
    sget-object v4, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->NATIVE:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    move-object v12, v4

    goto/16 :goto_1

    .line 231
    :cond_9
    sget-object v4, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->LEGACY:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    move-object v12, v4

    goto/16 :goto_1

    .line 305
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v8, v4

    goto/16 :goto_5

    .line 340
    :cond_b
    iput-object v5, v13, Lcom/flurry/android/impl/ads/protocol/v13/NativeAdConfiguration;->requestedStyles:Ljava/util/List;

    goto/16 :goto_7

    .line 346
    :cond_c
    iput-object v4, v13, Lcom/flurry/android/impl/ads/protocol/v13/NativeAdConfiguration;->requestedAssets:Ljava/util/List;

    goto/16 :goto_8

    .line 384
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 393
    :catch_0
    move-exception v4

    .line 394
    const/4 v5, 0x5

    sget-object v6, Lcom/flurry/sdk/ci;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ad request failed with exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-direct/range {p0 .. p0}, Lcom/flurry/sdk/ci;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_e
    move-object v5, v4

    goto/16 :goto_9

    :cond_f
    move-object v6, v4

    move v7, v5

    goto/16 :goto_6

    :cond_10
    move v9, v4

    move-object v10, v5

    move-object v11, v6

    goto/16 :goto_4

    :cond_11
    move v4, v5

    goto/16 :goto_3

    :cond_12
    move v6, v4

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/flurry/sdk/ci;)Lcom/flurry/sdk/r;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flurry/sdk/ci;->g:Lcom/flurry/sdk/r;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/ci;)Lcom/flurry/sdk/ap;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flurry/sdk/ci;->h:Lcom/flurry/sdk/ap;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/flurry/sdk/ci;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/ci;)Lcom/flurry/sdk/gh;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flurry/sdk/ci;->c:Lcom/flurry/sdk/gh;

    return-object v0
.end method

.method private declared-synchronized d()V
    .locals 1

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/fn;->a()Lcom/flurry/sdk/fn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/fn;->a(Ljava/lang/Object;)V

    .line 170
    sget-object v0, Lcom/flurry/sdk/ci$a;->a:Lcom/flurry/sdk/ci$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/ci$a;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ci;->i:Lcom/flurry/sdk/x;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ci;->g:Lcom/flurry/sdk/r;

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ci;->h:Lcom/flurry/sdk/ap;

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ci;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/flurry/sdk/ci;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flurry/sdk/ci;->d:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 3

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ci$a;->b:Lcom/flurry/sdk/ci$a;

    iget-object v1, p0, Lcom/flurry/sdk/ci;->f:Lcom/flurry/sdk/ci$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ci$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 210
    :goto_0
    monitor-exit p0

    return-void

    .line 202
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ci;->a:Ljava/lang/String;

    const-string v2, "Reported ids retrieved; request may continue"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/flurry/sdk/ci$a;->c:Lcom/flurry/sdk/ci$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/ci$a;)V

    .line 204
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ci$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ci$3;-><init>(Lcom/flurry/sdk/ci;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/flurry/sdk/ci;)Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flurry/sdk/ci;->j:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 492
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ci$a;->e:Lcom/flurry/sdk/ci$a;

    iget-object v1, p0, Lcom/flurry/sdk/ci;->f:Lcom/flurry/sdk/ci$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ci$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 551
    :goto_0
    monitor-exit p0

    return-void

    .line 496
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ci;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ap;

    .line 497
    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v3

    .line 500
    iget-object v1, v3, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->frequencyCapResponseInfoList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 501
    iget-object v1, v3, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->frequencyCapResponseInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapResponseInfo;

    .line 502
    new-instance v6, Lcom/flurry/sdk/az;

    invoke-direct {v6, v1}, Lcom/flurry/sdk/az;-><init>(Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapResponseInfo;)V

    .line 503
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->k()Lcom/flurry/sdk/ba;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/flurry/sdk/ba;->a(Lcom/flurry/sdk/az;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 508
    :cond_2
    :try_start_2
    iget-object v5, v3, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adFrames:Ljava/util/List;

    move v3, v2

    .line 509
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 510
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    .line 512
    iget-object v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->display:Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/sdk/da;->a(Ljava/lang/String;)Lcom/flurry/sdk/cy;

    move-result-object v1

    .line 513
    if-eqz v1, :cond_4

    .line 514
    invoke-virtual {v0, v3, v1}, Lcom/flurry/sdk/ap;->a(ILcom/flurry/sdk/cy;)V

    .line 515
    invoke-virtual {v1}, Lcom/flurry/sdk/cy;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v2

    .line 523
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 524
    invoke-static {v0, v1}, Lcom/flurry/sdk/ac;->a(Lcom/flurry/sdk/ap;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/flurry/sdk/ap;->a(ILjava/util/List;)V

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 509
    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 529
    :cond_5
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ci;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling ad response for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ci;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ci;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/flurry/sdk/ci;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 533
    iget-object v0, p0, Lcom/flurry/sdk/ci;->i:Lcom/flurry/sdk/x;

    if-eqz v0, :cond_6

    .line 534
    iget-object v0, p0, Lcom/flurry/sdk/ci;->i:Lcom/flurry/sdk/x;

    iget-object v1, p0, Lcom/flurry/sdk/ci;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x;->a(Ljava/util/Collection;)V

    .line 538
    :cond_6
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ci$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ci$5;-><init>(Lcom/flurry/sdk/ci;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 547
    :cond_7
    invoke-direct {p0}, Lcom/flurry/sdk/ci;->g()V

    .line 550
    invoke-direct {p0}, Lcom/flurry/sdk/ci;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 555
    new-instance v0, Lcom/flurry/sdk/cj;

    invoke-direct {v0}, Lcom/flurry/sdk/cj;-><init>()V

    .line 556
    iput-object p0, v0, Lcom/flurry/sdk/cj;->a:Lcom/flurry/sdk/ci;

    .line 557
    iget-object v1, p0, Lcom/flurry/sdk/ci;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/cj;->b:Ljava/lang/String;

    .line 558
    iget-object v1, p0, Lcom/flurry/sdk/ci;->j:Ljava/util/List;

    iput-object v1, v0, Lcom/flurry/sdk/cj;->c:Ljava/util/List;

    .line 559
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/fz;->a(Lcom/flurry/sdk/fx;)V

    .line 560
    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/ci;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/ci;->f()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/ci;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/x;Lcom/flurry/sdk/ap;)V
    .locals 4

    .prologue
    .line 122
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ci;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAd: adSpace = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ci;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/flurry/sdk/ci$a;->a:Lcom/flurry/sdk/ci$a;

    iget-object v1, p0, Lcom/flurry/sdk/ci;->f:Lcom/flurry/sdk/ci$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ci$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ci;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAds: request pending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ci;->f:Lcom/flurry/sdk/ci$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/fj;->a()Lcom/flurry/sdk/fj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fj;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/ci;->a:Ljava/lang/String;

    const-string v2, "There is no network connectivity (requestAds will fail)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/flurry/sdk/ci;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/flurry/sdk/ci;->g:Lcom/flurry/sdk/r;

    .line 141
    iput-object p3, p0, Lcom/flurry/sdk/ci;->h:Lcom/flurry/sdk/ap;

    .line 142
    iput-object p2, p0, Lcom/flurry/sdk/ci;->i:Lcom/flurry/sdk/x;

    .line 145
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->k()Lcom/flurry/sdk/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ba;->b()V

    .line 149
    invoke-static {}, Lcom/flurry/sdk/fe;->a()Lcom/flurry/sdk/fe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fe;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    sget-object v0, Lcom/flurry/sdk/ci$a;->c:Lcom/flurry/sdk/ci$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/ci$a;)V

    .line 151
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ci$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ci$2;-><init>(Lcom/flurry/sdk/ci;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ci;->a:Ljava/lang/String;

    const-string v2, "No reported ids yet; waiting"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/flurry/sdk/ci$a;->b:Lcom/flurry/sdk/ci$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/ci$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/flurry/sdk/ci;->d()V

    .line 165
    return-void
.end method
