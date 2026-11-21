.class Lcom/mopub/mobileads/util/vast/VastXmlManager;
.super Ljava/lang/Object;
.source "VastXmlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;,
        Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;
    }
.end annotation


# static fields
.field private static final CLICK_THROUGH:Ljava/lang/String; = "ClickThrough"

.field private static final CLICK_TRACKER:Ljava/lang/String; = "ClickTracking"

.field private static final CLOSE:Ljava/lang/String; = "close"

.field private static final COMPANION:Ljava/lang/String; = "Companion"

.field private static final COMPLETE:Ljava/lang/String; = "complete"

.field private static final EVENT:Ljava/lang/String; = "event"

.field private static final FIRST_QUARTER_MARKER:F = 0.25f

.field private static final FIRST_QUARTILE:Ljava/lang/String; = "firstQuartile"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final IMPRESSION_TRACKER:Ljava/lang/String; = "Impression"

.field private static final MEDIA_FILE:Ljava/lang/String; = "MediaFile"

.field private static final MIDPOINT:Ljava/lang/String; = "midpoint"

.field private static final MID_POINT_MARKER:F = 0.5f

.field private static final MP_IMPRESSION_TRACKER:Ljava/lang/String; = "MP_TRACKING_URL"

.field private static final OFFSET:Ljava/lang/String; = "offset"

.field private static final PROGRESS:Ljava/lang/String; = "progress"

.field private static final ROOT_TAG:Ljava/lang/String; = "MPMoVideoXMLDocRoot"

.field private static final ROOT_TAG_CLOSE:Ljava/lang/String; = "</MPMoVideoXMLDocRoot>"

.field private static final ROOT_TAG_OPEN:Ljava/lang/String; = "<MPMoVideoXMLDocRoot>"

.field private static final START:Ljava/lang/String; = "start"

.field private static final START_TRACKER_THRESHOLD:I = 0x7d0

.field private static final THIRD_QUARTER_MARKER:F = 0.75f

.field private static final THIRD_QUARTILE:Ljava/lang/String; = "thirdQuartile"

.field private static final VAST_AD_TAG:Ljava/lang/String; = "VASTAdTagURI"

.field private static final VIDEO_TRACKER:Ljava/lang/String; = "Tracking"

.field private static final WIDTH:Ljava/lang/String; = "width"

.field private static absolutePattern:Ljava/util/regex/Pattern;

.field private static percentagePattern:Ljava/util/regex/Pattern;


