.class final Lcom/firsttouchgames/fts15/MoPubManager$1;
.super Ljava/lang/Object;
.source "MoPubManager.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


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
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 63
    const-string v0, "MoPubManager"

    const-string v1, "onBannerClicked()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 75
    const-string v0, "MoPubManager"

    const-string v1, "onBannerCollapsed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 69
    const-string v0, "MoPubManager"

    const-string v1, "onBannerExpanded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 3
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    const/4 v2, 0x0

    .line 55
    const-string v0, "MoPubManager"

    const-string v1, "onBannerFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {v2}, Lcom/firsttouchgames/fts15/MoPubManager;->access$102(Z)Z

    .line 57
    invoke-static {v2}, Lcom/firsttouchgames/fts15/MoPubManager;->access$202(Z)Z

    .line 58
    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 3
    .param p1, "banner"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    const/4 v2, 0x0

    .line 39
    const-string v0, "MoPubManager"

    const-string v1, "onBannerLoaded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1, v2}, Lcom/mopub/mobileads/MoPubView;->setVisibility(I)V

    .line 44
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/firsttouchgames/fts15/MoPubManager;->access$102(Z)Z

    .line 49
    :goto_0
    invoke-static {v2}, Lcom/firsttouchgames/fts15/MoPubManager;->access$202(Z)Z

    .line 50
    return-void

    .line 47
    :cond_0
    invoke-static {v2}, Lcom/firsttouchgames/fts15/MoPubManager;->access$102(Z)Z

    goto :goto_0
.end method
