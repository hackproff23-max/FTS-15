.class Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;
.super Ljava/lang/Object;
.source "VastXmlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/util/vast/VastXmlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaXmlManager"
.end annotation


# static fields
.field private static final DELIVERY:Ljava/lang/String; = "delivery"

.field private static final VIDEO_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private final mMediaNode:Lorg/w3c/dom/Node;

.field final synthetic this$0:Lcom/mopub/mobileads/util/vast/VastXmlManager;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/util/vast/VastXmlManager;Lorg/w3c/dom/Node;)V
    .locals 2
    .param p2, "mediaNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;->this$0:Lcom/mopub/mobileads/util/vast/VastXmlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    if-nez p2, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Media node cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iput-object p2, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;->mMediaNode:Lorg/w3c/dom/Node;

    .line 157
    return-void
.end method


# virtual methods
.method getDelivery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;->mMediaNode:Lorg/w3c/dom/Node;

    const-string v1, "delivery"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getHeight()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;->mMediaNode:Lorg/w3c/dom/Node;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getMediaUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;->mMediaNode:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;->mMediaNode:Lorg/w3c/dom/Node;

    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWidth()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastXmlManager$MediaXmlManager;->mMediaNode:Lorg/w3c/dom/Node;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
