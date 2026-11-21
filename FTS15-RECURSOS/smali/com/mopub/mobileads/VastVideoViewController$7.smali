.class Lcom/mopub/mobileads/VastVideoViewController$7;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 398
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2, p1, p2, p3}, Lcom/mopub/mobileads/VastVideoViewController;->retryMediaPlayer(Landroid/media/MediaPlayer;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    :goto_0
    return v0

    .line 401
    :cond_0
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v2}, Lcom/mopub/mobileads/VastVideoViewController;->access$1300(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 402
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v2}, Lcom/mopub/mobileads/VastVideoViewController;->access$900(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 403
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/VastVideoViewController;->videoError(Z)V

    .line 404
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v2, v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1502(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    move v0, v1

    .line 405
    goto :goto_0
.end method
