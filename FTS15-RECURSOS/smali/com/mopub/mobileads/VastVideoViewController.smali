.class public Lcom/mopub/mobileads/VastVideoViewController;
.super Lcom/mopub/mobileads/BaseVideoViewController;
.source "VastVideoViewController.java"

# interfaces
.implements Lcom/mopub/common/DownloadTask$DownloadTaskListener;


# static fields
.field static final DEFAULT_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x1388

.field static final MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x3e80

.field private static final MAX_VIDEO_RETRIES:I = 0x1

.field private static final MOPUB_BROWSER_REQUEST_CODE:I = 0x1

.field static final VAST_VIDEO_CONFIGURATION:Ljava/lang/String; = "vast_video_configuration"

.field private static final VIDEO_PROGRESS_TIMER_CHECKER_DELAY:J = 0x32L

.field private static final VIDEO_VIEW_FILE_PERMISSION_ERROR:I = -0x80000000


# instance fields
.field private final mClickThroughListener:Landroid/view/View$OnTouchListener;

.field private final mCompanionAdImageView:Landroid/widget/ImageView;

.field private mCompletionTrackerFired:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsVideoFinishedPlaying:Z

.field private mIsVideoProgressShouldBeChecked:Z

.field private mSeekerPositionOnPause:I

.field private mShowCloseButtonDelay:I

.field private mShowCloseButtonEventFired:Z

.field private final mVastCompanionAd:Lcom/mopub/mobileads/util/vast/VastCompanionAd;

.field private final mVastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

.field private final mVastVideoToolbar:Lcom/mopub/mobileads/VastVideoToolbar;

.field private mVideoError:Z

.field private final mVideoProgressCheckerRunnable:Ljava/lang/Runnable;

.field private mVideoRetries:I

