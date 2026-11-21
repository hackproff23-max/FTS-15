.class Lcom/mopub/mobileads/VastVideoToolbar;
.super Landroid/widget/LinearLayout;
.source "VastVideoToolbar.java"


# static fields
.field private static final THRESHOLD_FOR_HIDING_VIDEO_DURATION:I = 0xc8

.field private static final TOOLBAR_HEIGHT_DIPS:I = 0x2c


# instance fields
.field private final mCloseButtonWidget:Lcom/mopub/mobileads/ToolbarWidget;

.field private final mCountdownWidget:Lcom/mopub/mobileads/ToolbarWidget;

.field private final mDurationWidget:Lcom/mopub/mobileads/ToolbarWidget;

.field private final mLearnMoreWidget:Lcom/mopub/mobileads/ToolbarWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoToolbar;->setId(I)V

    .line 37
    new-instance v2, Lcom/mopub/mobileads/VastVideoToolbar$1;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/VastVideoToolbar$1;-><init>(Lcom/mopub/mobileads/VastVideoToolbar;)V

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoToolbar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44
    const/high16 v2, 0x42300000    # 44.0f

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 45
    .local v1, "videoToolbarHeight":I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoToolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoToolbar;->setBackgroundColor(I)V

    .line 51
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoToolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xb4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 53
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoToolbar;->createDurationWidget()Lcom/mopub/mobileads/ToolbarWidget;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mDurationWidget:Lcom/mopub/mobileads/ToolbarWidget;

    .line 54
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoToolbar;->createLearnMoreWidget()Lcom/mopub/mobileads/ToolbarWidget;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mLearnMoreWidget:Lcom/mopub/mobileads/ToolbarWidget;

    .line 55
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoToolbar;->createCountdownWidget()Lcom/mopub/mobileads/ToolbarWidget;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mCountdownWidget:Lcom/mopub/mobileads/ToolbarWidget;

    .line 56
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoToolbar;->createCloseButtonWidget()Lcom/mopub/mobileads/ToolbarWidget;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mCloseButtonWidget:Lcom/mopub/mobileads/ToolbarWidget;

    .line 58
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mDurationWidget:Lcom/mopub/mobileads/ToolbarWidget;

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoToolbar;->addView(Landroid/view/View;)V

    .line 59
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mLearnMoreWidget:Lcom/mopub/mobileads/ToolbarWidget;

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoToolbar;->addView(Landroid/view/View;)V

    .line 60
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mCountdownWidget:Lcom/mopub/mobileads/ToolbarWidget;

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoToolbar;->addView(Landroid/view/View;)V

    .line 61
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mCloseButtonWidget:Lcom/mopub/mobileads/ToolbarWidget;

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoToolbar;->addView(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method private createCloseButtonWidget()Lcom/mopub/mobileads/ToolbarWidget;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/mopub/mobileads/ToolbarWidget$Builder;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->weight(F)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->widgetGravity(I)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v0

    const-string v1, "Close"

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->defaultText(Ljava/lang/String;)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/resource/CloseButtonDrawable;

    invoke-direct {v1}, Lcom/mopub/mobileads/resource/CloseButtonDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->drawable(Landroid/graphics/drawable/Drawable;)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->visibility(I)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->build()Lcom/mopub/mobileads/ToolbarWidget;

    move-result-object v0

    return-object v0
.end method

.method private createCountdownWidget()Lcom/mopub/mobileads/ToolbarWidget;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Lcom/mopub/mobileads/resource/CountdownDrawable;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/resource/CountdownDrawable;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, "countdownDrawable":Lcom/mopub/mobileads/resource/CountdownDrawable;
    new-instance v1, Lcom/mopub/mobileads/ToolbarWidget$Builder;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoToolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mopub/mobileads/ToolbarWidget$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->weight(F)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->widgetGravity(I)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v1

    const-string v2, "Skip in"

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->defaultText(Ljava/lang/String;)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->drawable(Landroid/graphics/drawable/Drawable;)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->visibility(I)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->build()Lcom/mopub/mobileads/ToolbarWidget;

    move-result-object v1

    return-object v1
.end method

.method private createDurationWidget()Lcom/mopub/mobileads/ToolbarWidget;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/mopub/mobileads/ToolbarWidget$Builder;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->weight(F)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->widgetGravity(I)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->hasText()Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->textAlign(I)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->build()Lcom/mopub/mobileads/ToolbarWidget;

    move-result-object v0

    return-object v0
.end method

.method private createLearnMoreWidget()Lcom/mopub/mobileads/ToolbarWidget;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/mopub/mobileads/ToolbarWidget$Builder;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->weight(F)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->widgetGravity(I)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v0

    const-string v1, "Learn More"

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->defaultText(Ljava/lang/String;)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/resource/LearnMoreDrawable;

    invoke-direct {v1}, Lcom/mopub/mobileads/resource/LearnMoreDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->drawable(Landroid/graphics/drawable/Drawable;)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->visibility(I)Lcom/mopub/mobileads/ToolbarWidget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->build()Lcom/mopub/mobileads/ToolbarWidget;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method convertMillisecondsToSecondsRoundedUp(J)J
    .locals 3
    .param p1, "millis"    # J
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 74
    long-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method formatTime(J)Ljava/lang/String;
    .locals 5
    .param p1, "milliseconds"    # J
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/VastVideoToolbar;->convertMillisecondsToSecondsRoundedUp(J)J

    move-result-wide v0

    .line 90
    .local v0, "seconds":J
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 91
    const-string v2, "1 second"

    .line 93
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method getCloseButtonWidget()Lcom/mopub/mobileads/ToolbarWidget;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mCloseButtonWidget:Lcom/mopub/mobileads/ToolbarWidget;

    return-object v0
.end method

.method getCountdownWidget()Lcom/mopub/mobileads/ToolbarWidget;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mCountdownWidget:Lcom/mopub/mobileads/ToolbarWidget;

    return-object v0
.end method

.method getDurationWidget()Lcom/mopub/mobileads/ToolbarWidget;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mDurationWidget:Lcom/mopub/mobileads/ToolbarWidget;

    return-object v0
.end method

.method getLearnMoreWidget()Lcom/mopub/mobileads/ToolbarWidget;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mLearnMoreWidget:Lcom/mopub/mobileads/ToolbarWidget;

    return-object v0
.end method

.method makeInteractable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mCountdownWidget:Lcom/mopub/mobileads/ToolbarWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mLearnMoreWidget:Lcom/mopub/mobileads/ToolbarWidget;

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/ToolbarWidget;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mCloseButtonWidget:Lcom/mopub/mobileads/ToolbarWidget;

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/ToolbarWidget;->setVisibility(I)V

    .line 112
    return-void
.end method

.method setCloseButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "onTouchListener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mCloseButtonWidget:Lcom/mopub/mobileads/ToolbarWidget;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/ToolbarWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    return-void
.end method

.method setLearnMoreButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "onTouchListener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mLearnMoreWidget:Lcom/mopub/mobileads/ToolbarWidget;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/ToolbarWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    return-void
.end method

.method updateCountdownWidget(I)V
    .locals 4
    .param p1, "remainingTime"    # I

    .prologue
    .line 98
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mCountdownWidget:Lcom/mopub/mobileads/ToolbarWidget;

    invoke-virtual {v0}, Lcom/mopub/mobileads/ToolbarWidget;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mCloseButtonWidget:Lcom/mopub/mobileads/ToolbarWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mCountdownWidget:Lcom/mopub/mobileads/ToolbarWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget;->setVisibility(I)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mCountdownWidget:Lcom/mopub/mobileads/ToolbarWidget;

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/mopub/mobileads/VastVideoToolbar;->convertMillisecondsToSecondsRoundedUp(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget;->updateImageText(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method updateDurationWidget(I)V
    .locals 4
    .param p1, "remainingTime"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 79
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mDurationWidget:Lcom/mopub/mobileads/ToolbarWidget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ends in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/mopub/mobileads/VastVideoToolbar;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget;->updateText(Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    if-ltz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoToolbar;->mDurationWidget:Lcom/mopub/mobileads/ToolbarWidget;

    const-string v1, "Thanks for watching"

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ToolbarWidget;->updateText(Ljava/lang/String;)V

    goto :goto_0
.end method
