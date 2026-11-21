.class Lcom/firsttouchgames/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firsttouchgames/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/firsttouchgames/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firsttouchgames/util/IabHelper;

.field final synthetic val$listener:Lcom/firsttouchgames/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/firsttouchgames/util/IabHelper;ZLjava/util/List;Lcom/firsttouchgames/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/firsttouchgames/util/IabHelper$2;->this$0:Lcom/firsttouchgames/util/IabHelper;

    iput-boolean p2, p0, Lcom/firsttouchgames/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/firsttouchgames/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/firsttouchgames/util/IabHelper$2;->val$listener:Lcom/firsttouchgames/util/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 615
    new-instance v3, Lcom/firsttouchgames/util/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/firsttouchgames/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 616
    .local v3, "result":Lcom/firsttouchgames/util/IabResult;
    const/4 v1, 0x0

    .line 618
    .local v1, "inv":Lcom/firsttouchgames/util/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/firsttouchgames/util/IabHelper$2;->this$0:Lcom/firsttouchgames/util/IabHelper;

    iget-boolean v6, p0, Lcom/firsttouchgames/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/firsttouchgames/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/firsttouchgames/util/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/firsttouchgames/util/Inventory;
    :try_end_0
    .catch Lcom/firsttouchgames/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 624
    :goto_0
    iget-object v5, p0, Lcom/firsttouchgames/util/IabHelper$2;->this$0:Lcom/firsttouchgames/util/IabHelper;

    invoke-virtual {v5}, Lcom/firsttouchgames/util/IabHelper;->flagEndAsync()V

    .line 626
    move-object v4, v3

    .line 627
    .local v4, "result_f":Lcom/firsttouchgames/util/IabResult;
    move-object v2, v1

    .line 628
    .local v2, "inv_f":Lcom/firsttouchgames/util/Inventory;
    iget-object v5, p0, Lcom/firsttouchgames/util/IabHelper$2;->this$0:Lcom/firsttouchgames/util/IabHelper;

    iget-boolean v5, v5, Lcom/firsttouchgames/util/IabHelper;->mDisposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/firsttouchgames/util/IabHelper$2;->val$listener:Lcom/firsttouchgames/util/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 629
    iget-object v5, p0, Lcom/firsttouchgames/util/IabHelper$2;->this$0:Lcom/firsttouchgames/util/IabHelper;

    iget-object v5, v5, Lcom/firsttouchgames/util/IabHelper;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/firsttouchgames/util/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/firsttouchgames/util/IabHelper$2$1;-><init>(Lcom/firsttouchgames/util/IabHelper$2;Lcom/firsttouchgames/util/IabResult;Lcom/firsttouchgames/util/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 635
    :cond_0
    return-void

    .line 620
    .end local v2    # "inv_f":Lcom/firsttouchgames/util/Inventory;
    .end local v4    # "result_f":Lcom/firsttouchgames/util/IabResult;
    :catch_0
    move-exception v0

    .line 621
    .local v0, "ex":Lcom/firsttouchgames/util/IabException;
    invoke-virtual {v0}, Lcom/firsttouchgames/util/IabException;->getResult()Lcom/firsttouchgames/util/IabResult;

    move-result-object v3

    goto :goto_0
.end method
