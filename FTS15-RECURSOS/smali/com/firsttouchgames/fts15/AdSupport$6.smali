.class final Lcom/firsttouchgames/fts15/AdSupport$6;
.super Ljava/lang/Object;
.source "AdSupport.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/fts15/AdSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 262
    const/4 v0, 0x2

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 263
    const-string v0, "AdSupport"

    const-string v1, "AppLovin: Video ad began"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "percentViewed"    # D
    .param p4, "fullyWatched"    # Z

    .prologue
    .line 269
    const/4 v0, 0x3

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 270
    invoke-static {}, Lcom/firsttouchgames/fts15/AdSupport;->access$200()Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    sget-object v1, Lcom/firsttouchgames/fts15/AdSupport;->m_AppLovinVideoAdListener:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 271
    const-string v0, "AdSupport"

    const-string v1, "AppLovin: Video ad ended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method
