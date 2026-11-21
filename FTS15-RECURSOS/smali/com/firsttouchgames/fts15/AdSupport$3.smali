.class final Lcom/firsttouchgames/fts15/AdSupport$3;
.super Ljava/lang/Object;
.source "AdSupport.java"

# interfaces
.implements Lcom/unity3d/ads/android/IUnityAdsListener;


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
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchCompleted()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "AdSupport"

    const-string v1, "onFetchCompleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public onFetchFailed()V
    .locals 2

    .prologue
    .line 197
    const-string v0, "AdSupport"

    const-string v1, "onFetchFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "AdSupport"

    const-string v1, "onHide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x0

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 164
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "AdSupport"

    const-string v1, "onShow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x2

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 157
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "itemKey"    # Ljava/lang/String;
    .param p2, "bSkipped"    # Z

    .prologue
    .line 175
    if-eqz p2, :cond_0

    .line 177
    const-string v0, "AdSupport"

    const-string v1, "onVideoCompleted() - video skipped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 186
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string v0, "AdSupport"

    const-string v1, "onVideoCompleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lcom/firsttouchgames/fts15/AdSupport;->access$100()[I

    move-result-object v0

    sget v1, Lcom/firsttouchgames/fts15/AdSupport;->miZone:I

    aget v0, v0, v1

    invoke-static {v0}, Lcom/firsttouchgames/fts15/AdSupport;->access$000(I)V

    .line 184
    const/4 v0, 0x3

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    goto :goto_0
.end method

.method public onVideoStarted()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "AdSupport"

    const-string v1, "onVideoStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method
