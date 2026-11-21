.class final Lcom/firsttouchgames/fts15/MoPubManager$4;
.super Ljava/lang/Object;
.source "MoPubManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firsttouchgames/fts15/MoPubManager;->RemoveBannerAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->access$600()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setVisibility(I)V

    .line 212
    return-void
.end method
