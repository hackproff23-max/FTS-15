.class Lcom/mopub/mobileads/util/vast/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/util/vast/XmlUtils$NodeProcessor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 123
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-object v2

    .line 127
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 128
    .local v0, "attrMap":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 129
    .local v1, "attrNode":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_0

    .line 130
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 111
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-object v1

    .line 116
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method static getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-static {p0, p1, v0, v0}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method static getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/w3c/dom/Node;
    .locals 3
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/w3c/dom/Node;"
        }
    .end annotation

    .prologue
    .local p3, "attributeValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 39
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v1

    .line 43
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 44
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method static getListFromDocument(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/util/vast/XmlUtils$NodeProcessor;)Ljava/util/List;
    .locals 8
    .param p0, "vastDoc"    # Lorg/w3c/dom/Document;
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "attributeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/w3c/dom/Document;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/util/vast/XmlUtils$NodeProcessor",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p4, "nodeProcessor":Lcom/mopub/mobileads/util/vast/XmlUtils$NodeProcessor;, "Lcom/mopub/mobileads/util/vast/XmlUtils$NodeProcessor<TT;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v5, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-nez p0, :cond_1

    .line 174
    :cond_0
    return-object v5

    .line 156
    :cond_1
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 157
    .local v3, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_0

    .line 161
    if-nez p3, :cond_3

    const/4 v0, 0x0

    .line 163
    .local v0, "attributeValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 164
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 166
    .local v2, "node":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_2

    invoke-static {v2, p2, v0}, Lcom/mopub/mobileads/util/vast/XmlUtils;->nodeMatchesAttributeFilter(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 167
    invoke-interface {p4, v2}, Lcom/mopub/mobileads/util/vast/XmlUtils$NodeProcessor;->process(Lorg/w3c/dom/Node;)Ljava/lang/Object;

    move-result-object v4

    .line 168
    .local v4, "processed":Ljava/lang/Object;, "TT;"
    if-eqz v4, :cond_2

    .line 169
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v4    # "processed":Ljava/lang/Object;, "TT;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    .end local v0    # "attributeValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "node":Lorg/w3c/dom/Node;
    :cond_3
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method static getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    .local p3, "attributeValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 66
    :cond_0
    const/4 v3, 0x0

    .line 78
    :cond_1
    return-object v3

    .line 69
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v3, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 71
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 72
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 73
    .local v0, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0, p2, p3}, Lcom/mopub/mobileads/util/vast/XmlUtils;->nodeMatchesAttributeFilter(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 75
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 102
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getNodesWithElementAndAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "vastDoc"    # Lorg/w3c/dom/Document;
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "attributeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lcom/mopub/mobileads/util/vast/XmlUtils$2;

    invoke-direct {v0}, Lcom/mopub/mobileads/util/vast/XmlUtils$2;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getListFromDocument(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/util/vast/XmlUtils$NodeProcessor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getStringDataAsList(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "vastDoc"    # Lorg/w3c/dom/Document;
    .param p1, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-static {p0, p1, v0, v0}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getStringDataAsList(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getStringDataAsList(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "vastDoc"    # Lorg/w3c/dom/Document;
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "attributeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Lcom/mopub/mobileads/util/vast/XmlUtils$1;

    invoke-direct {v0}, Lcom/mopub/mobileads/util/vast/XmlUtils$1;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/mopub/mobileads/util/vast/XmlUtils;->getListFromDocument(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/util/vast/XmlUtils$NodeProcessor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static nodeMatchesAttributeFilter(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "attributeValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 86
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v2

    .line 90
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 91
    .local v0, "attrMap":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_2

    .line 92
    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 93
    .local v1, "attrNode":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    .end local v1    # "attrNode":Lorg/w3c/dom/Node;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
