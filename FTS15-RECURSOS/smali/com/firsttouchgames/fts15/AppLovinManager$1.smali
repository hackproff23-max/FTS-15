.class final Lcom/firsttouchgames/fts15/AppLovinManager$1;
.super Ljava/lang/Object;
.source "AppLovinManager.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/fts15/AppLovinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 22
    const-string v0, "AppLovinManager"

    const-string v1, "adDisplayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/firsttouchgames/fts15/AppLovinManager;->access$002(Z)Z

    .line 24
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 29
    const-string v0, "AppLovinManager"

    const-string v1, "adHidden"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lcom/firsttouchgames/fts15/AppLovinManager;->CacheInterstitial()V

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/firsttouchgames/fts15/AppLovinManager;->access$002(Z)Z

    .line 32
    return-void
.end method
