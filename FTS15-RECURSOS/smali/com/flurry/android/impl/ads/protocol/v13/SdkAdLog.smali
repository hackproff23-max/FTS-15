.class public Lcom/flurry/android/impl/ads/protocol/v13/SdkAdLog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public adLogGUID:Ljava/lang/String;

.field public sdkAdEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/SdkAdEvent;",
            ">;"
        }
    .end annotation
.end field

.field public sessionId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
