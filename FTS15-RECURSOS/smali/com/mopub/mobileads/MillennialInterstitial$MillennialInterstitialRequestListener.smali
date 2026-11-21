.class Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;
.super Ljava/lang/Object;
.source "MillennialInterstitial.java"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MillennialInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MillennialInterstitialRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MillennialInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MillennialInterstitial;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;->this$0:Lcom/mopub/mobileads/MillennialInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 83
    const-string v0, "MoPub"

    const-string v1, "Millennial interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;->this$0:Lcom/mopub/mobileads/MillennialInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialInterstitial;->access$000(Lcom/mopub/mobileads/MillennialInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 85
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 77
    const-string v0, "MoPub"

    const-string v1, "Showing Millennial interstitial ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;->this$0:Lcom/mopub/mobileads/MillennialInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialInterstitial;->access$000(Lcom/mopub/mobileads/MillennialInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 79
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 0
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 87
    return-void
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 116
    const-string v0, "MoPub"

    const-string v1, "Millennial interstitial clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;->this$0:Lcom/mopub/mobileads/MillennialInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialInterstitial;->access$000(Lcom/mopub/mobileads/MillennialInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 118
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;->this$0:Lcom/mopub/mobileads/MillennialInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialInterstitial;->access$100(Lcom/mopub/mobileads/MillennialInterstitial;)Lcom/millennialmedia/android/MMInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "MoPub"

    const-string v1, "Millennial interstitial ad loaded successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;->this$0:Lcom/mopub/mobileads/MillennialInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialInterstitial;->access$000(Lcom/mopub/mobileads/MillennialInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Millennial interstitial request completed, but no ad was available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;->this$0:Lcom/mopub/mobileads/MillennialInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialInterstitial;->access$000(Lcom/mopub/mobileads/MillennialInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 2
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;
    .param p2, "e"    # Lcom/millennialmedia/android/MMException;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;->this$0:Lcom/mopub/mobileads/MillennialInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialInterstitial;->access$100(Lcom/mopub/mobileads/MillennialInterstitial;)Lcom/millennialmedia/android/MMInterstitial;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;->this$0:Lcom/mopub/mobileads/MillennialInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialInterstitial;->access$000(Lcom/mopub/mobileads/MillennialInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 112
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getCode()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;->this$0:Lcom/mopub/mobileads/MillennialInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialInterstitial;->access$100(Lcom/mopub/mobileads/MillennialInterstitial;)Lcom/millennialmedia/android/MMInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    const-string v0, "MoPub"

    const-string v1, "Millennial interstitial loaded successfully from cache."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;->this$0:Lcom/mopub/mobileads/MillennialInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialInterstitial;->access$000(Lcom/mopub/mobileads/MillennialInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "MoPub"

    const-string v1, "Millennial interstitial ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial$MillennialInterstitialRequestListener;->this$0:Lcom/mopub/mobileads/MillennialInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialInterstitial;->access$000(Lcom/mopub/mobileads/MillennialInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method
