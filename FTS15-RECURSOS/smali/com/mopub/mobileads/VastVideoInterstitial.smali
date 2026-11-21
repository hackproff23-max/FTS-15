.class Lcom/mopub/mobileads/VastVideoInterstitial;
.super Lcom/mopub/mobileads/ResponseBodyInterstitial;
.source "VastVideoInterstitial.java"

# interfaces
.implements Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;


# instance fields
.field private mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private mVastManager:Lcom/mopub/mobileads/util/vast/VastManager;

.field private mVastResponse:Ljava/lang/String;

.field private mVastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastResponse:Ljava/lang/String;

    .line 20
    return-void
.end method

.method getVastResponse()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastResponse:Ljava/lang/String;

    return-object v0
.end method

.method public onInvalidate()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastManager:Lcom/mopub/mobileads/util/vast/VastManager;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastManager:Lcom/mopub/mobileads/util/vast/VastManager;

    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/VastManager;->cancel()V

    .line 46
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;->onInvalidate()V

    .line 47
    return-void
.end method

.method public onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V
    .locals 2
    .param p1, "vastVideoConfiguration"    # Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    .line 61
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    goto :goto_0
.end method

.method protected preRenderHtml(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 2
    .param p1, "customEventInterstitialListener"    # Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 26
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/CacheService;->initializeDiskCache(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/mobileads/factories/VastManagerFactory;->create(Landroid/content/Context;)Lcom/mopub/mobileads/util/vast/VastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastManager:Lcom/mopub/mobileads/util/vast/VastManager;

    .line 32
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastManager:Lcom/mopub/mobileads/util/vast/VastManager;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastResponse:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mopub/mobileads/util/vast/VastManager;->prepareVastVideoConfiguration(Ljava/lang/String;Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;)V

    goto :goto_0
.end method

.method setVastManager(Lcom/mopub/mobileads/util/vast/VastManager;)V
    .locals 0
    .param p1, "vastManager"    # Lcom/mopub/mobileads/util/vast/VastManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastManager:Lcom/mopub/mobileads/util/vast/VastManager;

    .line 73
    return-void
.end method

.method public showInterstitial()V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    iget-wide v2, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mBroadcastIdentifier:J

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->startVast(Landroid/content/Context;Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;J)V

    .line 38
    return-void
.end method
