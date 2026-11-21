.class public Lcom/firsttouchgames/fts15/MoPubManager;
.super Ljava/lang/Object;
.source "MoPubManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MoPubManager"

.field private static mActivity:Lcom/firsttouchgames/fts15/MainActivity;

.field private static mAdBanner:Lcom/mopub/mobileads/MoPubView;

.field private static mAdInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field static m_MoPubInterstitialListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

.field static m_MoPubListener:Lcom/mopub/mobileads/MoPubView$BannerAdListener;

.field private static mbDisplayedBannerAd:Z

.field private static mbDisplayedInterstitialAd:Z

.field private static mbLoadedBannerAd:Z

.field private static mbLoadingBannerAd:Z

.field private static miLoadAttemptCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbLoadedBannerAd:Z

    .line 27
    sput-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbLoadingBannerAd:Z

    .line 28
    sput-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbDisplayedBannerAd:Z

    .line 30
    sput-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbDisplayedInterstitialAd:Z

    .line 32
    sput v0, Lcom/firsttouchgames/fts15/MoPubManager;->miLoadAttemptCounter:I

    .line 34
    new-instance v0, Lcom/firsttouchgames/fts15/MoPubManager$1;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/MoPubManager$1;-><init>()V

    sput-object v0, Lcom/firsttouchgames/fts15/MoPubManager;->m_MoPubListener:Lcom/mopub/mobileads/MoPubView$BannerAdListener;

    .line 79
    new-instance v0, Lcom/firsttouchgames/fts15/MoPubManager$2;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/MoPubManager$2;-><init>()V

    sput-object v0, Lcom/firsttouchgames/fts15/MoPubManager;->m_MoPubInterstitialListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Destroy()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 265
    sput-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbDisplayedBannerAd:Z

    .line 266
    sput-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbLoadedBannerAd:Z

    .line 267
    sput-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbLoadingBannerAd:Z

    .line 269
    sput-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbDisplayedInterstitialAd:Z

    .line 271
    sget-object v0, Lcom/firsttouchgames/fts15/MoPubManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/firsttouchgames/fts15/MoPubManager$7;

    invoke-direct {v2}, Lcom/firsttouchgames/fts15/MoPubManager$7;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/fts15/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 281
    return-void
.end method

.method public static DisplayFullscreenAd()Z
    .locals 3

    .prologue
    .line 230
    sget-object v0, Lcom/firsttouchgames/fts15/MoPubManager;->mAdInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/firsttouchgames/fts15/MoPubManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/firsttouchgames/fts15/MoPubManager$6;

    invoke-direct {v2}, Lcom/firsttouchgames/fts15/MoPubManager$6;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/fts15/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 240
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    .line 243
    :cond_0
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->LoadFullscreenAd()V

    .line 245
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static GetBannerAdHeight()I
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->IsBannerAdDisplaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lcom/firsttouchgames/fts15/MoPubManager;->mAdBanner:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdHeight()I

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsBannerAdDisplaying()Z
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/firsttouchgames/fts15/MoPubManager;->mAdBanner:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsFullscreenAvailable()Z
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/firsttouchgames/fts15/MoPubManager;->mAdInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    .line 258
    :cond_0
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->LoadFullscreenAd()V

    .line 260
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsFullscreenDisplaying()Z
    .locals 1

    .prologue
    .line 250
    sget-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbDisplayedInterstitialAd:Z

    return v0
.end method

.method public static LoadBannerAd()V
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x1

    sput-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbDisplayedBannerAd:Z

    .line 157
    sget-object v0, Lcom/firsttouchgames/fts15/MoPubManager;->mAdBanner:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/firsttouchgames/fts15/MoPubManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/firsttouchgames/fts15/MoPubManager$3;

    invoke-direct {v2}, Lcom/firsttouchgames/fts15/MoPubManager$3;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/fts15/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 177
    :cond_0
    return-void
.end method

.method public static LoadFullscreenAd()V
    .locals 3

    .prologue
    .line 219
    sget-object v0, Lcom/firsttouchgames/fts15/MoPubManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/firsttouchgames/fts15/MoPubManager$5;

    invoke-direct {v2}, Lcom/firsttouchgames/fts15/MoPubManager$5;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/fts15/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method public static RemoveBannerAd()V
    .locals 3

    .prologue
    .line 201
    const/4 v0, 0x0

    sput-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbDisplayedBannerAd:Z

    .line 203
    sget-object v0, Lcom/firsttouchgames/fts15/MoPubManager;->mAdBanner:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/firsttouchgames/fts15/MoPubManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/firsttouchgames/fts15/MoPubManager$4;

    invoke-direct {v2}, Lcom/firsttouchgames/fts15/MoPubManager$4;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/fts15/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 215
    :cond_0
    return-void
