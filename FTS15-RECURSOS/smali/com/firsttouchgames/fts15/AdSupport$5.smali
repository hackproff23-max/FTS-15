.class final Lcom/firsttouchgames/fts15/AdSupport$5;
.super Ljava/lang/Object;
.source "AdSupport.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;


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
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userDeclinedToViewAd(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 251
    invoke-static {}, Lcom/firsttouchgames/fts15/AdSupport;->access$200()Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    sget-object v1, Lcom/firsttouchgames/fts15/AdSupport;->m_AppLovinVideoAdListener:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 252
    const/4 v0, 0x0

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 253
    const-string v0, "AdSupport"

    const-string v1, "AppLovin: User declined"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 1
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "response"    # Ljava/util/Map;

    .prologue
    .line 229
    const/4 v0, 0x0

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 230
    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "response"    # Ljava/util/Map;

    .prologue
    .line 236
    const/4 v0, 0x0

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 237
    const-string v0, "AdSupport"

    const-string v1, "AppLovin: Reward rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "response"    # Ljava/util/Map;

    .prologue
    .line 221
    invoke-static {}, Lcom/firsttouchgames/fts15/AdSupport;->access$100()[I

    move-result-object v0

    sget v1, Lcom/firsttouchgames/fts15/AdSupport;->miZone:I

    aget v0, v0, v1

    invoke-static {v0}, Lcom/firsttouchgames/fts15/AdSupport;->access$000(I)V

    .line 222
    const-string v0, "AdSupport"

    const-string v1, "AppLovin: Reward received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "errorCode"    # I

    .prologue
    .line 244
    const/4 v0, 0x0

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 245
    return-void
.end method