# instance fields
.field private mVastDoc:Lorg/w3c/dom/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "((\\d{1,2})|(100))%"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->percentagePattern:Ljava/util/regex/Pattern;

    .line 64
    const-string v0, "\\d{2}:\\d{2}:\\d{2}(.\\d{3})?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->absolutePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method private addQuartileTrackerWithFraction(Ljava/util/List;Ljava/util/List;F)V
    .locals 3
    .param p3, "fraction"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastFractionalProgressTracker;>;"
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 373
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    invoke-direct {v2, v1, p3}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Ljava/lang/String;F)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getVideoTrackerByAttribute(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "attributeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const-string v1, "Tracking"

    const-string v2, "event"

    invoke-static {v0, v1, v2, p1}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getStringDataAsList(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private isAbsoluteTracker(Ljava/lang/String;)Z
    .locals 1
    .param p1, "progressValue"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->absolutePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPercentageTracker(Ljava/lang/String;)Z
    .locals 1
    .param p1, "progressValue"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->percentagePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "progressValue"    # Ljava/lang/String;

    .prologue
    .line 361
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 363
    const/4 v1, 0x0

    .line 366
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method getAbsoluteProgressTrackers()Ljava/util/List;
    .locals 14
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v6, "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastAbsoluteProgressTracker;>;"
    const-string v10, "start"

    invoke-direct {p0, v10}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getVideoTrackerByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 277
    .local v5, "startTrackers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 278
    .local v9, "url":Ljava/lang/String;
    new-instance v10, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    const/16 v11, 0x7d0

    invoke-direct {v10, v9, v11}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    .end local v9    # "url":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const-string v11, "Tracking"

    const-string v12, "event"

    const-string v13, "progress"

    invoke-static {v10, v11, v12, v13}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getNodesWithElementAndAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 283
    .local v4, "progressNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 284
    .local v3, "progressNode":Lorg/w3c/dom/Node;
    const-string v10, "offset"

    invoke-static {v3, v10}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "offSetString":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->isAbsoluteTracker(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 286
    invoke-static {v3}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, "trackingUrl":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v2}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 289
    .local v7, "trackingMilliseconds":Ljava/lang/Integer;
    if-eqz v7, :cond_1

    .line 290
    new-instance v10, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, v8, v11}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 292
    .end local v7    # "trackingMilliseconds":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v10, "Failed to parse VAST progress tracker %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 299
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "offSetString":Ljava/lang/String;
    .end local v3    # "progressNode":Lorg/w3c/dom/Node;
    .end local v8    # "trackingUrl":Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 300
    return-object v6
.end method

.method getClickThroughUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 313
    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const-string v2, "ClickThrough"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getStringDataAsList(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 314
    .local v0, "clickUrlWrapper":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getClickTrackers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const-string v1, "ClickTracking"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getStringDataAsList(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getCompanionAdXmlManagers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v3, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const-string v4, "Companion"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 338
    .local v2, "nodes":Lorg/w3c/dom/NodeList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    .local v1, "imageCompanionAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 341
    new-instance v3, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;-><init>(Lcom/mopub/mobileads/util/vast/VastXmlManager;Lorg/w3c/dom/Node;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    return-object v1
.end method

.method getFractionalProgressTrackers()Ljava/util/List;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v3, "percentTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastFractionalProgressTracker;>;"
    const-string v8, "firstQuartile"

    invoke-direct {p0, v8}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getVideoTrackerByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    const/high16 v9, 0x3e800000    # 0.25f

    invoke-direct {p0, v3, v8, v9}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->addQuartileTrackerWithFraction(Ljava/util/List;Ljava/util/List;F)V

    .line 232
    const-string v8, "midpoint"

    invoke-direct {p0, v8}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getVideoTrackerByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct {p0, v3, v8, v9}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->addQuartileTrackerWithFraction(Ljava/util/List;Ljava/util/List;F)V

    .line 233
    const-string v8, "thirdQuartile"

    invoke-direct {p0, v8}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getVideoTrackerByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-direct {p0, v3, v8, v9}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->addQuartileTrackerWithFraction(Ljava/util/List;Ljava/util/List;F)V

    .line 236
    iget-object v8, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const-string v9, "Tracking"

    const-string v10, "event"

    const-string v11, "progress"

    invoke-static {v8, v9, v10, v11}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getNodesWithElementAndAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 237
    .local v5, "progressNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    .line 238
    .local v4, "progressNode":Lorg/w3c/dom/Node;
    const-string v8, "offset"

    invoke-static {v4, v8}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "offsetString":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->isPercentageTracker(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 240
    invoke-static {v4}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, "trackingUrl":Ljava/lang/String;
    :try_start_0
    const-string v8, "%"

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float v6, v8, v9

    .line 243
    .local v6, "trackingFraction":F
    new-instance v8, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    invoke-direct {v8, v7, v6}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Ljava/lang/String;F)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    .end local v6    # "trackingFraction":F
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v8, "Failed to parse VAST progress tracker %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "offsetString":Ljava/lang/String;
    .end local v4    # "progressNode":Lorg/w3c/dom/Node;
    .end local v7    # "trackingUrl":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 252
    return-object v3
.end method

.method getImpressionTrackers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const-string v2, "Impression"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getStringDataAsList(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 204
    .local v0, "impressionTrackers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const-string v2, "MP_TRACKING_URL"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getStringDataAsList(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    return-object v0
.end method

.method getMediaFileUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 322
    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const-string v2, "MediaFile"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getStringDataAsList(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 323
    .local v0, "urlWrapper":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getMediaXmlManagers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v3, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const-string v4, "MediaFile"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 328
    .local v2, "nodes":Lorg/w3c/dom/NodeList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    .local v1, "mediaXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 331
    new-instance v3, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;-><init>(Lcom/mopub/mobileads/util/vast/VastXmlManager;Lorg/w3c/dom/Node;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    return-object v1
.end method

.method getVastAdTagURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    const-string v2, "VASTAdTagURI"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getStringDataAsList(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 199
    .local v0, "uriWrapper":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getVideoCloseTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    const-string v0, "close"

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getVideoTrackerByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getVideoCompleteTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    const-string v0, "complete"

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getVideoTrackerByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method parseVastXml(Ljava/lang/String;)V
    .locals 5
    .param p1, "xmlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 185
    const-string v3, "<\\?.*\\?>"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<MPMoVideoXMLDocRoot>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</MPMoVideoXMLDocRoot>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "documentString":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 192
    .local v1, "documentBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 193
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 194
    .local v0, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    .line 195
    return-void
.end method
