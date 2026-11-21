.class Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1;
.super Ljava/lang/Object;
.source "MraidController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1;->this$0:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 397
    iget-object v4, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1;->this$0:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    invoke-static {v4}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->access$300(Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;)[Landroid/view/View;

    move-result-object v0

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 399
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 400
    :cond_0
    iget-object v4, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1;->this$0:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    invoke-static {v4}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->access$400(Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;)V

    .line 397
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1$1;

    invoke-direct {v5, p0, v3}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1$1;-><init>(Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1

    .line 416
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method
