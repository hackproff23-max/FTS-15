.class public Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public adFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;",
            ">;"
        }
    .end annotation
.end field

.field public adSpace:Ljava/lang/String;

.field public adViewType:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

.field public adomain:Ljava/lang/String;

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

.field public closableTimeMillis15SecOrLess:J

.field public closableTimeMillisLongerThan15Sec:J

.field public combinable:I

.field public expiration:J

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

.field public groupId:Ljava/lang/String;

.field public nativeAdInfo:Lcom/flurry/android/impl/ads/protocol/v13/NativeAdInfo;

.field public preCacheAdSkippableTimeLimitMillis:I

.field public preRender:Z

.field public preRenderTimeoutMillis:J

.field public price:J

.field public renderTime:Z

.field public rewardable:Z

.field public screenOrientation:Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

.field public supportMRAID:Z

.field public videoAutoPlay:Z

.field public videoPctCompletionForMoreInfo:I

.field public videoPctCompletionForReward:I

.field public viewabilityDurationMillis:J

.field public viewabilityPercentVisible:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
