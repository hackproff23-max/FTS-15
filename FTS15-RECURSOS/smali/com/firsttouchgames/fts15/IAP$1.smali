.class final Lcom/firsttouchgames/fts15/IAP$1;
.super Ljava/lang/Object;
.source "IAP.java"

# interfaces
.implements Lcom/firsttouchgames/util/IabHelper$OnIabPurchaseFinishedListener;


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
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/firsttouchgames/util/IabResult;Lcom/firsttouchgames/util/Purchase;)V
    .locals 1
    .param p1, "result"    # Lcom/firsttouchgames/util/IabResult;
    .param p2, "purchase"    # Lcom/firsttouchgames/util/Purchase;

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/firsttouchgames/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x7

    sput v0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    .line 230
    :goto_0
    return-void

    .line 211
    :cond_0
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->mInventory:Lcom/firsttouchgames/util/Inventory;

    invoke-virtual {v0, p2}, Lcom/firsttouchgames/util/Inventory;->addPurchase(Lcom/firsttouchgames/util/Purchase;)V

    .line 228
    const/4 v0, 0x6

    sput v0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    goto :goto_0
.end method
