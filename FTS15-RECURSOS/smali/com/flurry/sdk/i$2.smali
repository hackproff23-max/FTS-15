.class Lcom/flurry/sdk/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/fy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/fy",
        "<",
        "Lcom/flurry/sdk/cg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/i;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/i;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/cg;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    .line 79
    iget-object v1, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-static {v0}, Lcom/flurry/sdk/i;->c(Lcom/flurry/sdk/i;)Lcom/flurry/android/impl/ads/protocol/v13/Configuration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    iget-object v2, p1, Lcom/flurry/sdk/cg;->a:Lcom/flurry/android/impl/ads/protocol/v13/Configuration;

    invoke-static {v0, v2}, Lcom/flurry/sdk/i;->a(Lcom/flurry/sdk/i;Lcom/flurry/android/impl/ads/protocol/v13/Configuration;)Lcom/flurry/android/impl/ads/protocol/v13/Configuration;

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    iget-object v1, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-static {v1}, Lcom/flurry/sdk/i;->c(Lcom/flurry/sdk/i;)Lcom/flurry/android/impl/ads/protocol/v13/Configuration;

    move-result-object v1

    iget v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/Configuration;->cacheSizeMb:I

    int-to-long v2, v1

    mul-long/2addr v2, v6

    const-wide/16 v4, 0x4b4

    mul-long/2addr v2, v4

    iget-object v1, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-static {v1}, Lcom/flurry/sdk/i;->c(Lcom/flurry/sdk/i;)Lcom/flurry/android/impl/ads/protocol/v13/Configuration;

    move-result-object v1

    iget v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/Configuration;->maxAssetSizeKb:I

    int-to-long v4, v1

    mul-long/2addr v4, v6

    invoke-static {v0, v2, v3, v4, v5}, Lcom/flurry/sdk/i;->a(Lcom/flurry/sdk/i;JJ)V

    .line 91
    iget-object v0, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-static {v0}, Lcom/flurry/sdk/i;->c(Lcom/flurry/sdk/i;)Lcom/flurry/android/impl/ads/protocol/v13/Configuration;

    move-result-object v0

    iget v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/Configuration;->maxBitRateKbps:I

    invoke-static {v0}, Lcom/flurry/sdk/cz;->a(I)V

    .line 94
    iget-object v0, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-static {v0}, Lcom/flurry/sdk/i;->d(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/k;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-static {v1}, Lcom/flurry/sdk/i;->c(Lcom/flurry/sdk/i;)Lcom/flurry/android/impl/ads/protocol/v13/Configuration;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/Configuration;->sdkAssetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/k;->a(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-static {v0}, Lcom/flurry/sdk/i;->d(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/k;->c()V

    .line 96
    :goto_0
    return-void

    .line 83
    :cond_0
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synthetic notify(Lcom/flurry/sdk/fx;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Lcom/flurry/sdk/cg;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/i$2;->a(Lcom/flurry/sdk/cg;)V

    return-void
.end method
