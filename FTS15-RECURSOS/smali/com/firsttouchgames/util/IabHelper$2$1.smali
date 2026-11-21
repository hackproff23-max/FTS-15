.class Lcom/firsttouchgames/util/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firsttouchgames/util/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firsttouchgames/util/IabHelper$2;

.field final synthetic val$inv_f:Lcom/firsttouchgames/util/Inventory;

.field final synthetic val$result_f:Lcom/firsttouchgames/util/IabResult;


# direct methods
.method constructor <init>(Lcom/firsttouchgames/util/IabHelper$2;Lcom/firsttouchgames/util/IabResult;Lcom/firsttouchgames/util/Inventory;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/firsttouchgames/util/IabHelper$2$1;->this$1:Lcom/firsttouchgames/util/IabHelper$2;

    iput-object p2, p0, Lcom/firsttouchgames/util/IabHelper$2$1;->val$result_f:Lcom/firsttouchgames/util/IabResult;

    iput-object p3, p0, Lcom/firsttouchgames/util/IabHelper$2$1;->val$inv_f:Lcom/firsttouchgames/util/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/firsttouchgames/util/IabHelper$2$1;->this$1:Lcom/firsttouchgames/util/IabHelper$2;

    iget-object v0, v0, Lcom/firsttouchgames/util/IabHelper$2;->val$listener:Lcom/firsttouchgames/util/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/firsttouchgames/util/IabHelper$2$1;->val$result_f:Lcom/firsttouchgames/util/IabResult;

    iget-object v2, p0, Lcom/firsttouchgames/util/IabHelper$2$1;->val$inv_f:Lcom/firsttouchgames/util/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/firsttouchgames/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/firsttouchgames/util/IabResult;Lcom/firsttouchgames/util/Inventory;)V

    .line 632
    return-void
.end method
