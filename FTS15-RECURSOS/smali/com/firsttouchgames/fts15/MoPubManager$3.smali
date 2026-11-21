.class final Lcom/firsttouchgames/fts15/MoPubManager$3;
.super Ljava/lang/Object;
.source "MoPubManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firsttouchgames/fts15/MoPubManager;->LoadBannerAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->access$600()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setVisibility(I)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->access$600()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    .line 172
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/firsttouchgames/fts15/MoPubManager;->access$202(Z)Z

    goto :goto_0
.end method
