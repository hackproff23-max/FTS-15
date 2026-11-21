.class final Lcom/firsttouchgames/fts15/IAP$3;
.super Ljava/lang/Object;
.source "IAP.java"

# interfaces
.implements Lcom/firsttouchgames/util/IabHelper$QueryInventoryFinishedListener;


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
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/firsttouchgames/util/IabResult;Lcom/firsttouchgames/util/Inventory;)V
    .locals 2
    .param p1, "result"    # Lcom/firsttouchgames/util/IabResult;
    .param p2, "inventory"    # Lcom/firsttouchgames/util/Inventory;

    .prologue
    .line 288
    invoke-virtual {p1}, Lcom/firsttouchgames/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to query inventory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/fts15/IAP;->complain(Ljava/lang/String;)V

    .line 291
    const/16 v0, 0xc

    sput v0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    .line 307
    :goto_0
    return-void

    .line 295
    :cond_0
    sput-object p2, Lcom/firsttouchgames/fts15/IAP;->mInventory:Lcom/firsttouchgames/util/Inventory;

    .line 297
    sget v0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 299
    const/4 v0, 0x6

    sput v0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    .line 306
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/firsttouchgames/fts15/IAP;->mbSetupFinished:Z

    goto :goto_0

    .line 303
    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    goto :goto_1
.end method
