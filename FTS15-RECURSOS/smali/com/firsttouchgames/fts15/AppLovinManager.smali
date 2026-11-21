.class public Lcom/firsttouchgames/fts15/AppLovinManager;
.super Ljava/lang/Object;
.source "AppLovinManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "AppLovinManager"

.field private static appLovinAdDisplayDelegate:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private static mActivity:Lcom/firsttouchgames/fts15/MainActivity;

.field private static mCachedAd:Lcom/applovin/sdk/AppLovinAd;

.field private static mIsDisplaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/firsttouchgames/fts15/AppLovinManager;->mCachedAd:Lcom/applovin/sdk/AppLovinAd;

    .line 17
    new-instance v0, Lcom/firsttouchgames/fts15/AppLovinManager$1;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/AppLovinManager$1;-><init>()V

    sput-object v0, Lcom/firsttouchgames/fts15/AppLovinManager;->appLovinAdDisplayDelegate:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CacheInterstitial()V
    .locals 3

    .prologue
    .line 54
    sget-object v0, Lcom/firsttouchgames/fts15/AppLovinManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/firsttouchgames/fts15/AppLovinManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/firsttouchgames/fts15/AppLovinManager$2;

    invoke-direct {v2}, Lcom/firsttouchgames/fts15/AppLovinManager$2;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 72
    :cond_0
    return-void
.end method

.method public static Initialise(Lcom/firsttouchgames/fts15/MainActivity;)V
    .locals 1
    .param p0, "activity"    # Lcom/firsttouchgames/fts15/MainActivity;

    .prologue
    .line 37
    sput-object p0, Lcom/firsttouchgames/fts15/AppLovinManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    .line 38
    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/firsttouchgames/fts15/AppLovinManager;->mIsDisplaying:Z

    .line 41
    invoke-static {}, Lcom/firsttouchgames/fts15/AppLovinManager;->CacheInterstitial()V

    .line 42
    return-void
.end method

.method public static IsAvailable()Z
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/firsttouchgames/fts15/AppLovinManager;->mCachedAd:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsDisplaying()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/firsttouchgames/fts15/AppLovinManager;->mIsDisplaying:Z

    return v0
.end method

.method public static IsInitialised()Z
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/firsttouchgames/fts15/AppLovinManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ShowInterstitial()V
    .locals 3

    .prologue
    .line 76
    sget-object v1, Lcom/firsttouchgames/fts15/AppLovinManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    sget-object v2, Lcom/firsttouchgames/fts15/AppLovinManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-static {v1, v2}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    .line 77
    .local v0, "adDialog":Lcom/applovin/adview/AppLovinInterstitialAdDialog;
    sget-object v1, Lcom/firsttouchgames/fts15/AppLovinManager;->appLovinAdDisplayDelegate:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 78
    sget-object v1, Lcom/firsttouchgames/fts15/AppLovinManager;->mCachedAd:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    .line 79
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 8
    sput-boolean p0, Lcom/firsttouchgames/fts15/AppLovinManager;->mIsDisplaying:Z

    return p0
.end method

.method static synthetic access$102(Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;
    .locals 0
    .param p0, "x0"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 8
    sput-object p0, Lcom/firsttouchgames/fts15/AppLovinManager;->mCachedAd:Lcom/applovin/sdk/AppLovinAd;

    return-object p0
.end method
