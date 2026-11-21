.class Lcom/mopub/mobileads/VastVideoViewController$3;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->createVideoProgressCheckerRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 248
    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v6}, Lcom/mopub/mobileads/VastVideoViewController;->access$300(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/VideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->getDuration()I

    move-result v5

    .line 249
    .local v5, "videoLength":I
    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v6}, Lcom/mopub/mobileads/VastVideoViewController;->access$300(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/VideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 251
    .local v0, "currentPosition":I
    if-lez v5, :cond_3

    .line 252
    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v6, v0, v5}, Lcom/mopub/mobileads/VastVideoViewController;->access$400(Lcom/mopub/mobileads/VastVideoViewController;II)Ljava/util/List;

    move-result-object v4

    .line 254
    .local v4, "trackersToTrack":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v2, "trackUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/mobileads/VastTracker;

    .line 257
    .local v3, "tracker":Lcom/mopub/mobileads/VastTracker;
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTracker;->getTrackingUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTracker;->setTracked()V

    goto :goto_0

    .line 260
    .end local v3    # "tracker":Lcom/mopub/mobileads/VastTracker;
    :cond_0
    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v6}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 263
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "trackUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    iget-object v7, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v7}, Lcom/mopub/mobileads/VastVideoViewController;->access$300(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/VideoView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/VideoView;->getDuration()I

    move-result v7

    invoke-static {v6, v7}, Lcom/mopub/mobileads/VastVideoViewController;->access$500(Lcom/mopub/mobileads/VastVideoViewController;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 264
    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v6}, Lcom/mopub/mobileads/VastVideoViewController;->access$700(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoToolbar;

    move-result-object v6

    iget-object v7, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v7}, Lcom/mopub/mobileads/VastVideoViewController;->access$600(Lcom/mopub/mobileads/VastVideoViewController;)I

    move-result v7

    iget-object v8, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v8}, Lcom/mopub/mobileads/VastVideoViewController;->access$300(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/VideoView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/mopub/mobileads/VastVideoToolbar;->updateCountdownWidget(I)V

    .line 267
    :cond_2
    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v6}, Lcom/mopub/mobileads/VastVideoViewController;->access$800(Lcom/mopub/mobileads/VastVideoViewController;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 268
    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v6}, Lcom/mopub/mobileads/VastVideoViewController;->access$900(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 272
    .end local v4    # "trackersToTrack":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_3
    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v6}, Lcom/mopub/mobileads/VastVideoViewController;->access$700(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoToolbar;

    move-result-object v6

    iget-object v7, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v7}, Lcom/mopub/mobileads/VastVideoViewController;->access$300(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/VideoView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/VideoView;->getDuration()I

    move-result v7

    iget-object v8, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v8}, Lcom/mopub/mobileads/VastVideoViewController;->access$300(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/VideoView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/mopub/mobileads/VastVideoToolbar;->updateDurationWidget(I)V

    .line 274
    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v6}, Lcom/mopub/mobileads/VastVideoViewController;->access$1000(Lcom/mopub/mobileads/VastVideoViewController;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 275
    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v6}, Lcom/mopub/mobileads/VastVideoViewController;->access$1200(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v7}, Lcom/mopub/mobileads/VastVideoViewController;->access$1100(Lcom/mopub/mobileads/VastVideoViewController;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    :cond_4
    return-void
.end method
