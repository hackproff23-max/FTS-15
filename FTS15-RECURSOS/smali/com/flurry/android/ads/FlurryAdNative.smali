.class public final Lcom/flurry/android/ads/FlurryAdNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/ads/FlurryAdNative$2;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/ads/FlurryAdNativeAsset;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/flurry/sdk/w;

.field private final d:Lcom/flurry/sdk/fy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fy",
            "<",
            "Lcom/flurry/sdk/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/flurry/android/ads/FlurryAdNativeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/flurry/android/ads/FlurryAdNative$1;

    invoke-direct {v0, p0}, Lcom/flurry/android/ads/FlurryAdNative$1;-><init>(Lcom/flurry/android/ads/FlurryAdNative;)V

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->d:Lcom/flurry/sdk/fy;

    .line 120
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    if-nez p1, :cond_1

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ad space must be specified!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    if-nez v0, :cond_3

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find FlurryAds module. Please make sure the library is included."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    :goto_0
    return-void

    .line 136
    :cond_3
    :try_start_1
    new-instance v0, Lcom/flurry/sdk/w;

    invoke-direct {v0, p1, p2}, Lcom/flurry/sdk/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/w;->a(Ljava/util/List;)V

    .line 142
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdStateEvent"

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNative;->d:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/fz;->a(Ljava/lang/String;Lcom/flurry/sdk/fy;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/ads/FlurryAdNative;)Lcom/flurry/sdk/w;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 382
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;

    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    monitor-enter v1

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;

    invoke-virtual {v0}, Lcom/flurry/sdk/w;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/protocol/v13/NativeAsset;

    .line 388
    new-instance v3, Lcom/flurry/android/ads/FlurryAdNativeAsset;

    iget-object v4, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;

    invoke-virtual {v4}, Lcom/flurry/sdk/w;->d()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/flurry/android/ads/FlurryAdNativeAsset;-><init>(Lcom/flurry/android/impl/ads/protocol/v13/NativeAsset;I)V

    .line 389
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/flurry/android/ads/FlurryAdNative;->a()V

    return-void
.end method

.method static synthetic c(Lcom/flurry/android/ads/FlurryAdNative;)Lcom/flurry/android/ads/FlurryAdNativeListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->e:Lcom/flurry/android/ads/FlurryAdNativeListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 155
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdStateEvent"

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNative;->d:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/fz;->b(Ljava/lang/String;Lcom/flurry/sdk/fy;)V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->e:Lcom/flurry/android/ads/FlurryAdNativeListener;

    .line 159
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;

    invoke-virtual {v0}, Lcom/flurry/sdk/w;->a()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fetchAd()V
    .locals 3

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;

    invoke-virtual {v0}, Lcom/flurry/sdk/w;->v()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 329
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 351
    :goto_0
    return-object v0

    .line 333
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 334
    goto :goto_0

    .line 339
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ads/FlurryAdNativeAsset;

    .line 341
    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 346
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    sget-object v2, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v3, "Exception: "

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 351
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public getAssetList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/ads/FlurryAdNativeAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    if-nez v0, :cond_0

    .line 365
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 369
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :try_start_1
    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNative;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 372
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :try_start_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getStyle()I
    .locals 3

    .prologue
    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;

    invoke-virtual {v0}, Lcom/flurry/sdk/w;->x()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 306
    :goto_0
    return v0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 3

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;

    invoke-virtual {v0}, Lcom/flurry/sdk/w;->u()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 259
    :goto_0
    return v0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTrackingView()V
    .locals 3

    .prologue
    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;

    invoke-virtual {v0}, Lcom/flurry/sdk/w;->w()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setListener(Lcom/flurry/android/ads/FlurryAdNativeListener;)V
    .locals 3

    .prologue
    .line 178
    :try_start_0
    iput-object p1, p0, Lcom/flurry/android/ads/FlurryAdNative;->e:Lcom/flurry/android/ads/FlurryAdNativeListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setSupportedStyles(Ljava/util/List;)V
    .locals 3
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
    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/w;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setTargeting(Lcom/flurry/android/ads/FlurryAdTargeting;)V
    .locals 3

    .prologue
    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/w;->a(Lcom/flurry/sdk/e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setTrackingView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative;->c:Lcom/flurry/sdk/w;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/w;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNative;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
