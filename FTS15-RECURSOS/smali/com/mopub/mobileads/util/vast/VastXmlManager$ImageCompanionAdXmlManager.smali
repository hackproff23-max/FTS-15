.class Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;
.super Ljava/lang/Object;
.source "VastXmlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/util/vast/VastXmlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageCompanionAdXmlManager"
.end annotation


# static fields
.field private static final COMPANION_CLICK_THROUGH:Ljava/lang/String; = "CompanionClickThrough"

.field private static final COMPANION_STATIC_RESOURCE:Ljava/lang/String; = "StaticResource"

.field private static final CREATIVE_TYPE:Ljava/lang/String; = "creativeType"

.field private static final CREATIVE_VIEW:Ljava/lang/String; = "creativeView"

.field private static final TRACKING_EVENTS:Ljava/lang/String; = "TrackingEvents"


# instance fields
.field private final mCompanionNode:Lorg/w3c/dom/Node;

.field final synthetic this$0:Lcom/mopub/mobileads/util/vast/VastXmlManager;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/util/vast/VastXmlManager;Lorg/w3c/dom/Node;)V
    .locals 2
    .param p2, "companionNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->this$0:Lcom/mopub/mobileads/util/vast/VastXmlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-nez p2, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Companion node cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iput-object p2, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    .line 84
    return-void
.end method


# virtual methods
.method getClickThroughUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v2, "CompanionClickThrough"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 115
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getClickTrackers()Ljava/util/List;
    .locals 10
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
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "companionAdClickTrackers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v6, "TrackingEvents"

    invoke-static {v5, v6}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 125
    .local v2, "node":Lorg/w3c/dom/Node;
    if-nez v2, :cond_1

    .line 142
    :cond_0
    return-object v0

    .line 129
    :cond_1
    const-string v5, "Tracking"

    const-string v6, "event"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "creativeView"

    aput-object v9, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v2, v5, v6, v7}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 136
    .local v4, "trackerNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 137
    .local v3, "trackerNode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 138
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getHeight()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getImageUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v2, "StaticResource"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 107
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v2, "StaticResource"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 99
    .local v0, "node":Lorg/w3c/dom/Node;
    const-string v1, "creativeType"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getWidth()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager$ImageCompanionAdXmlManager;->mCompanionNode:Lorg/w3c/dom/Node;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
