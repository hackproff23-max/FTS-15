.class final Lcom/firsttouchgames/fts15/IAP$2;
.super Ljava/lang/Object;
.source "IAP.java"

# interfaces
.implements Lcom/firsttouchgames/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firsttouchgames/fts15/IAP;->Init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/firsttouchgames/util/IabResult;)V
    .locals 4
    .param p1, "result"    # Lcom/firsttouchgames/util/IabResult;

    .prologue
    .line 264
    invoke-virtual {p1}, Lcom/firsttouchgames/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem setting up in-app billing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/fts15/IAP;->complain(Ljava/lang/String;)V

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->mHelper:Lcom/firsttouchgames/util/IabHelper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/firsttouchgames/util/IabHelper;->handler:Landroid/os/Handler;

    .line 274
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->mHelper:Lcom/firsttouchgames/util/IabHelper;

    const/4 v1, 0x1

    sget-object v2, Lcom/firsttouchgames/fts15/IAP;->mSkuInfo:Ljava/util/List;

    sget-object v3, Lcom/firsttouchgames/fts15/IAP;->mGotInventoryListener:Lcom/firsttouchgames/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/firsttouchgames/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/firsttouchgames/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method
