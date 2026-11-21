.class public Lcom/flurry/android/impl/ads/protocol/v13/AdResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public adUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field public configuration:Lcom/flurry/android/impl/ads/protocol/v13/ConfigurationUnion;

.field public errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public frequencyCapResponseInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapResponseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
