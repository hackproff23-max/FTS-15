.class public Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public adGuid:Ljava/lang/String;

.field public adSpaceLayout:Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;

.field public assetExpirationTimestampUTCMillis:J

.field public binding:I

.field public cacheBlacklistedAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cacheWhitelistedAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cachingEnum:I

.field public callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/Callback;",
            ">;"
        }
    .end annotation
.end field

.field public content:Ljava/lang/String;

.field public display:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
