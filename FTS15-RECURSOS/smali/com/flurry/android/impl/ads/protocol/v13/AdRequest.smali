.class public Lcom/flurry/android/impl/ads/protocol/v13/AdRequest;
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

.field public adSpaceName:Ljava/lang/String;

.field public adTrackingEnabled:Z

.field public adViewContainer:Lcom/flurry/android/impl/ads/protocol/v13/AdViewContainer;

.field public adViewType:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

.field public agentVersion:Ljava/lang/String;

.field public apiKey:Ljava/lang/String;

.field public appBundleId:Ljava/lang/String;

.field public bCookie:Ljava/lang/String;

.field public bcat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public canDoSKAppStore:Z

.field public clientSideRtbPayload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public devicePlatform:Ljava/lang/String;

.field public frequencyCapRequestInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field public keywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public locale:Ljava/lang/String;

.field public location:Lcom/flurry/android/impl/ads/protocol/v13/Location;

.field public nativeAdConfiguration:Lcom/flurry/android/impl/ads/protocol/v13/NativeAdConfiguration;

.field public networkStatus:I

.field public origins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public osVersion:Ljava/lang/String;

.field public preferredLanguage:Ljava/lang/String;

.field public renderTime:Z

.field public requestTime:J

.field public sendConfiguration:Z

.field public sessionId:J

.field public streamInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/StreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field public targetingOverride:Lcom/flurry/android/impl/ads/protocol/v13/TargetingOverride;

.field public testDevice:Z

.field public timezone:Ljava/lang/String;

.field public userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
