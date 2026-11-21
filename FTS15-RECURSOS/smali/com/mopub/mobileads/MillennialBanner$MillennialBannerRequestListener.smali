.class Lcom/mopub/mobileads/MillennialBanner$MillennialBannerRequestListener;
.super Ljava/lang/Object;
.source "MillennialBanner.java"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MillennialBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MillennialBannerRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MillennialBanner;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MillennialBanner;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mopub/mobileads/MillennialBanner$MillennialBannerRequestListener;->this$0:Lcom/mopub/mobileads/MillennialBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 94
    const-string v0, "MoPub"

    const-string v1, "Millennial banner ad closed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner$MillennialBannerRequestListener;->this$0:Lcom/mopub/mobileads/MillennialBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialBanner;->access$000(Lcom/mopub/mobileads/MillennialBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerCollapsed()V

    .line 96
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 88
    const-string v0, "MoPub"

    const-string v1, "Millennial banner ad Launched."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner$MillennialBannerRequestListener;->this$0:Lcom/mopub/mobileads/MillennialBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialBanner;->access$000(Lcom/mopub/mobileads/MillennialBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 90
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 0
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 99
    return-void
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner$MillennialBannerRequestListener;->this$0:Lcom/mopub/mobileads/MillennialBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialBanner;->access$000(Lcom/mopub/mobileads/MillennialBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 116
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 103
    const-string v0, "MoPub"

    const-string v1, "Millennial banner ad loaded successfully. Showing ad..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner$MillennialBannerRequestListener;->this$0:Lcom/mopub/mobileads/MillennialBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialBanner;->access$000(Lcom/mopub/mobileads/MillennialBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MillennialBanner$MillennialBannerRequestListener;->this$0:Lcom/mopub/mobileads/MillennialBanner;

    invoke-static {v1}, Lcom/mopub/mobileads/MillennialBanner;->access$100(Lcom/mopub/mobileads/MillennialBanner;)Lcom/millennialmedia/android/MMAdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 2
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;
    .param p2, "e"    # Lcom/millennialmedia/android/MMException;

    .prologue
    .line 109
    const-string v0, "MoPub"

    const-string v1, "Millennial banner ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner$MillennialBannerRequestListener;->this$0:Lcom/mopub/mobileads/MillennialBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialBanner;->access$000(Lcom/mopub/mobileads/MillennialBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 111
    return-void
.end method
