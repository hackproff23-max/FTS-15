.class public Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public adReportedIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/AdReportedId;",
            ">;"
        }
    .end annotation
.end field

.field public agentTimestamp:J

.field public agentVersion:Ljava/lang/String;

.field public apiKey:Ljava/lang/String;

.field public sdkAdLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/SdkAdLog;",
            ">;"
        }
    .end annotation
.end field

.field public testDevice:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
