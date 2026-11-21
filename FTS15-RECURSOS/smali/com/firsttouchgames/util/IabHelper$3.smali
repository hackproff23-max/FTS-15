.class Lcom/firsttouchgames/util/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firsttouchgames/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/firsttouchgames/util/IabHelper$OnConsumeFinishedListener;Lcom/firsttouchgames/util/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firsttouchgames/util/IabHelper;

.field final synthetic val$multiListener:Lcom/firsttouchgames/util/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lcom/firsttouchgames/util/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/firsttouchgames/util/IabHelper;Ljava/util/List;Lcom/firsttouchgames/util/IabHelper$OnConsumeFinishedListener;Lcom/firsttouchgames/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0

    .prologue
    .line 949
    iput-object p1, p0, Lcom/firsttouchgames/util/IabHelper$3;->this$0:Lcom/firsttouchgames/util/IabHelper;

    iput-object p2, p0, Lcom/firsttouchgames/util/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/firsttouchgames/util/IabHelper$3;->val$singleListener:Lcom/firsttouchgames/util/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/firsttouchgames/util/IabHelper$3;->val$multiListener:Lcom/firsttouchgames/util/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 951
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/firsttouchgames/util/IabResult;>;"
    iget-object v4, p0, Lcom/firsttouchgames/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firsttouchgames/util/Purchase;

    .line 954
    .local v2, "purchase":Lcom/firsttouchgames/util/Purchase;
    :try_start_0
    iget-object v4, p0, Lcom/firsttouchgames/util/IabHelper$3;->this$0:Lcom/firsttouchgames/util/IabHelper;

    invoke-virtual {v4, v2}, Lcom/firsttouchgames/util/IabHelper;->consume(Lcom/firsttouchgames/util/Purchase;)V

    .line 955
    new-instance v4, Lcom/firsttouchgames/util/IabResult;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successful consume of sku "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/firsttouchgames/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/firsttouchgames/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/firsttouchgames/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, "ex":Lcom/firsttouchgames/util/IabException;
    invoke-virtual {v0}, Lcom/firsttouchgames/util/IabException;->getResult()Lcom/firsttouchgames/util/IabResult;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 962
    .end local v0    # "ex":Lcom/firsttouchgames/util/IabException;
    .end local v2    # "purchase":Lcom/firsttouchgames/util/Purchase;
    :cond_0
    iget-object v4, p0, Lcom/firsttouchgames/util/IabHelper$3;->this$0:Lcom/firsttouchgames/util/IabHelper;

    invoke-virtual {v4}, Lcom/firsttouchgames/util/IabHelper;->flagEndAsync()V

    .line 963
    iget-object v4, p0, Lcom/firsttouchgames/util/IabHelper$3;->this$0:Lcom/firsttouchgames/util/IabHelper;

    iget-boolean v4, v4, Lcom/firsttouchgames/util/IabHelper;->mDisposed:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/firsttouchgames/util/IabHelper$3;->val$singleListener:Lcom/firsttouchgames/util/IabHelper$OnConsumeFinishedListener;

    if-eqz v4, :cond_1

    .line 964
    iget-object v4, p0, Lcom/firsttouchgames/util/IabHelper$3;->this$0:Lcom/firsttouchgames/util/IabHelper;

    iget-object v4, v4, Lcom/firsttouchgames/util/IabHelper;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/firsttouchgames/util/IabHelper$3$1;

    invoke-direct {v5, p0, v3}, Lcom/firsttouchgames/util/IabHelper$3$1;-><init>(Lcom/firsttouchgames/util/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 970
    :cond_1
    iget-object v4, p0, Lcom/firsttouchgames/util/IabHelper$3;->this$0:Lcom/firsttouchgames/util/IabHelper;

    iget-boolean v4, v4, Lcom/firsttouchgames/util/IabHelper;->mDisposed:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/firsttouchgames/util/IabHelper$3;->val$multiListener:Lcom/firsttouchgames/util/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v4, :cond_2

    .line 971
    iget-object v4, p0, Lcom/firsttouchgames/util/IabHelper$3;->this$0:Lcom/firsttouchgames/util/IabHelper;

    iget-object v4, v4, Lcom/firsttouchgames/util/IabHelper;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/firsttouchgames/util/IabHelper$3$2;

    invoke-direct {v5, p0, v3}, Lcom/firsttouchgames/util/IabHelper$3$2;-><init>(Lcom/firsttouchgames/util/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 977
    :cond_2
    return-void
.end method
