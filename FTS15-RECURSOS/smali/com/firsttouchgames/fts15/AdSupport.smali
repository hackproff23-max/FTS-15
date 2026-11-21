.class public Lcom/firsttouchgames/fts15/AdSupport;
.super Ljava/lang/Object;
.source "AdSupport.java"


# static fields
.field public static final AD_STATE_FINISHED:I = 0x3

.field public static final AD_STATE_IDLE:I = 0x0

.field public static final AD_STATE_OFFERING:I = 0x1

.field public static final AD_STATE_PLAYING:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "AdSupport"

.field static iStatus:I

.field private static mAppLovinVideo:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

.field private static mFlurryAd:[Lcom/flurry/android/ads/FlurryAdInterstitial;

.field private static m_Act:Lcom/firsttouchgames/fts15/MainActivity;

.field static m_AdColonyListener:Lcom/jirbo/adcolony/AdColonyV4VCListener;

.field static m_AppLovinPlaybackListener:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field static m_AppLovinRewardListener:Lcom/applovin/sdk/AppLovinAdRewardListener;

.field static m_AppLovinVideoAdListener:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field static m_UnityAdsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

.field private static m_bAdColonyInitialised:Z

.field private static m_bAppLovinInitialised:Z

.field private static m_bApplifierImpactInitialised:Z

.field private static m_bChartboostInitialised:Z

.field private static m_bFlurrydAdsInitialised:Z

.field private static m_flurryListener:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

.field private static m_iRewards:[I

.field static m_sListerner:Lcom/jirbo/adcolony/AdColonyAdListener;

.field public static m_strAdColonyZoneIDs:[Ljava/lang/String;

.field public static m_strFlurryAdSpaces:[Ljava/lang/String;

.field public static miZone:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x7

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 59
    sput v3, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 63
    sput v3, Lcom/firsttouchgames/fts15/AdSupport;->miZone:I

    .line 65
    sput-boolean v3, Lcom/firsttouchgames/fts15/AdSupport;->m_bAdColonyInitialised:Z

    .line 66
    sput-boolean v3, Lcom/firsttouchgames/fts15/AdSupport;->m_bApplifierImpactInitialised:Z

    .line 67
    sput-boolean v3, Lcom/firsttouchgames/fts15/AdSupport;->m_bFlurrydAdsInitialised:Z

    .line 68
    sput-boolean v3, Lcom/firsttouchgames/fts15/AdSupport;->m_bAppLovinInitialised:Z

    .line 69
    sput-boolean v3, Lcom/firsttouchgames/fts15/AdSupport;->m_bChartboostInitialised:Z

    .line 73
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "vze008223fe3924c2396"

    aput-object v1, v0, v3

    const-string v1, "vzfaaffeca06414b05ba"

    aput-object v1, v0, v6

    const-string v1, "vz5c6501cd82f64b0bae"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "vz300248945ea84229b0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vz2689752fc35b4d8fb2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vz1050437bd36446a5a4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vzdb100f85502a4407b5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_strAdColonyZoneIDs:[Ljava/lang/String;

    .line 84
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "FTS15MainMenu"

    aput-object v1, v0, v3

    const-string v1, "FTS15Shop"

    aput-object v1, v0, v6

    const-string v1, "FTS15FullTime"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "FTS15SeasonHub"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FTS15MatchTickets"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "FTS15HelpText"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FTS15PauseMenu"

    aput-object v2, v0, v1

    sput-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_strFlurryAdSpaces:[Ljava/lang/String;

    .line 95
    new-array v0, v5, [Lcom/flurry/android/ads/FlurryAdInterstitial;

    aput-object v4, v0, v3

    aput-object v4, v0, v6

    aput-object v4, v0, v7

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    aput-object v4, v0, v1

    const/4 v1, 0x6

    aput-object v4, v0, v1

    sput-object v0, Lcom/firsttouchgames/fts15/AdSupport;->mFlurryAd:[Lcom/flurry/android/ads/FlurryAdInterstitial;

    .line 100
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_iRewards:[I

    .line 115
    new-instance v0, Lcom/firsttouchgames/fts15/AdSupport$1;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/AdSupport$1;-><init>()V

    sput-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_sListerner:Lcom/jirbo/adcolony/AdColonyAdListener;

    .line 133
    new-instance v0, Lcom/firsttouchgames/fts15/AdSupport$2;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/AdSupport$2;-><init>()V

    sput-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_AdColonyListener:Lcom/jirbo/adcolony/AdColonyV4VCListener;

    .line 150
    new-instance v0, Lcom/firsttouchgames/fts15/AdSupport$3;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/AdSupport$3;-><init>()V

    sput-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_UnityAdsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 201
    new-instance v0, Lcom/firsttouchgames/fts15/AdSupport$4;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/AdSupport$4;-><init>()V

    sput-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_AppLovinVideoAdListener:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 216
    new-instance v0, Lcom/firsttouchgames/fts15/AdSupport$5;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/AdSupport$5;-><init>()V

    sput-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_AppLovinRewardListener:Lcom/applovin/sdk/AppLovinAdRewardListener;

    .line 257
    new-instance v0, Lcom/firsttouchgames/fts15/AdSupport$6;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/AdSupport$6;-><init>()V

    sput-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_AppLovinPlaybackListener:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 613
    new-instance v0, Lcom/firsttouchgames/fts15/AdSupport$9;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/AdSupport$9;-><init>()V

    sput-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_flurryListener:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    return-void

    .line 100
    :array_0
    .array-data 4
        0x1e
        0x1e
        0x1e
        0x1e
        0x1e
        0x1e
        0x1e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AdOnScreen()Z
    .locals 2

    .prologue
    .line 552
    sget v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static DisplayAppLovinVideo(I)V
    .locals 4
    .param p0, "iZone"    # I

    .prologue
    .line 482
    sget-object v0, Lcom/firsttouchgames/fts15/AdSupport;->mAppLovinVideo:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    if-eqz v0, :cond_0

    .line 484
    sput p0, Lcom/firsttouchgames/fts15/AdSupport;->miZone:I

    .line 485
    sget-object v0, Lcom/firsttouchgames/fts15/AdSupport;->mAppLovinVideo:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    sget-object v1, Lcom/firsttouchgames/fts15/AdSupport;->m_Act:Lcom/firsttouchgames/fts15/MainActivity;

    sget-object v2, Lcom/firsttouchgames/fts15/AdSupport;->m_AppLovinRewardListener:Lcom/applovin/sdk/AppLovinAdRewardListener;

    sget-object v3, Lcom/firsttouchgames/fts15/AdSupport;->m_AppLovinPlaybackListener:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 487
    :cond_0
    return-void
.end method

.method public static FlurryDisplayAd(I)V
    .locals 2
    .param p0, "iAdSpace"    # I

    .prologue
    .line 464
    const-string v0, "AdSupport"

    const-string v1, "Display Flury Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    sget-object v0, Lcom/firsttouchgames/fts15/AdSupport;->mFlurryAd:[Lcom/flurry/android/ads/FlurryAdInterstitial;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdInterstitial;->displayAd()V

    .line 466
    return-void
.end method

.method public static InitialiseAdColony()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    sput-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bAdColonyInitialised:Z

    .line 344
    return-void
.end method

.method public static InitialiseAppLovin()V
    .locals 2

    .prologue
    .line 358
    sget-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bAppLovinInitialised:Z

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x1

    sput-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bAppLovinInitialised:Z

    .line 362
    sget-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_Act:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Landroid/content/Context;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/fts15/AdSupport;->mAppLovinVideo:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 363
    sget-object v0, Lcom/firsttouchgames/fts15/AdSupport;->mAppLovinVideo:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    sget-object v1, Lcom/firsttouchgames/fts15/AdSupport;->m_AppLovinVideoAdListener:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 365
    :cond_0
    return-void
.end method

.method public static InitialiseApplifierImpact()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    sput-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bApplifierImpactInitialised:Z

    .line 354
    return-void
.end method

.method public static InitialiseChartboost()V
    .locals 1

    .prologue
    .line 369
    sget-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bChartboostInitialised:Z

    if-nez v0, :cond_0

    .line 371
    const/4 v0, 0x1

    sput-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bChartboostInitialised:Z

    .line 372
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    .line 374
    :cond_0
    return-void
.end method

.method public static InitialiseFlurryAds()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    sput-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bFlurrydAdsInitialised:Z

    .line 349
    return-void
.end method

.method public static IsAdColonyAvailable(I)Z
    .locals 4
    .param p0, "iZone"    # I

    .prologue
    const/4 v1, 0x0

    .line 509
    sget-boolean v2, Lcom/firsttouchgames/fts15/AdSupport;->m_bAdColonyInitialised:Z

    if-eqz v2, :cond_0

    .line 511
    new-instance v2, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    sget-object v3, Lcom/firsttouchgames/fts15/AdSupport;->m_strAdColonyZoneIDs:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-direct {v2, v3}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/firsttouchgames/fts15/AdSupport;->m_sListerner:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    .line 512
    .local v0, "ad":Lcom/jirbo/adcolony/AdColonyV4VCAd;
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getAvailableViews()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 516
    .end local v0    # "ad":Lcom/jirbo/adcolony/AdColonyV4VCAd;
    :cond_0
    return v1
.end method

.method public static IsAdColonyInitialised()Z
    .locals 1

    .prologue
    .line 572
    sget-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bAdColonyInitialised:Z

    return v0
.end method

.method public static IsAppLovinInitialised()Z
    .locals 1

    .prologue
    .line 587
    sget-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bAppLovinInitialised:Z

    return v0
.end method

.method public static IsAppLovinVideoAvailable()Z
    .locals 1

    .prologue
    .line 542
    sget-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bAppLovinInitialised:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/firsttouchgames/fts15/AdSupport;->mAppLovinVideo:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsApplifierImpactAvailable()Z
    .locals 1

    .prologue
    .line 537
    sget-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bApplifierImpactInitialised:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShowAds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsApplifierImpactInitialised()Z
    .locals 1

    .prologue
    .line 577
    sget-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bApplifierImpactInitialised:Z

    return v0
.end method

.method public static IsChartboostInitialised()Z
    .locals 1

    .prologue
    .line 592
    sget-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bChartboostInitialised:Z

    return v0
.end method

.method public static IsChartboostVideoAvailable()Z
    .locals 1

    .prologue
    .line 547
    sget-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bChartboostInitialised:Z

    if-eqz v0, :cond_0

    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsFlurryAdAvailable(I)Z
    .locals 2
    .param p0, "iAdSpace"    # I

    .prologue
    const/4 v0, 0x0

    .line 521
    sget-boolean v1, Lcom/firsttouchgames/fts15/AdSupport;->m_bFlurrydAdsInitialised:Z

    if-eqz v1, :cond_0

    .line 523
    sget-object v1, Lcom/firsttouchgames/fts15/AdSupport;->mFlurryAd:[Lcom/flurry/android/ads/FlurryAdInterstitial;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Lcom/flurry/android/ads/FlurryAdInterstitial;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    const/4 v0, 0x1

    .line 532
    :cond_0
    :goto_0
    return v0

    .line 527
    :cond_1
    sget-object v1, Lcom/firsttouchgames/fts15/AdSupport;->mFlurryAd:[Lcom/flurry/android/ads/FlurryAdInterstitial;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Lcom/flurry/android/ads/FlurryAdInterstitial;->fetchAd()V

    goto :goto_0
.end method

.method public static IsFlurryAdsInitialised()Z
    .locals 1

    .prologue
    .line 582
    sget-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bFlurrydAdsInitialised:Z

    return v0
.end method

.method public static OnPause()V
    .locals 0

    .prologue
    .line 328
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->pause()V

    .line 329
    return-void
.end method

.method public static OnResume(Landroid/app/Activity;)V
    .locals 0
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 337
    invoke-static {p0}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 338
    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 339
    return-void
.end method

.method public static OnStart()V
    .locals 5

    .prologue
    .line 312
    const/4 v0, 0x0

    .local v0, "iAdSpace":I
    :goto_0
    sget-object v1, Lcom/firsttouchgames/fts15/AdSupport;->m_strFlurryAdSpaces:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 314
    sget-object v1, Lcom/firsttouchgames/fts15/AdSupport;->mFlurryAd:[Lcom/flurry/android/ads/FlurryAdInterstitial;

    new-instance v2, Lcom/flurry/android/ads/FlurryAdInterstitial;

    sget-object v3, Lcom/firsttouchgames/fts15/AdSupport;->m_Act:Lcom/firsttouchgames/fts15/MainActivity;

    sget-object v4, Lcom/firsttouchgames/fts15/AdSupport;->m_strFlurryAdSpaces:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v2, v3, v4}, Lcom/flurry/android/ads/FlurryAdInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 315
    sget-object v1, Lcom/firsttouchgames/fts15/AdSupport;->mFlurryAd:[Lcom/flurry/android/ads/FlurryAdInterstitial;

    aget-object v1, v1, v0

    sget-object v2, Lcom/firsttouchgames/fts15/AdSupport;->m_flurryListener:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    invoke-virtual {v1, v2}, Lcom/flurry/android/ads/FlurryAdInterstitial;->setListener(Lcom/flurry/android/ads/FlurryAdInterstitialListener;)V

    .line 316
    sget-object v1, Lcom/firsttouchgames/fts15/AdSupport;->mFlurryAd:[Lcom/flurry/android/ads/FlurryAdInterstitial;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/flurry/android/ads/FlurryAdInterstitial;->fetchAd()V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/firsttouchgames/fts15/AdSupport;->m_bFlurrydAdsInitialised:Z

    .line 324
    return-void
.end method

.method public static OnStop()V
    .locals 0

    .prologue
    .line 333
    return-void
.end method

.method public static PlayAdColonyVideo(I)V
    .locals 3
    .param p0, "iZone"    # I

    .prologue
    .line 422
    sget-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_Act:Lcom/firsttouchgames/fts15/MainActivity;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/firsttouchgames/fts15/AdSupport$7;

    invoke-direct {v2, p0}, Lcom/firsttouchgames/fts15/AdSupport$7;-><init>(I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/fts15/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 436
    return-void
.end method

.method public static PlayAdColonyVideo(IZZ)V
    .locals 3
    .param p0, "iZone"    # I
    .param p1, "bPrePopup"    # Z
    .param p2, "bPostPopUp"    # Z

    .prologue
    .line 440
    sget-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_Act:Lcom/firsttouchgames/fts15/MainActivity;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/firsttouchgames/fts15/AdSupport$8;

    invoke-direct {v2, p0, p1, p2}, Lcom/firsttouchgames/fts15/AdSupport$8;-><init>(IZZ)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/fts15/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method

.method private static RewardUser(I)V
    .locals 1
    .param p0, "iReward"    # I

    .prologue
    .line 503
    invoke-static {p0}, Lcom/firsttouchgames/fts15/JNI;->rewardUser(I)V

    .line 504
    const/4 v0, 0x0

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->miZone:I

    .line 505
    return-void
.end method

.method public static RewardUserFromZone()V
    .locals 2

    .prologue
    .line 497
    sget-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_iRewards:[I

    sget v1, Lcom/firsttouchgames/fts15/AdSupport;->miZone:I

    aget v0, v0, v1

    invoke-static {v0}, Lcom/firsttouchgames/fts15/JNI;->rewardUser(I)V

    .line 498
    const/4 v0, 0x0

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->miZone:I

    .line 499
    return-void
.end method

.method public static SetStatus(I)V
    .locals 0
    .param p0, "iState"    # I

    .prologue
    .line 567
    sput p0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 568
    return-void
.end method

.method public static SetStatusIdle()V
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 558
    return-void
.end method

.method public static SetStatusPlaying()V
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x2

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 563
    return-void
.end method

.method public static ShowApplifierImpact(I)V
    .locals 3
    .param p0, "iZone"    # I

    .prologue
    .line 470
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShowAds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    sput p0, Lcom/firsttouchgames/fts15/AdSupport;->miZone:I

    .line 474
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 475
    .local v0, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "noOfferScreen"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->show(Ljava/util/Map;)Z

    .line 478
    .end local v0    # "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public static ShowChartboostVideo(I)V
    .locals 1
    .param p0, "iZone"    # I

    .prologue
    .line 491
    sput p0, Lcom/firsttouchgames/fts15/AdSupport;->miZone:I

    .line 492
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showRewardedVideo(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public static ShutdownAdColony()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    sput-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bAdColonyInitialised:Z

    .line 379
    return-void
.end method

.method public static ShutdownAppLovin()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    sput-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bAppLovinInitialised:Z

    .line 394
    return-void
.end method

.method public static ShutdownApplifierImpact()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    sput-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bApplifierImpactInitialised:Z

    .line 389
    return-void
.end method

.method public static ShutdownChartboost()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    sput-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bChartboostInitialised:Z

    .line 399
    return-void
.end method

.method public static ShutdownFlurryAds()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    sput-boolean v0, Lcom/firsttouchgames/fts15/AdSupport;->m_bFlurrydAdsInitialised:Z

    .line 384
    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 39
    invoke-static {p0}, Lcom/firsttouchgames/fts15/AdSupport;->RewardUser(I)V

    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_iRewards:[I

    return-object v0
.end method

.method static synthetic access$200()Lcom/applovin/adview/AppLovinIncentivizedInterstitial;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/firsttouchgames/fts15/AdSupport;->mAppLovinVideo:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    return-object v0
.end method

.method public static setRewardAmount(II)V
    .locals 1
    .param p0, "iZone"    # I
    .param p1, "iReward"    # I

    .prologue
    .line 597
    sget-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_iRewards:[I

    aput p1, v0, p0

    .line 598
    return-void
.end method


# virtual methods
.method public OnCreate(Lcom/firsttouchgames/fts15/MainActivity;)V
    .locals 9
    .param p1, "act"    # Lcom/firsttouchgames/fts15/MainActivity;

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 278
    const-string v0, "version:1.0,store:google"

    const-string v1, "app813523c2c97a42b795"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/firsttouchgames/fts15/AdSupport;->m_strAdColonyZoneIDs:[Ljava/lang/String;

    aget-object v3, v3, v6

    aput-object v3, v2, v6

    sget-object v3, Lcom/firsttouchgames/fts15/AdSupport;->m_strAdColonyZoneIDs:[Ljava/lang/String;

    aget-object v3, v3, v7

    aput-object v3, v2, v7

    sget-object v3, Lcom/firsttouchgames/fts15/AdSupport;->m_strAdColonyZoneIDs:[Ljava/lang/String;

    aget-object v3, v3, v4

    aput-object v3, v2, v4

    sget-object v3, Lcom/firsttouchgames/fts15/AdSupport;->m_strAdColonyZoneIDs:[Ljava/lang/String;

    aget-object v3, v3, v5

    aput-object v3, v2, v5

    sget-object v3, Lcom/firsttouchgames/fts15/AdSupport;->m_strAdColonyZoneIDs:[Ljava/lang/String;

    aget-object v3, v3, v8

    aput-object v3, v2, v8

    const/4 v3, 0x5

    sget-object v4, Lcom/firsttouchgames/fts15/AdSupport;->m_strAdColonyZoneIDs:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/firsttouchgames/fts15/AdSupport;->m_strAdColonyZoneIDs:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    invoke-static {p1, v0, v1, v2}, Lcom/jirbo/adcolony/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 291
    sput-boolean v7, Lcom/firsttouchgames/fts15/AdSupport;->m_bAdColonyInitialised:Z

    .line 293
    sget-object v0, Lcom/firsttouchgames/fts15/AdSupport;->m_AdColonyListener:Lcom/jirbo/adcolony/AdColonyV4VCListener;

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->addV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V

    .line 296
    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAds;->setDebugMode(Z)V

    .line 297
    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAds;->setTestMode(Z)V

    .line 302
    const-string v0, "15554"

    sget-object v1, Lcom/firsttouchgames/fts15/AdSupport;->m_UnityAdsListener:Lcom/unity3d/ads/android/IUnityAdsListener;

    invoke-static {p1, v0, v1}, Lcom/unity3d/ads/android/UnityAds;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/IUnityAdsListener;)V

    .line 303
    sput-boolean v7, Lcom/firsttouchgames/fts15/AdSupport;->m_bApplifierImpactInitialised:Z

    .line 305
    sput v6, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 307
    sput-object p1, Lcom/firsttouchgames/fts15/AdSupport;->m_Act:Lcom/firsttouchgames/fts15/MainActivity;

    .line 308
    return-void
.end method
