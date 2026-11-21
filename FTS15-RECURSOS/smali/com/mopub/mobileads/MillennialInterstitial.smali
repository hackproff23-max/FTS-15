.class Lcom/mopub/mobileads/MillennialInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "MillennialInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;
    }
.end annotation


# static fields
.field public static final APID_KEY:Ljava/lang/String; = "adUnitID"


# instance fields
.field private mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private mMillennialInterstitial:Lcom/millennialmedia/android/MMInterstitial;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MillennialInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/MillennialInterstitial;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MillennialInterstitial;)Lcom/millennialmedia/android/MMInterstitial;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/MillennialInterstitial;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial;->mMillennialInterstitial:Lcom/millennialmedia/android/MMInterstitial;

    return-object v0
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .locals 1
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
    .line 71
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "adUnitID"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customEventInterstitialListener"    # Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
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
    .line 28
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/mopub/mobileads/MillennialInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 31
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/MillennialInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    const-string v2, "adUnitID"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    .local v0, "apid":Ljava/lang/String;
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->initialize(Landroid/content/Context;)V

    .line 40
    const-string v2, "location"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 41
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 42
    invoke-static {v1}, Lcom/millennialmedia/android/MMRequest;->setUserLocation(Landroid/location/Location;)V

    .line 45
    :cond_0
    new-instance v2, Lcom/millennialmedia/android/MMInterstitial;

    invoke-direct {v2, p1}, Lcom/millennialmedia/android/MMInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mopub/mobileads/MillennialInterstitial;->mMillennialInterstitial:Lcom/millennialmedia/android/MMInterstitial;

    .line 46
    iget-object v2, p0, Lcom/mopub/mobileads/MillennialInterstitial;->mMillennialInterstitial:Lcom/millennialmedia/android/MMInterstitial;

    new-instance v3, Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;

    invoke-direct {v3, p0}, Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;-><init>(Lcom/mopub/mobileads/MillennialInterstitial;)V

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 47
    iget-object v2, p0, Lcom/mopub/mobileads/MillennialInterstitial;->mMillennialInterstitial:Lcom/millennialmedia/android/MMInterstitial;

    new-instance v3, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v3}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMInterstitial;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 48
    iget-object v2, p0, Lcom/mopub/mobileads/MillennialInterstitial;->mMillennialInterstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v2, v0}, Lcom/millennialmedia/android/MMInterstitial;->setApid(Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/mopub/mobileads/MillennialInterstitial;->mMillennialInterstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMInterstitial;->fetch()V

    .line 50
    .end local v0    # "apid":Ljava/lang/String;
    .end local v1    # "location":Landroid/location/Location;
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v2, p0, Lcom/mopub/mobileads/MillennialInterstitial;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v2, v3}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial;->mMillennialInterstitial:Lcom/millennialmedia/android/MMInterstitial;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial;->mMillennialInterstitial:Lcom/millennialmedia/android/MMInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected showInterstitial()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial;->mMillennialInterstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial;->mMillennialInterstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Tried to show a Millennial interstitial ad before it finished loading. Please try again."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
