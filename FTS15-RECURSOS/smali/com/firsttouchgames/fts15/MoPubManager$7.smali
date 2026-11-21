.class final Lcom/firsttouchgames/fts15/MoPubManager$7;
.super Ljava/lang/Object;
.source "MoPubManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firsttouchgames/fts15/MoPubManager;->Destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->access$600()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 278
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->access$500()Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 279
    return-void
.end method
