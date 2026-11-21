.class public Lcom/mopub/mobileads/util/vast/VastManager;
.super Ljava/lang/Object;
.source "VastManager.java"

# interfaces
.implements Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;
    }
.end annotation


# static fields
.field private static final AREA_WEIGHT:D = 60.0

.field private static final ASPECT_RATIO_WEIGHT:D = 40.0

.field private static final COMPANION_IMAGE_MIME_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_MIME_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mScreenArea:I

.field private mScreenAspectRatio:D

.field private mVastManagerListener:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

.field private mVastXmlManagerAggregator:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "video/mp4"

    aput-object v1, v0, v2

    const-string v1, "video/3gpp"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/util/vast/VastManager;->VIDEO_MIME_TYPES:Ljava/util/List;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    const-string v1, "image/bmp"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/util/vast/VastManager;->COMPANION_IMAGE_MIME_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/util/vast/VastManager;->initializeScreenDimensions(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/util/vast/VastManager;Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/util/vast/VastManager;
    .param p1, "x1"    # Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/util/vast/VastManager;->updateDiskMediaFileUrl(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/util/vast/VastManager;)Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/util/vast/VastManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    return-object v0
.end method

.method private calculateFitness(II)D
    .locals 16
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 237
    move/from16 v0, p1

    int-to-double v10, v0

    move/from16 v0, p2

    int-to-double v12, v0

    div-double v8, v10, v12

    .line 238
    .local v8, "mediaAspectRatio":D
    mul-int v6, p1, p2

    .line 239
    .local v6, "mediaArea":I
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mopub/mobileads/util/vast/VastManager;->mScreenAspectRatio:D

    div-double v4, v8, v10

    .line 240
    .local v4, "aspectRatioRatio":D
    int-to-double v10, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mopub/mobileads/util/vast/VastManager;->mScreenArea:I

    int-to-double v12, v7

    div-double v2, v10, v12

    .line 241
    .local v2, "areaRatio":D
    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    return-wide v10
.end method

.method private createVastVideoConfigurationFromXml(Ljava/util/List;)Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/util/vast/VastXmlManager;",
            ">;)",
            "Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "xmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    new-instance v3, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-direct {v3}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;-><init>()V

    .line 129
    .local v3, "vastVideoConfiguration":Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, "mediaXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "companionXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/mobileads/util/vast/VastXmlManager;

    .line 132
    .local v4, "xmlManager":Lcom/mopub/mobileads/util/vast/VastXmlManager;
    invoke-virtual {v4}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getImpressionTrackers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->addImpressionTrackers(Ljava/util/List;)V

    .line 133
    invoke-virtual {v4}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getAbsoluteProgressTrackers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->addAbsoluteTrackers(Ljava/util/List;)V

    .line 134
    invoke-virtual {v4}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getFractionalProgressTrackers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->addFractionalTrackers(Ljava/util/List;)V

    .line 135
    invoke-virtual {v4}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getVideoCompleteTrackers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->addCompleteTrackers(Ljava/util/List;)V

    .line 136
    invoke-virtual {v4}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getVideoCloseTrackers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->addCloseTrackers(Ljava/util/List;)V

    .line 138
    invoke-virtual {v4}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->addClickTrackers(Ljava/util/List;)V

    .line 140
    invoke-virtual {v3}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 141
    invoke-virtual {v4}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->setClickThroughUrl(Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-virtual {v4}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getMediaXmlManagers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    invoke-virtual {v4}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getCompanionAdXmlManagers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 148
    .end local v4    # "xmlManager":Lcom/mopub/mobileads/util/vast/VastXmlManager;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/util/vast/VastManager;->getBestMediaFileUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->setNetworkMediaFileUrl(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/util/vast/VastManager;->getBestCompanionAd(Ljava/util/List;)Lcom/mopub/mobileads/util/vast/VastCompanionAd;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->setVastCompanionAd(Lcom/mopub/mobileads/util/vast/VastCompanionAd;)V

    .line 151
    return-object v3
.end method

.method private initializeScreenDimensions(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 116
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 117
    .local v3, "x":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 120
    .local v4, "y":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 121
    .local v2, "screenWidth":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 122
    .local v1, "screenHeight":I
    int-to-double v6, v2

    int-to-double v8, v1

    div-double/2addr v6, v8

    iput-wide v6, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mScreenAspectRatio:D

    .line 123
    mul-int v5, v2, v1

    iput v5, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mScreenArea:I

    .line 124
    return-void
.end method

.method private updateDiskMediaFileUrl(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)Z
    .locals 3
    .param p1, "vastVideoConfiguration"    # Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "networkMediaFileUrl":Ljava/lang/String;
    invoke-static {v1}, Lcom/mopub/common/CacheService;->containsKeyDiskCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-static {v1}, Lcom/mopub/common/CacheService;->getFilePathDiskCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "filePathDiskCache":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->setDiskMediaFileUrl(Ljava/lang/String;)V

    .line 108
    const/4 v2, 0x1

    .line 110
    .end local v0    # "filePathDiskCache":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;->cancel(Z)Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    .line 61
    :cond_0
    return-void
.end method

.method getBestCompanionAd(Ljava/util/List;)Lcom/mopub/mobileads/util/vast/VastCompanionAd;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;",
            ">;)",
            "Lcom/mopub/mobileads/util/vast/VastCompanionAd;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;>;"
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    .local v14, "companionXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;>;"
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 194
    .local v8, "bestCompanionFitness":D
    const/4 v10, 0x0

    .line 196
    .local v10, "bestCompanionXmlManager":Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 197
    .local v19, "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;

    .line 200
    .local v11, "companionXmlManager":Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;
    invoke-virtual {v11}, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->getType()Ljava/lang/String;

    move-result-object v16

    .line 201
    .local v16, "imageType":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->getImageUrl()Ljava/lang/String;

    move-result-object v17

    .line 202
    .local v17, "imageUrl":Ljava/lang/String;
    sget-object v2, Lcom/mopub/mobileads/util/vast/VastManager;->COMPANION_IMAGE_MIME_TYPES:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v17, :cond_2

    .line 203
    :cond_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {v11}, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v18

    .line 208
    .local v18, "imageWidth":Ljava/lang/Integer;
    invoke-virtual {v11}, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v15

    .line 209
    .local v15, "imageHeight":Ljava/lang/Integer;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 213
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/mopub/mobileads/util/vast/VastManager;->calculateFitness(II)D

    move-result-wide v12

    .line 214
    .local v12, "companionFitness":D
    cmpg-double v2, v12, v8

    if-gez v2, :cond_0

    .line 215
    move-wide v8, v12

    .line 216
    move-object v10, v11

    goto :goto_0

    .line 220
    .end local v11    # "companionXmlManager":Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;
    .end local v12    # "companionFitness":D
    .end local v15    # "imageHeight":Ljava/lang/Integer;
    .end local v16    # "imageType":Ljava/lang/String;
    .end local v17    # "imageUrl":Ljava/lang/String;
    .end local v18    # "imageWidth":Ljava/lang/Integer;
    :cond_3
    if-nez v10, :cond_4

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 221
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "bestCompanionXmlManager":Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;
    check-cast v10, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;

    .line 224
    .restart local v10    # "bestCompanionXmlManager":Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;
    :cond_4
    if-eqz v10, :cond_5

    .line 225
    new-instance v2, Lcom/mopub/mobileads/util/vast/VastCompanionAd;

    invoke-virtual {v10}, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10}, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10}, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct/range {v2 .. v7}, Lcom/mopub/mobileads/util/vast/VastCompanionAd;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 233
    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getBestMediaFileUrl(Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 156
    .local v10, "mediaXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;>;"
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 157
    .local v2, "bestMediaFitness":D
    const/4 v0, 0x0

    .line 159
    .local v0, "bestMediaFileUrl":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 160
    .local v11, "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 161
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;

    .line 163
    .local v9, "mediaXmlManager":Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;
    invoke-virtual {v9}, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;->getType()Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "mediaType":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;->getMediaUrl()Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "mediaUrl":Ljava/lang/String;
    sget-object v12, Lcom/mopub/mobileads/util/vast/VastManager;->VIDEO_MIME_TYPES:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-nez v7, :cond_2

    .line 166
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v9}, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v8

    .line 171
    .local v8, "mediaWidth":Ljava/lang/Integer;
    invoke-virtual {v9}, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    .line 172
    .local v1, "mediaHeight":Ljava/lang/Integer;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_0

    .line 176
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {p0, v12, v13}, Lcom/mopub/mobileads/util/vast/VastManager;->calculateFitness(II)D

    move-result-wide v4

    .line 177
    .local v4, "mediaFitness":D
    cmpg-double v12, v4, v2

    if-gez v12, :cond_0

    .line 178
    move-wide v2, v4

    .line 179
    move-object v0, v7

    goto :goto_0

    .line 183
    .end local v1    # "mediaHeight":Ljava/lang/Integer;
    .end local v4    # "mediaFitness":D
    .end local v6    # "mediaType":Ljava/lang/String;
    .end local v7    # "mediaUrl":Ljava/lang/String;
    .end local v8    # "mediaWidth":Ljava/lang/Integer;
    .end local v9    # "mediaXmlManager":Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;
    :cond_3
    if-nez v0, :cond_4

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 184
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;

    invoke-virtual {v12}, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_4
    return-object v0
.end method

.method getScreenArea()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 247
    iget v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mScreenArea:I

    return v0
.end method

.method getScreenAspectRatio()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mScreenAspectRatio:D

    return-wide v0
.end method

.method public onAggregationComplete(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/util/vast/VastXmlManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "vastXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    const/4 v6, 0x0

    .line 65
    iput-object v6, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    .line 66
    if-nez p1, :cond_0

    .line 67
    iget-object v3, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    invoke-interface {v3, v6}, Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V

    .line 101
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/util/vast/VastManager;->createVastVideoConfigurationFromXml(Ljava/util/List;)Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    move-result-object v1

    .line 74
    .local v1, "vastVideoConfiguration":Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/util/vast/VastManager;->updateDiskMediaFileUrl(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    invoke-interface {v3, v1}, Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V

    goto :goto_0

    .line 79
    :cond_1
    new-instance v2, Lcom/mopub/mobileads/VastVideoDownloadTask;

    new-instance v3, Lcom/mopub/mobileads/util/vast/VastManager$1;

    invoke-direct {v3, p0, v1}, Lcom/mopub/mobileads/util/vast/VastManager$1;-><init>(Lcom/mopub/mobileads/util/vast/VastManager;Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V

    invoke-direct {v2, v3}, Lcom/mopub/mobileads/VastVideoDownloadTask;-><init>(Lcom/mopub/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;)V

    .line 93
    .local v2, "vastVideoDownloadTask":Lcom/mopub/mobileads/VastVideoDownloadTask;
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Failed to download vast video"

    invoke-static {v3, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    iget-object v3, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    invoke-interface {v3, v6}, Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V

    goto :goto_0
.end method

.method public prepareVastVideoConfiguration(Ljava/lang/String;Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;)V
    .locals 4
    .param p1, "vastXml"    # Ljava/lang/String;
    .param p2, "vastManagerListener"    # Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    if-nez v1, :cond_0

    .line 44
    iput-object p2, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    .line 45
    new-instance v1, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;-><init>(Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;)V

    iput-object v1, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to aggregate vast xml"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V

    goto :goto_0
.end method