.end method

.method public static Setup(Lcom/mopub/mobileads/MoPubView;Lcom/firsttouchgames/fts15/MainActivity;)V
    .locals 7
    .param p0, "moPubView"    # Lcom/mopub/mobileads/MoPubView;
    .param p1, "activity"    # Lcom/firsttouchgames/fts15/MainActivity;

    .prologue
    .line 125
    sput-object p1, Lcom/firsttouchgames/fts15/MoPubManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    .line 127
    sput-object p0, Lcom/firsttouchgames/fts15/MoPubManager;->mAdBanner:Lcom/mopub/mobileads/MoPubView;

    .line 128
    sget-object v2, Lcom/firsttouchgames/fts15/MoPubManager;->mAdBanner:Lcom/mopub/mobileads/MoPubView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/MoPubView;->setVisibility(I)V

    .line 129
    sget-object v2, Lcom/firsttouchgames/fts15/MoPubManager;->mAdBanner:Lcom/mopub/mobileads/MoPubView;

    const-string v3, "6f37a9e5f3e7448e820818db34f552fd"

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 130
    sget-object v2, Lcom/firsttouchgames/fts15/MoPubManager;->mAdBanner:Lcom/mopub/mobileads/MoPubView;

    sget-object v3, Lcom/firsttouchgames/fts15/MoPubManager;->m_MoPubListener:Lcom/mopub/mobileads/MoPubView$BannerAdListener;

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 132
    new-instance v2, Lcom/mopub/mobileads/MoPubInterstitial;

    sget-object v3, Lcom/firsttouchgames/fts15/MoPubManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    const-string v4, "aaae6f807e2b47b0b9a4acf48d48f749"

    invoke-direct {v2, v3, v4}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v2, Lcom/firsttouchgames/fts15/MoPubManager;->mAdInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 133
    sget-object v2, Lcom/firsttouchgames/fts15/MoPubManager;->mAdInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    sget-object v3, Lcom/firsttouchgames/fts15/MoPubManager;->m_MoPubInterstitialListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 134
    sget-object v2, Lcom/firsttouchgames/fts15/MoPubManager;->mAdInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 136
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 139
    :try_start_0
    sget-object v2, Lcom/firsttouchgames/fts15/MoPubManager;->mAdBanner:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setLayerType"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/graphics/Paint;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 140
    .local v1, "setLayerTypeMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 141
    sget-object v2, Lcom/firsttouchgames/fts15/MoPubManager;->mAdBanner:Lcom/mopub/mobileads/MoPubView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 152
    .end local v1    # "setLayerTypeMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static UnloadAd()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 181
    sput-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbLoadedBannerAd:Z

    .line 182
    sput-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbLoadingBannerAd:Z

    .line 183
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->RemoveBannerAd()V

    .line 184
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbDisplayedBannerAd:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbLoadedBannerAd:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 17
    sput-boolean p0, Lcom/firsttouchgames/fts15/MoPubManager;->mbLoadedBannerAd:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/firsttouchgames/fts15/MoPubManager;->mbLoadingBannerAd:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 17
    sput-boolean p0, Lcom/firsttouchgames/fts15/MoPubManager;->mbLoadingBannerAd:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 17
    sput-boolean p0, Lcom/firsttouchgames/fts15/MoPubManager;->mbDisplayedInterstitialAd:Z

    return p0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/firsttouchgames/fts15/MoPubManager;->miLoadAttemptCounter:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 17
    sput p0, Lcom/firsttouchgames/fts15/MoPubManager;->miLoadAttemptCounter:I

    return p0
.end method

.method static synthetic access$404()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/firsttouchgames/fts15/MoPubManager;->miLoadAttemptCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/firsttouchgames/fts15/MoPubManager;->miLoadAttemptCounter:I

    return v0
.end method

.method static synthetic access$500()Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/firsttouchgames/fts15/MoPubManager;->mAdInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object v0
.end method

.method static synthetic access$600()Lcom/mopub/mobileads/MoPubView;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/firsttouchgames/fts15/MoPubManager;->mAdBanner:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method
