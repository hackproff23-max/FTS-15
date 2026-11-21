.class final Lcom/firsttouchgames/fts15/IAP$4;
.super Ljava/lang/Object;
.source "IAP.java"

# interfaces
.implements Lcom/firsttouchgames/util/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/fts15/IAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/firsttouchgames/util/Purchase;Lcom/firsttouchgames/util/IabResult;)V
    .locals 2
    .param p1, "purchase"    # Lcom/firsttouchgames/util/Purchase;
    .param p2, "result"    # Lcom/firsttouchgames/util/IabResult;

    .prologue
    .line 331
    invoke-virtual {p2}, Lcom/firsttouchgames/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->mInventory:Lcom/firsttouchgames/util/Inventory;

    invoke-virtual {p1}, Lcom/firsttouchgames/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/util/Inventory;->erasePurchase(Ljava/lang/String;)V

    .line 336
    const/16 v0, 0x8

    sput v0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    .line 345
    :goto_0
    return-void

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while consuming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/fts15/IAP;->complain(Ljava/lang/String;)V

    .line 341
    const/16 v0, 0xa

    sput v0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    goto :goto_0
.end method
