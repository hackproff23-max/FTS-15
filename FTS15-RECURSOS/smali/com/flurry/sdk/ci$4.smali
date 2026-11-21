.class Lcom/flurry/sdk/ci$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/gk$a",
        "<[B[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ci;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ci;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/flurry/sdk/ci$4;->a:Lcom/flurry/sdk/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/gk;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 410
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ci$4;->a(Lcom/flurry/sdk/gk;[B)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/gk;[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/gk",
            "<[B[B>;[B)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 413
    invoke-static {}, Lcom/flurry/sdk/ci;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdRequest: HTTP status code is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/gk;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/flurry/sdk/ci$4;->a:Lcom/flurry/sdk/ci;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/ci;Ljava/util/List;)Ljava/util/List;

    .line 417
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 418
    invoke-virtual {p1}, Lcom/flurry/sdk/gk;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    .line 419
    const/4 v2, 0x0

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ci$4;->a:Lcom/flurry/sdk/ci;

    invoke-static {v0}, Lcom/flurry/sdk/ci;->d(Lcom/flurry/sdk/ci;)Lcom/flurry/sdk/gh;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/gh;->d([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/protocol/v13/AdResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 426
    :goto_0
    if-eqz v2, :cond_7

    .line 428
    iget-object v0, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdResponse;->configuration:Lcom/flurry/android/impl/ads/protocol/v13/ConfigurationUnion;

    .line 429
    if-eqz v0, :cond_0

    .line 430
    iget-object v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/ConfigurationUnion;->configuration:Lcom/flurry/android/impl/ads/protocol/v13/Configuration;

    .line 431
    if-eqz v0, :cond_0

    .line 432
    invoke-static {}, Lcom/flurry/sdk/ci;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ad server responded with configuration."

    invoke-static {v7, v3, v4}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 435
    new-instance v3, Lcom/flurry/sdk/cg;

    invoke-direct {v3}, Lcom/flurry/sdk/cg;-><init>()V

    .line 436
    iput-object v0, v3, Lcom/flurry/sdk/cg;->a:Lcom/flurry/android/impl/ads/protocol/v13/Configuration;

    .line 437
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/fz;->a(Lcom/flurry/sdk/fx;)V

    .line 442
    :cond_0
    iget-object v0, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdResponse;->frequencyCapResponseInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdResponse;->frequencyCapResponseInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapResponseInfo;

    .line 444
    new-instance v4, Lcom/flurry/sdk/az;

    invoke-direct {v4, v0}, Lcom/flurry/sdk/az;-><init>(Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapResponseInfo;)V

    .line 445
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->k()Lcom/flurry/sdk/ba;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/flurry/sdk/ba;->a(Lcom/flurry/sdk/az;)V

    goto :goto_1

    .line 422
    :catch_0
    move-exception v0

    .line 423
    const/4 v3, 0x5

    invoke-static {}, Lcom/flurry/sdk/ci;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to decode ad response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdResponse;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 450
    invoke-static {}, Lcom/flurry/sdk/ci;->c()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Ad server responded with the following error(s):"

    invoke-static {v0, v3}, Lcom/flurry/sdk/gd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdResponse;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 452
    invoke-static {}, Lcom/flurry/sdk/ci;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/flurry/sdk/gd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 456
    :cond_2
    iget-object v0, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdResponse;->adUnits:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 457
    iget-object v0, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdResponse;->adUnits:Ljava/util/List;

    .line 460
    :goto_3
    iget-object v1, p0, Lcom/flurry/sdk/ci$4;->a:Lcom/flurry/sdk/ci;

    invoke-static {v1}, Lcom/flurry/sdk/ci;->e(Lcom/flurry/sdk/ci;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 461
    invoke-static {}, Lcom/flurry/sdk/ci;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad server responded but sent no ad units."

    invoke-static {v1, v2}, Lcom/flurry/sdk/gd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_3
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    .line 468
    iget-object v2, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 472
    new-instance v2, Lcom/flurry/sdk/ap;

    invoke-direct {v2, v0}, Lcom/flurry/sdk/ap;-><init>(Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;)V

    .line 473
    iget-object v0, p0, Lcom/flurry/sdk/ci$4;->a:Lcom/flurry/sdk/ci;

    invoke-static {v0}, Lcom/flurry/sdk/ci;->f(Lcom/flurry/sdk/ci;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 476
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/ci$4;->a:Lcom/flurry/sdk/ci;

    sget-object v1, Lcom/flurry/sdk/ci$a;->e:Lcom/flurry/sdk/ci$a;

    invoke-static {v0, v1}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/ci;Lcom/flurry/sdk/ci$a;)V

    .line 478
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ci$4$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ci$4$1;-><init>(Lcom/flurry/sdk/ci$4;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 485
    return-void

    :cond_6
    move-object v0, v1

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_4
.end method
