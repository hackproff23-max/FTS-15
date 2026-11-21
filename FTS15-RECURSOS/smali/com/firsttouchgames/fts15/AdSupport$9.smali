.class final Lcom/firsttouchgames/fts15/AdSupport$9;
.super Ljava/lang/Object;
.source "AdSupport.java"

# interfaces
.implements Lcom/flurry/android/ads/FlurryAdInterstitialListener;


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
    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppExit(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 0
    .param p1, "adInterstitial"    # Lcom/flurry/android/ads/FlurryAdInterstitial;

    .prologue
    .line 659
    return-void
.end method

.method public onClicked(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 0
    .param p1, "adInterstitial"    # Lcom/flurry/android/ads/FlurryAdInterstitial;

    .prologue
    .line 619
    return-void
.end method

.method public onClose(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 1
    .param p1, "adInterstitial"    # Lcom/flurry/android/ads/FlurryAdInterstitial;

    .prologue
    .line 631
    const/4 v0, 0x3

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 632
    invoke-virtual {p1}, Lcom/flurry/android/ads/FlurryAdInterstitial;->fetchAd()V

    .line 633
    return-void
.end method

.method public onDisplay(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 0
    .param p1, "adInterstitial"    # Lcom/flurry/android/ads/FlurryAdInterstitial;

    .prologue
    .line 652
    return-void
.end method

.method public onError(Lcom/flurry/android/ads/FlurryAdInterstitial;Lcom/flurry/android/ads/FlurryAdErrorType;I)V
    .locals 3
    .param p1, "adInterstitial"    # Lcom/flurry/android/ads/FlurryAdInterstitial;
    .param p2, "adErrorType"    # Lcom/flurry/android/ads/FlurryAdErrorType;
    .param p3, "errorCode"    # I

    .prologue
    .line 665
    const/16 v0, 0x14

    if-ne p3, v0, :cond_0

    .line 666
    const-string v0, "AdSupport"

    const-string v1, "Flurry - No ads available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    return-void

    .line 668
    :cond_0
    const-string v0, "AdSupport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flurry - Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFetched(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 2
    .param p1, "adInterstitial"    # Lcom/flurry/android/ads/FlurryAdInterstitial;

    .prologue
    .line 639
    const-string v0, "AdSupport"

    const-string v1, "Flurry onFetched():"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void
.end method

.method public onRendered(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 0
    .param p1, "adInterstitial"    # Lcom/flurry/android/ads/FlurryAdInterstitial;

    .prologue
    .line 646
    return-void
.end method

.method public onVideoCompleted(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 2
    .param p1, "adInterstitial"    # Lcom/flurry/android/ads/FlurryAdInterstitial;

    .prologue
    .line 624
    const/4 v0, 0x3

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 625
    invoke-static {}, Lcom/firsttouchgames/fts15/AdSupport;->access$100()[I

    move-result-object v0

    sget v1, Lcom/firsttouchgames/fts15/AdSupport;->miZone:I

    aget v0, v0, v1

    invoke-static {v0}, Lcom/firsttouchgames/fts15/AdSupport;->access$000(I)V

    .line 626
    return-void
.end method