.field private final mVideoView:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "broadcastIdentifier"    # J
    .param p5, "baseVideoViewControllerListener"    # Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v1, p5}, Lcom/mopub/mobileads/BaseVideoViewController;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    .line 80
    const/16 v1, 0x1388

    iput v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 97
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHandler:Landroid/os/Handler;

    .line 98
    iput-boolean v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoProgressShouldBeChecked:Z

    .line 99
    const/4 v1, -0x1

    iput v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    .line 100
    iput v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoRetries:I

    .line 102
    const-string v1, "vast_video_configuration"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 103
    .local v0, "serializable":Ljava/io/Serializable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    .end local v0    # "serializable":Ljava/io/Serializable;
    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    .line 109
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-virtual {v1}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 110
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VastVideoConfiguration does not have a video disk path"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    .restart local v0    # "serializable":Ljava/io/Serializable;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VastVideoConfiguration is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v0    # "serializable":Ljava/io/Serializable;
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-virtual {v1}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getVastCompanionAd()Lcom/mopub/mobileads/util/vast/VastCompanionAd;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAd:Lcom/mopub/mobileads/util/vast/VastCompanionAd;

    .line 115
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VastVideoViewController$1;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    .line 128
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->createVideoBackground(Landroid/content/Context;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->createVideoView(Landroid/content/Context;)Landroid/widget/VideoView;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    .line 131
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 133
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->createVastVideoToolBar(Landroid/content/Context;)Lcom/mopub/mobileads/VastVideoToolbar;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoToolbar:Lcom/mopub/mobileads/VastVideoToolbar;

    .line 134
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoToolbar:Lcom/mopub/mobileads/VastVideoToolbar;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionAdImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCompanionAdImageView:Landroid/widget/ImageView;

    .line 137
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->createVideoProgressCheckerRunnable()Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoProgressCheckerRunnable:Ljava/lang/Runnable;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->shouldAllowClickThrough()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoProgressShouldBeChecked:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/mopub/mobileads/VastVideoViewController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoProgressCheckerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->stopProgressChecker()V

    return-void
.end method

.method static synthetic access$1402(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mopub/mobileads/VastVideoViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->remainingProgressTrackerCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCompletionTrackerFired:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCompletionTrackerFired:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCompanionAdImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/util/vast/VastCompanionAd;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAd:Lcom/mopub/mobileads/util/vast/VastCompanionAd;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/VastVideoViewController;II)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/VastVideoViewController;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/VastVideoViewController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->isLongVideo(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mopub/mobileads/VastVideoViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    return v0
.end method

.method static synthetic access$602(Lcom/mopub/mobileads/VastVideoViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    return p1
.end method

.method static synthetic access$700(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoToolbar;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoToolbar:Lcom/mopub/mobileads/VastVideoToolbar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->shouldBeInteractable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoViewController;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->makeVideoInteractable()V

    return-void
.end method

.method private createCompanionAdImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    .line 489
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 490
    .local v3, "relativeLayout":Landroid/widget/RelativeLayout;
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 491
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 495
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoToolbar:Lcom/mopub/mobileads/VastVideoToolbar;

    invoke-virtual {v5}, Lcom/mopub/mobileads/VastVideoToolbar;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 496
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 500
    .local v1, "imageView":Landroid/widget/ImageView;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 507
    .local v0, "companionAdLayout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    return-object v1
.end method

.method private createVastVideoToolBar(Landroid/content/Context;)Lcom/mopub/mobileads/VastVideoToolbar;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    new-instance v0, Lcom/mopub/mobileads/VastVideoToolbar;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastVideoToolbar;-><init>(Landroid/content/Context;)V

    .line 343
    .local v0, "vastVideoToolbar":Lcom/mopub/mobileads/VastVideoToolbar;
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$4;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/VastVideoViewController$4;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoToolbar;->setCloseButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 354
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoToolbar;->setLearnMoreButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 355
    return-object v0
.end method

.method private createVideoBackground(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 330
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v8, [I

    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v4, v6

    const/16 v5, 0xff

    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v4, v7

    invoke-direct {v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 334
    .local v0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    new-array v2, v8, [Landroid/graphics/drawable/Drawable;

    .line 335
    .local v2, "layers":[Landroid/graphics/drawable/Drawable;
    sget-object v3, Lcom/mopub/common/util/Drawables;->THATCHED_BACKGROUND:Lcom/mopub/common/util/Drawables;

    invoke-virtual {v3, p1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v6

    .line 336
    aput-object v0, v2, v7

    .line 337
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 338
    .local v1, "layerList":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    return-void
.end method

.method private createVideoProgressCheckerRunnable()Ljava/lang/Runnable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 245
    new-instance v0, Lcom/mopub/mobileads/VastVideoViewController$3;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/VastVideoViewController$3;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    return-object v0
.end method

.method private createVideoView(Landroid/content/Context;)Landroid/widget/VideoView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 360
    .local v0, "videoView":Landroid/widget/VideoView;
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$5;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VastVideoViewController$5;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 369
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 371
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/mopub/mobileads/VastVideoViewController$6;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/content/Context;Landroid/widget/VideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 395
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$7;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VastVideoViewController$7;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 410
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-virtual {v1}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 412
    return-object v0
.end method

.method private downloadCompanionAd()V
    .locals 5

    .prologue
    .line 230
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAd:Lcom/mopub/mobileads/util/vast/VastCompanionAd;

    if-eqz v3, :cond_0

    .line 232
    :try_start_0
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAd:Lcom/mopub/mobileads/util/vast/VastCompanionAd;

    invoke-virtual {v3}, Lcom/mopub/mobileads/util/vast/VastCompanionAd;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mopub/common/HttpClient;->initializeHttpGet(Ljava/lang/String;Landroid/content/Context;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v2

    .line 233
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v0, Lcom/mopub/common/DownloadTask;

    invoke-direct {v0, p0}, Lcom/mopub/common/DownloadTask;-><init>(Lcom/mopub/common/DownloadTask$DownloadTaskListener;)V

    .line 234
    .local v0, "downloadTask":Lcom/mopub/common/DownloadTask;
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0    # "downloadTask":Lcom/mopub/common/DownloadTask;
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to download companion ad"

    invoke-static {v3, v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getUntriggeredTrackersBefore(II)Ljava/util/List;
    .locals 12
    .param p1, "currentPositionMillis"    # I
    .param p2, "videoLengthMillis"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    if-lez p2, :cond_2

    const/4 v10, 0x1

    :goto_0
    invoke-static {v10}, Lcom/mopub/common/Preconditions$NoThrow;->checkArgument(Z)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 290
    int-to-float v10, p1

    int-to-float v11, p2

    div-float v7, v10, v11

    .line 291
    .local v7, "progressFraction":F
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v9, "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    iget-object v10, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-virtual {v10}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getAbsoluteTrackers()Ljava/util/ArrayList;

    move-result-object v2

    .line 294
    .local v2, "absoluteTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mopub/mobileads/VastAbsoluteProgressTracker;>;"
    new-instance v0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    const-string v10, ""

    invoke-direct {v0, v10, p1}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    .line 295
    .local v0, "absoluteTest":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 296
    .local v1, "absoluteTrackerCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 297
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    .line 298
    .local v8, "tracker":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    invoke-virtual {v8, v0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->compareTo(Lcom/mopub/mobileads/VastAbsoluteProgressTracker;)I

    move-result v10

    if-lez v10, :cond_3

    .line 306
    .end local v8    # "tracker":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    :cond_0
    iget-object v10, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-virtual {v10}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getFractionalTrackers()Ljava/util/ArrayList;

    move-result-object v5

    .line 307
    .local v5, "fractionalTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mopub/mobileads/VastFractionalProgressTracker;>;"
    new-instance v3, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    const-string v10, ""

    invoke-direct {v3, v10, v7}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Ljava/lang/String;F)V

    .line 308
    .local v3, "fractionalTest":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 309
    .local v4, "fractionalTrackerCount":I
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_1

    .line 310
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    .line 311
    .local v8, "tracker":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    invoke-virtual {v8, v3}, Lcom/mopub/mobileads/VastFractionalProgressTracker;->compareTo(Lcom/mopub/mobileads/VastFractionalProgressTracker;)I

    move-result v10

    if-lez v10, :cond_5

    .line 321
    .end local v0    # "absoluteTest":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    .end local v1    # "absoluteTrackerCount":I
    .end local v2    # "absoluteTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mopub/mobileads/VastAbsoluteProgressTracker;>;"
    .end local v3    # "fractionalTest":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    .end local v4    # "fractionalTrackerCount":I
    .end local v5    # "fractionalTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mopub/mobileads/VastFractionalProgressTracker;>;"
    .end local v6    # "i":I
    .end local v7    # "progressFraction":F
    .end local v8    # "tracker":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    .end local v9    # "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_1
    :goto_3
    return-object v9

    .line 289
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 301
    .restart local v0    # "absoluteTest":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    .restart local v1    # "absoluteTrackerCount":I
    .restart local v2    # "absoluteTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mopub/mobileads/VastAbsoluteProgressTracker;>;"
    .restart local v6    # "i":I
    .restart local v7    # "progressFraction":F
    .local v8, "tracker":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    .restart local v9    # "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_3
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->isTracked()Z

    move-result v10

    if-nez v10, :cond_4

    .line 302
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 314
    .restart local v3    # "fractionalTest":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    .restart local v4    # "fractionalTrackerCount":I
    .restart local v5    # "fractionalTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mopub/mobileads/VastFractionalProgressTracker;>;"
    .local v8, "tracker":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    :cond_5
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastFractionalProgressTracker;->isTracked()Z

    move-result v10

    if-nez v10, :cond_6

    .line 315
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 321
    .end local v0    # "absoluteTest":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    .end local v1    # "absoluteTrackerCount":I
    .end local v2    # "absoluteTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mopub/mobileads/VastAbsoluteProgressTracker;>;"
    .end local v3    # "fractionalTest":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    .end local v4    # "fractionalTrackerCount":I
    .end local v5    # "fractionalTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mopub/mobileads/VastFractionalProgressTracker;>;"
    .end local v6    # "i":I
    .end local v7    # "progressFraction":F
    .end local v8    # "tracker":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    .end local v9    # "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_3
.end method

.method private isLongVideo(I)Z
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 512
    const/16 v0, 0x3e80

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeVideoInteractable()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    .line 517
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoToolbar:Lcom/mopub/mobileads/VastVideoToolbar;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoToolbar;->makeInteractable()V

    .line 518
    return-void
.end method

.method private remainingProgressTrackerCount()I
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 326
    invoke-direct {p0, v0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private shouldAllowClickThrough()Z
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method private shouldBeInteractable()Z
    .locals 2

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startProgressChecker()V
    .locals 2

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoProgressShouldBeChecked:Z

    if-nez v0, :cond_0

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoProgressShouldBeChecked:Z

    .line 531
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoProgressCheckerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    :cond_0
    return-void
.end method

.method private stopProgressChecker()V
    .locals 2

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoProgressShouldBeChecked:Z

    if-eqz v0, :cond_0

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoProgressShouldBeChecked:Z

    .line 538
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoProgressCheckerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 540
    :cond_0
    return-void
.end method


# virtual methods
.method public backButtonEnabled()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method getCompanionAdImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCompanionAdImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method getIsVideoProgressShouldBeChecked()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoProgressShouldBeChecked:Z

    return v0
.end method

.method getShowCloseButtonDelay()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 560
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    return v0
.end method

.method getVideoError()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    return v0
.end method

.method getVideoRetries()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 553
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoRetries:I

    return v0
.end method

.method protected getVideoView()Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method handleClick(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p2, "clickThroughUrl"    # Ljava/lang/String;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "clickThroughTrackers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/mopub/common/event/BaseEvent$Name;->CLICK_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    invoke-static {p1, v3, v4}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 460
    if-nez p2, :cond_0

    .line 486
    :goto_0
    return-void

    .line 464
    :cond_0
    const-string v3, "com.mopub.action.interstitial.click"

    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 466
    invoke-static {p2}, Lcom/mopub/common/util/Intents;->isNativeBrowserScheme(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 468
    :try_start_0
    invoke-static {p2}, Lcom/mopub/common/util/Intents;->intentForNativeBrowserScheme(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 469
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/mopub/exceptions/UrlParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 471
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Lcom/mopub/exceptions/UrlParseException;
    invoke-virtual {v1}, Lcom/mopub/exceptions/UrlParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 473
    .end local v1    # "e":Lcom/mopub/exceptions/UrlParseException;
    :catch_1
    move-exception v1

    .line 474
    .local v1, "e":Lcom/mopub/exceptions/IntentNotResolvableException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not handle intent for URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mopub/exceptions/IntentNotResolvableException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    .end local v1    # "e":Lcom/mopub/exceptions/IntentNotResolvableException;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 482
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "URL"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v3

    const-class v4, Lcom/mopub/common/MoPubBrowser;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5, v0}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onStartActivityForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method isShowCloseButtonEventFired()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method isVideoFinishedPlaying()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return v0
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 193
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    .line 196
    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/String;Lcom/mopub/common/DownloadResponse;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadResponse"    # Lcom/mopub/common/DownloadResponse;

    .prologue
    .line 201
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mopub/common/DownloadResponse;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    .line 202
    invoke-static {p2}, Lcom/mopub/common/HttpResponses;->asBitmap(Lcom/mopub/common/DownloadResponse;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    .local v0, "companionAdBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v4

    .line 206
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 207
    .local v1, "height":I
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCompanionAdImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    .line 208
    .local v3, "imageViewWidth":I
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCompanionAdImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    .line 209
    .local v2, "imageViewHeight":I
    if-ge v4, v3, :cond_0

    if-ge v1, v2, :cond_0

    .line 210
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCompanionAdImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 211
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCompanionAdImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 213
    :cond_0
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCompanionAdImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 214
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCompanionAdImageView:Landroid/widget/ImageView;

    new-instance v6, Lcom/mopub/mobileads/VastVideoViewController$2;

    invoke-direct {v6, p0}, Lcom/mopub/mobileads/VastVideoViewController$2;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    .end local v0    # "companionAdBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "height":I
    .end local v2    # "imageViewHeight":I
    .end local v3    # "imageViewWidth":I
    .end local v4    # "width":I
    :cond_1
    return-void
.end method

.method protected onCreate()V
    .locals 3

    .prologue
    .line 147
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->onCreate()V

    .line 148
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onSetRequestedOrientation(I)V

    .line 149
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->downloadCompanionAd()V

    .line 151
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getImpressionTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->IMPRESSION_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    invoke-static {v0, v1, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 156
    const-string v0, "com.mopub.action.interstitial.show"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->stopProgressChecker()V

    .line 182
    const-string v0, "com.mopub.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->stopProgressChecker()V

    .line 175
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    .line 176
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 177
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoRetries:I

    .line 164
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->startProgressChecker()V

    .line 166
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 167
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 170
    :cond_0
    return-void
.end method

.method retryMediaPlayer(Landroid/media/MediaPlayer;II)Z
    .locals 8
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 422
    invoke-static {}, Lcom/mopub/common/util/VersionCode;->currentApiLevel()Lcom/mopub/common/util/VersionCode;

    move-result-object v6

    sget-object v7, Lcom/mopub/common/util/VersionCode;->JELLY_BEAN:Lcom/mopub/common/util/VersionCode;

    invoke-virtual {v6, v7}, Lcom/mopub/common/util/VersionCode;->isBelow(Lcom/mopub/common/util/VersionCode;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-ne p2, v4, :cond_0

    const/high16 v6, -0x80000000

    if-ne p3, v6, :cond_0

    iget v6, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoRetries:I

    if-ge v6, v4, :cond_0

    .line 427
    const/4 v2, 0x0

    .line 429
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 430
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-virtual {v6}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 439
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 440
    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 445
    invoke-static {v3}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 446
    iget v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoRetries:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoRetries:I

    .line 449
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    :goto_0
    return v4

    .line 442
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v2}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 446
    iget v4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoRetries:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoRetries:I

    move v4, v5

    goto :goto_0

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 446
    iget v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoRetries:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoRetries:I

    throw v4

    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    :cond_0
    move v4, v5

    .line 449
    goto :goto_0

    .line 445
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 442
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method setCloseButtonVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 574
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    .line 575
    return-void
.end method

.method setVideoError()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    .line 596
    return-void
.end method
