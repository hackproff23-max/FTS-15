.class public Lcom/mopub/mobileads/util/vast/VastCompanionAd;
.super Ljava/lang/Object;
.source "VastCompanionAd.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final mClickThroughUrl:Ljava/lang/String;

.field private final mClickTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeight:Ljava/lang/Integer;

.field private final mImageUrl:Ljava/lang/String;

.field private final mWidth:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/Integer;
    .param p2, "height"    # Ljava/lang/Integer;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "clickThroughUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p5, "clickTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mopub/mobileads/util/vast/VastCompanionAd;->mWidth:Ljava/lang/Integer;

    .line 23
    iput-object p2, p0, Lcom/mopub/mobileads/util/vast/VastCompanionAd;->mHeight:Ljava/lang/Integer;

    .line 24
    iput-object p3, p0, Lcom/mopub/mobileads/util/vast/VastCompanionAd;->mImageUrl:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/mopub/mobileads/util/vast/VastCompanionAd;->mClickThroughUrl:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/mopub/mobileads/util/vast/VastCompanionAd;->mClickTrackers:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public getClickThroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastCompanionAd;->mClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackers()Ljava/util/List;
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
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastCompanionAd;->mClickTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastCompanionAd;->mHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastCompanionAd;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastCompanionAd;->mWidth:Ljava/lang/Integer;

    return-object v0
.end method
