.class final Lcom/firsttouchgames/fts15/MoPubManager$2;
.super Ljava/lang/Object;
.source "MoPubManager.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/fts15/MoPubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 111
    const-string v0, "MoPubManager"

    const-string v1, "onInterstitialClicked()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 117
    const-string v0, "MoPubManager"

    const-string v1, "onInterstitialDismissed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/firsttouchgames/fts15/MoPubManager;->access$302(Z)Z

    .line 119
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 120
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    const/4 v3, 0x0

    .line 84
    const-string v0, "MoPubManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterstitialFailed() error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {v3}, Lcom/firsttouchgames/fts15/MoPubManager;->access$302(Z)Z

    .line 87
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->access$404()I

    .line 88
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->access$400()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 89
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->access$500()Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {v3}, Lcom/firsttouchgames/fts15/MoPubManager;->access$402(I)I

    goto :goto_0
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 97
    const-string v0, "MoPubManager"

    const-string v1, "onInterstitialLoaded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/firsttouchgames/fts15/MoPubManager;->access$402(I)I

    .line 99
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 104
    const-string v0, "MoPubManager"

    const-string v1, "onInterstitialShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/firsttouchgames/fts15/MoPubManager;->access$302(Z)Z

    .line 106
    return-void
.end method
