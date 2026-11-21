.class public Lcom/mopub/nativeads/MoPubStreamAdPlacer;
.super Ljava/lang/Object;
.source "MoPubStreamAdPlacer.java"


# static fields
.field public static final CONTENT_VIEW_TYPE:I = 0x0

.field private static final EMPTY_NATIVE_AD_LOADED_LISTENER:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

.field private static final MAX_VISIBLE_RANGE:I = 0x64

.field private static final RANGE_BUFFER:I = 0xa


# instance fields
.field private mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAdSource:Lcom/mopub/nativeads/NativeAdSource;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHasPlacedAds:Z

.field private mHasReceivedAds:Z

.field private mHasReceivedPositions:Z

.field private final mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mItemCount:I

.field private final mNativeResponseMap:Ljava/util/WeakHashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/NativeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedsPlacement:Z

.field private mPendingPlacementData:Lcom/mopub/nativeads/PlacementData;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPlacementData:Lcom/mopub/nativeads/PlacementData;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPlacementHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPlacementRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPositioningSource:Lcom/mopub/nativeads/PositioningSource;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mViewMap:Ljava/util/HashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/mopub/nativeads/NativeResponse;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVisibleRangeEnd:I

.field private mVisibleRangeStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$1;

    invoke-direct {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$1;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->EMPTY_NATIVE_AD_LOADED_LISTENER:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    invoke-static {}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->serverPositioning()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/content/Context;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adPositioning"    # Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    new-instance v0, Lcom/mopub/nativeads/NativeAdSource;

    invoke-direct {v0}, Lcom/mopub/nativeads/NativeAdSource;-><init>()V

    new-instance v1, Lcom/mopub/nativeads/ImpressionTracker;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/ImpressionTracker;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/mopub/nativeads/ClientPositioningSource;

    invoke-direct {v2, p2}, Lcom/mopub/nativeads/ClientPositioningSource;-><init>(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/content/Context;Lcom/mopub/nativeads/NativeAdSource;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/PositioningSource;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adPositioning"    # Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 110
    new-instance v0, Lcom/mopub/nativeads/NativeAdSource;

    invoke-direct {v0}, Lcom/mopub/nativeads/NativeAdSource;-><init>()V

    new-instance v1, Lcom/mopub/nativeads/ImpressionTracker;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/ImpressionTracker;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/mopub/nativeads/ServerPositioningSource;

    invoke-direct {v2, p1}, Lcom/mopub/nativeads/ServerPositioningSource;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/content/Context;Lcom/mopub/nativeads/NativeAdSource;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/PositioningSource;)V

    .line 114
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mopub/nativeads/NativeAdSource;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/PositioningSource;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adSource"    # Lcom/mopub/nativeads/NativeAdSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "impressionTracker"    # Lcom/mopub/nativeads/ImpressionTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "positioningSource"    # Lcom/mopub/nativeads/PositioningSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->EMPTY_NATIVE_AD_LOADED_LISTENER:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    .line 138
    const-string v0, "context is not allowed to be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    const-string v0, "adSource is not allowed to be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    const-string v0, "impressionTracker is not allowed to be null"

    invoke-static {p3, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    const-string v0, "positioningSource is not allowed to be null"

    invoke-static {p4, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mContext:Landroid/content/Context;

    .line 146
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    .line 147
    iput-object p4, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPositioningSource:Lcom/mopub/nativeads/PositioningSource;

    .line 148
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    .line 149
    invoke-static {}, Lcom/mopub/nativeads/PlacementData;->empty()Lcom/mopub/nativeads/PlacementData;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    .line 151
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNativeResponseMap:Ljava/util/WeakHashMap;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mViewMap:Ljava/util/HashMap;

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$2;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$2;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementRunnable:Ljava/lang/Runnable;

    .line 166
    iput v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    .line 167
    iput v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeEnd:I

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNeedsPlacement:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubStreamAdPlacer;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNeedsPlacement:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeAds()V

    return-void
.end method

.method private clearNativeResponse(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 710
    if-nez p1, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    .line 714
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNativeResponseMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeResponse;

    .line 715
    .local v0, "lastNativeResponse":Lcom/mopub/nativeads/NativeResponse;
    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeResponse;->clear(Landroid/view/View;)V

    .line 717
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNativeResponseMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private createAdData(ILcom/mopub/nativeads/NativeResponse;)Lcom/mopub/nativeads/NativeAdData;
    .locals 3
    .param p1, "position"    # I
    .param p2, "adResponse"    # Lcom/mopub/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 702
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 703
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 706
    new-instance v0, Lcom/mopub/nativeads/NativeAdData;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdUnitId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    invoke-direct {v0, v1, v2, p2}, Lcom/mopub/nativeads/NativeAdData;-><init>(Ljava/lang/String;Lcom/mopub/nativeads/MoPubAdRenderer;Lcom/mopub/nativeads/NativeResponse;)V

    return-object v0
.end method

.method private notifyNeedsPlacement()V
    .locals 2

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNeedsPlacement:Z

    if-eqz v0, :cond_0

    .line 636
    :goto_0
    return-void

    .line 632
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNeedsPlacement:Z

    .line 635
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private placeAds()V
    .locals 2

    .prologue
    .line 643
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeEnd:I

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->tryPlaceAdsInRange(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    :goto_0
    return-void

    .line 650
    :cond_0
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeEnd:I

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeEnd:I

    add-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->tryPlaceAdsInRange(II)Z

    goto :goto_0
.end method

.method private placeInitialAds(Lcom/mopub/nativeads/PlacementData;)V
    .locals 2
    .param p1, "placementData"    # Lcom/mopub/nativeads/PlacementData;

    .prologue
    .line 298
    const/4 v0, 0x0

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    .line 300
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    .line 301
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeAds()V

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasPlacedAds:Z

    .line 303
    return-void
.end method

.method private prepareNativeResponse(Lcom/mopub/nativeads/NativeResponse;Landroid/view/View;)V
    .locals 2
    .param p1, "nativeResponse"    # Lcom/mopub/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 723
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mViewMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNativeResponseMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeResponse;->isOverridingImpressionTracker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0, p2, p1}, Lcom/mopub/nativeads/ImpressionTracker;->addView(Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V

    .line 728
    :cond_0
    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/NativeResponse;->prepare(Landroid/view/View;)V

    .line 729
    return-void
.end method

.method private tryPlaceAd(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 687
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeAdSource;->dequeueAd()Lcom/mopub/nativeads/NativeResponse;

    move-result-object v1

    .line 688
    .local v1, "adResponse":Lcom/mopub/nativeads/NativeResponse;
    if-nez v1, :cond_0

    .line 689
    const/4 v2, 0x0

    .line 697
    :goto_0
    return v2

    .line 692
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->createAdData(ILcom/mopub/nativeads/NativeResponse;)Lcom/mopub/nativeads/NativeAdData;

    move-result-object v0

    .line 693
    .local v0, "adData":Lcom/mopub/nativeads/NativeAdData;
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v2, p1, v0}, Lcom/mopub/nativeads/PlacementData;->placeAd(ILcom/mopub/nativeads/NativeAdData;)V

    .line 694
    iget v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    .line 696
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v2, p1}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdLoaded(I)V

    .line 697
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private tryPlaceAdsInRange(II)Z
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 662
    move v1, p1

    .line 663
    .local v1, "position":I
    add-int/lit8 v0, p2, -0x1

    .line 664
    .local v0, "lastPosition":I
    :goto_0
    if-gt v1, v0, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 665
    iget v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    if-lt v1, v2, :cond_1

    .line 676
    :cond_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 668
    :cond_1
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v2, v1}, Lcom/mopub/nativeads/PlacementData;->shouldPlaceAd(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 669
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->tryPlaceAd(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 670
    const/4 v2, 0x0

    goto :goto_1

    .line 672
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 674
    :cond_3
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v2, v1}, Lcom/mopub/nativeads/PlacementData;->nextInsertionPosition(I)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public clearAds()V
    .locals 2

    .prologue
    .line 355
    const/4 v0, 0x0

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    .line 356
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAdSource;->clear()V

    .line 357
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAdSource;->clear()V

    .line 371
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0}, Lcom/mopub/nativeads/ImpressionTracker;->destroy()V

    .line 372
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0}, Lcom/mopub/nativeads/PlacementData;->clearAds()V

    .line 373
    return-void
.end method

.method public getAdData(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getPlacedAd(I)Lcom/mopub/nativeads/NativeAdData;

    move-result-object v0

    return-object v0
.end method

.method public getAdView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 404
    iget-object v6, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v6, p1}, Lcom/mopub/nativeads/PlacementData;->getPlacedAd(I)Lcom/mopub/nativeads/NativeAdData;

    move-result-object v0

    .line 405
    .local v0, "adData":Lcom/mopub/nativeads/NativeAdData;
    if-nez v0, :cond_1

    .line 406
    const/4 v5, 0x0

    .line 427
    :cond_0
    :goto_0
    return-object v5

    .line 409
    :cond_1
    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAdData;->getAdRenderer()Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object v1

    .line 410
    .local v1, "adRenderer":Lcom/mopub/nativeads/MoPubAdRenderer;
    if-eqz p2, :cond_3

    move-object v5, p2

    .line 413
    .local v5, "view":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAdData;->getAd()Lcom/mopub/nativeads/NativeResponse;

    move-result-object v4

    .line 414
    .local v4, "nativeResponse":Lcom/mopub/nativeads/NativeResponse;
    iget-object v6, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 415
    .local v3, "mappedViewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v2, 0x0

    .line 416
    .local v2, "mappedView":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 417
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mappedView":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 419
    .restart local v2    # "mappedView":Landroid/view/View;
    :cond_2
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 420
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->clearNativeResponse(Landroid/view/View;)V

    .line 421
    invoke-direct {p0, v5}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->clearNativeResponse(Landroid/view/View;)V

    .line 422
    invoke-direct {p0, v4, v5}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->prepareNativeResponse(Lcom/mopub/nativeads/NativeResponse;Landroid/view/View;)V

    .line 424
    invoke-interface {v1, v5, v4}, Lcom/mopub/nativeads/MoPubAdRenderer;->renderAdView(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    .line 410
    .end local v2    # "mappedView":Landroid/view/View;
    .end local v3    # "mappedViewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    .end local v4    # "nativeResponse":Lcom/mopub/nativeads/NativeResponse;
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mContext:Landroid/content/Context;

    invoke-interface {v1, v6, p3}, Lcom/mopub/nativeads/MoPubAdRenderer;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto :goto_1
.end method

.method public getAdViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdViewTypeCount()I
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public getAdjustedCount(I)I
    .locals 1
    .param p1, "originalCount"    # I

    .prologue
    .line 542
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getAdjustedCount(I)I

    move-result v0

    return v0
.end method

.method public getAdjustedPosition(I)I
    .locals 1
    .param p1, "originalPosition"    # I

    .prologue
    .line 522
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getAdjustedPosition(I)I

    move-result v0

    return v0
.end method

.method public getOriginalCount(I)I
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getOriginalCount(I)I

    move-result v0

    return v0
.end method

.method public getOriginalPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 512
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getOriginalPosition(I)I

    move-result v0

    return v0
.end method

.method handleAdsAvailable()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasPlacedAds:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->notifyNeedsPlacement()V

    .line 293
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedPositions:Z

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPendingPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeInitialAds(Lcom/mopub/nativeads/PlacementData;)V

    .line 292
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedAds:Z

    goto :goto_0
.end method

.method handlePositioningLoad(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 2
    .param p1, "positioning"    # Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 271
    invoke-static {p1}, Lcom/mopub/nativeads/PlacementData;->fromAdPositioning(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lcom/mopub/nativeads/PlacementData;

    move-result-object v0

    .line 272
    .local v0, "placementData":Lcom/mopub/nativeads/PlacementData;
    iget-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedAds:Z

    if-eqz v1, :cond_0

    .line 273
    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeInitialAds(Lcom/mopub/nativeads/PlacementData;)V

    .line 277
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedPositions:Z

    .line 278
    return-void

    .line 275
    :cond_0
    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPendingPlacementData:Lcom/mopub/nativeads/PlacementData;

    goto :goto_0
.end method

.method public insertItem(I)V
    .locals 1
    .param p1, "originalPosition"    # I

    .prologue
    .line 581
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->insertItem(I)V

    .line 582
    return-void
.end method

.method public isAd(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->isPlacedAd(I)Z

    move-result v0

    return v0
.end method

.method public loadAds(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    .line 212
    return-void
.end method

.method public loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestParameters"    # Lcom/mopub/nativeads/RequestParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 230
    const-string v0, "Cannot load ads with a null ad unit ID"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    if-nez v0, :cond_1

    .line 235
    const-string v0, "You must call registerAdRenderer before loading ads"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_1
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdUnitId:Ljava/lang/String;

    .line 241
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasPlacedAds:Z

    .line 242
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedPositions:Z

    .line 243
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedAds:Z

    .line 245
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPositioningSource:Lcom/mopub/nativeads/PositioningSource;

    new-instance v1, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    invoke-interface {v0, p1, v1}, Lcom/mopub/nativeads/PositioningSource;->loadPositions(Ljava/lang/String;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V

    .line 259
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    new-instance v1, Lcom/mopub/nativeads/MoPubStreamAdPlacer$4;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$4;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeAdSource;->setAdSourceListener(Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;)V

    .line 266
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/mopub/nativeads/NativeAdSource;->loadAds(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    goto :goto_0
.end method

.method public moveItem(II)V
    .locals 1
    .param p1, "originalPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 624
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/PlacementData;->moveItem(II)V

    .line 625
    return-void
.end method

.method public placeAdsInRange(II)V
    .locals 1
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 326
    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    .line 327
    add-int/lit8 v0, p1, 0x64

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeEnd:I

    .line 328
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->notifyNeedsPlacement()V

    .line 329
    return-void
.end method

.method public registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 1
    .param p1, "adRenderer"    # Lcom/mopub/nativeads/MoPubAdRenderer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 180
    const-string v0, "Cannot register a null adRenderer"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    goto :goto_0
.end method

.method public removeAdsInRange(II)I
    .locals 9
    .param p1, "originalStartPosition"    # I
    .param p2, "originalEndPosition"    # I

    .prologue
    .line 440
    iget-object v8, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v8}, Lcom/mopub/nativeads/PlacementData;->getPlacedAdPositions()[I

    move-result-object v6

    .line 442
    .local v6, "positions":[I
    iget-object v8, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v8, p1}, Lcom/mopub/nativeads/PlacementData;->getAdjustedPosition(I)I

    move-result v1

    .line 443
    .local v1, "adjustedStartRange":I
    iget-object v8, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v8, p2}, Lcom/mopub/nativeads/PlacementData;->getAdjustedPosition(I)I

    move-result v0

    .line 445
    .local v0, "adjustedEndRange":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v7, "removedPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v8, v6

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 449
    aget v5, v6, v3

    .line 450
    .local v5, "position":I
    if-lt v5, v1, :cond_0

    if-lt v5, v0, :cond_1

    .line 448
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 454
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget v8, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    if-ge v5, v8, :cond_2

    .line 459
    iget v8, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    .line 461
    :cond_2
    iget v8, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    goto :goto_1

    .line 464
    .end local v5    # "position":I
    :cond_3
    iget-object v8, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v8, v1, v0}, Lcom/mopub/nativeads/PlacementData;->clearAdsInRange(II)I

    move-result v2

    .line 465
    .local v2, "clearedAdsCount":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 466
    .restart local v5    # "position":I
    iget-object v8, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v8, v5}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdRemoved(I)V

    goto :goto_2

    .line 468
    .end local v5    # "position":I
    :cond_4
    return v2
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "originalPosition"    # I

    .prologue
    .line 602
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->removeItem(I)V

    .line 603
    return-void
.end method

.method public setAdLoadedListener(Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 199
    if-nez p1, :cond_0

    sget-object p1, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->EMPTY_NATIVE_AD_LOADED_LISTENER:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    .end local p1    # "listener":Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;
    :cond_0
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    .line 200
    return-void
.end method

.method public setItemCount(I)V
    .locals 1
    .param p1, "originalCount"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getAdjustedCount(I)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    .line 558
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasPlacedAds:Z

    if-eqz v0, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->notifyNeedsPlacement()V

    .line 561
    :cond_0
    return-void
.end method
