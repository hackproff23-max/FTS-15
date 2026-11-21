.class final Lcom/firsttouchgames/fts15/ChartboostManager$1;
.super Lcom/chartboost/sdk/ChartboostDelegate;
.source "ChartboostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/fts15/ChartboostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/chartboost/sdk/ChartboostDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/firsttouchgames/fts15/ChartboostManager;->access$002(Z)Z

    .line 39
    const-string v0, "Chartboost"

    const-string v1, "Did cache interstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "Chartboost"

    const-string v1, "didCacheRewardedVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "Chartboost"

    const-string v1, "Did click interstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, "Chartboost"

    const-string v1, "didClickRewardedVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/firsttouchgames/fts15/ChartboostManager;->access$102(Z)Z

    .line 63
    const-string v0, "Chartboost"

    const-string v1, "Did close interstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v0, "Chartboost"

    const-string v1, "didCloseRewardedVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Lcom/firsttouchgames/fts15/AdSupport;->SetStatusIdle()V

    .line 116
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "iReward"    # I

    .prologue
    .line 129
    const-string v0, "Chartboost"

    const-string v1, "didCompleteRewardedVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/firsttouchgames/fts15/AdSupport;->RewardUserFromZone()V

    .line 131
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {v0}, Lcom/firsttouchgames/fts15/ChartboostManager;->access$002(Z)Z

    .line 53
    invoke-static {v0}, Lcom/firsttouchgames/fts15/ChartboostManager;->access$102(Z)Z

    .line 56
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "Chartboost"

    const-string v1, "didDismissRewardedVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/firsttouchgames/fts15/ChartboostManager;->access$102(Z)Z

    .line 76
    const-string v0, "Chartboost"

    const-string v1, "Did show interstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string v0, "Chartboost"

    const-string v1, "didDisplayRewardedVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/firsttouchgames/fts15/ChartboostManager;->access$002(Z)Z

    .line 46
    const-string v0, "Chartboost"

    const-string v1, "Did fail to load insterstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 100
    const-string v0, "Chartboost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "didFailToLoadRewardedVideo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/firsttouchgames/fts15/AdSupport;->SetStatusIdle()V

    .line 102
    return-void
.end method

.method public didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V
    .locals 0
    .param p1, "sURL"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .prologue
    .line 83
    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayRewardedVideo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public willDisplayVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "Chartboost"

    const-string v1, "willDisplayVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Lcom/firsttouchgames/fts15/AdSupport;->SetStatusPlaying()V

    .line 144
    return-void
.end method
