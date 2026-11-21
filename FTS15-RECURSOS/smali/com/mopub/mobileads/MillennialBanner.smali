.class Lcom/mopub/mobileads/MillennialBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "MillennialBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MillennialBanner$MillennialBannerRequestListener;
    }
.end annotation


# static fields
.field public static final AD_HEIGHT_KEY:Ljava/lang/String; = "adHeight"

.field public static final AD_WIDTH_KEY:Ljava/lang/String; = "adWidth"

.field public static final APID_KEY:Ljava/lang/String; = "adUnitID"


# instance fields
.field private mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

.field private mMillennialAdView:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MillennialBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/MillennialBanner;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MillennialBanner;)Lcom/millennialmedia/android/MMAdView;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/MillennialBanner;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    return-object v0
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v1, "adWidth"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    const-string v1, "adHeight"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    const-string v1, "adUnitID"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method getMMAdView()Lcom/millennialmedia/android/MMAdView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    return-object v0
.end method

.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customEventBannerListener"    # Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/mopub/mobileads/MillennialBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 36
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/MillennialBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    const-string v4, "adUnitID"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    .local v0, "apid":Ljava/lang/String;
    const-string v4, "adWidth"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 39
    .local v3, "width":I
    const-string v4, "adHeight"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 45
    .local v1, "height":I
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->initialize(Landroid/content/Context;)V

    .line 47
    new-instance v4, Lcom/millennialmedia/android/MMAdView;

    invoke-direct {v4, p1}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mopub/mobileads/MillennialBanner;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    .line 48
    iget-object v4, p0, Lcom/mopub/mobileads/MillennialBanner;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    new-instance v5, Lcom/mopub/mobileads/MillennialBanner$MillennialBannerRequestListener;

    invoke-direct {v5, p0}, Lcom/mopub/mobileads/MillennialBanner$MillennialBannerRequestListener;-><init>(Lcom/mopub/mobileads/MillennialBanner;)V

    invoke-virtual {v4, v5}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 50
    iget-object v4, p0, Lcom/mopub/mobileads/MillennialBanner;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v4, v0}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcom/mopub/mobileads/MillennialBanner;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v4, v3}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

    .line 52
    iget-object v4, p0, Lcom/mopub/mobileads/MillennialBanner;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v4, v1}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

    .line 54
    const-string v4, "location"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 55
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_0

    .line 56
    invoke-static {v2}, Lcom/millennialmedia/android/MMRequest;->setUserLocation(Landroid/location/Location;)V

    .line 59
    :cond_0
    iget-object v4, p0, Lcom/mopub/mobileads/MillennialBanner;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    new-instance v5, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v5}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    invoke-virtual {v4, v5}, Lcom/millennialmedia/android/MMAdView;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 60
    iget-object v4, p0, Lcom/mopub/mobileads/MillennialBanner;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->getDefaultAdId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 61
    iget-object v4, p0, Lcom/mopub/mobileads/MillennialBanner;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-static {v4}, Lcom/mopub/mobileads/AdViewController;->setShouldHonorServerDimensions(Landroid/view/View;)V

    .line 62
    iget-object v4, p0, Lcom/mopub/mobileads/MillennialBanner;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v4}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    .line 63
    .end local v0    # "apid":Ljava/lang/String;
    .end local v1    # "height":I
    .end local v2    # "location":Landroid/location/Location;
    .end local v3    # "width":I
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v4, p0, Lcom/mopub/mobileads/MillennialBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v5, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v4, v5}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 72
    :cond_0
    return-void
.end method
