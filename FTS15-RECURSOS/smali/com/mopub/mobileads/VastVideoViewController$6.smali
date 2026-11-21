.class Lcom/mopub/mobileads/VastVideoViewController$6;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->createVideoView(Landroid/content/Context;)Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$videoView:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/content/Context;Landroid/widget/VideoView;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->val$videoView:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 374
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1300(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 375
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$900(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 377
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastVideoViewController;->videoCompleted(Z)V

    .line 378
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0, v3}, Lcom/mopub/mobileads/VastVideoViewController;->access$1402(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    .line 382
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1500(Lcom/mopub/mobileads/VastVideoViewController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1600(Lcom/mopub/mobileads/VastVideoViewController;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1700(Lcom/mopub/mobileads/VastVideoViewController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$100(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getCompleteTrackers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 384
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0, v3}, Lcom/mopub/mobileads/VastVideoViewController;->access$1702(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->val$videoView:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1800(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1800(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    :cond_1
    return-void
.end method
