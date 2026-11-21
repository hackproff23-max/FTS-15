.class Lcom/mopub/nativeads/NativeUrlGenerator;
.super Lcom/mopub/common/AdUrlGenerator;
.source "NativeUrlGenerator.java"


# instance fields
.field private mDesiredAssets:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSequenceNumber:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method private setDesiredAssets()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mDesiredAssets:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-string v0, "assets"

    iget-object v1, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mDesiredAssets:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/NativeUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method private setSequenceNumber()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mSequenceNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-string v0, "MAGIC_NO"

    iget-object v1, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mSequenceNumber:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/NativeUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "serverHostname"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v2, "/m/ad"

    invoke-virtual {p0, p1, v2}, Lcom/mopub/nativeads/NativeUrlGenerator;->initUrlString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeUrlGenerator;->setAdUnitId(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mKeywords:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeUrlGenerator;->setKeywords(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeUrlGenerator;->setLocation(Landroid/location/Location;)V

    .line 57
    iget-object v2, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 58
    .local v0, "clientMetadata":Lcom/mopub/common/ClientMetadata;
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeUrlGenerator;->setSdkVersion(Ljava/lang/String;)V

    .line 60
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeUrlGenerator;->setDeviceInfo([Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->getTimeZoneOffsetString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeUrlGenerator;->setTimezone(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getOrientationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeUrlGenerator;->setOrientation(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDensity()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeUrlGenerator;->setDensity(F)V

    .line 70
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorForUrl()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "networkOperator":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/NativeUrlGenerator;->setMccCode(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/NativeUrlGenerator;->setMncCode(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeUrlGenerator;->setIsoCountryCode(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeUrlGenerator;->setCarrierName(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeUrlGenerator;->setNetworkType(Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V

    .line 79
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeUrlGenerator;->setAppVersion(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeUrlGenerator;->setDesiredAssets()V

    .line 83
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeUrlGenerator;->setSequenceNumber()V

    .line 85
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeUrlGenerator;->appendAdvertisingInfoTemplates()V

    .line 87
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeUrlGenerator;->getFinalUrlString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected setSdkVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "nsv"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/nativeads/NativeUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public bridge synthetic withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/NativeUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/NativeUrlGenerator;

    move-result-object v0

    return-object v0
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/NativeUrlGenerator;
    .locals 0
    .param p1, "adUnitId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mAdUnitId:Ljava/lang/String;

    .line 28
    return-object p0
.end method

.method withRequest(Lcom/mopub/nativeads/RequestParameters;)Lcom/mopub/nativeads/NativeUrlGenerator;
    .locals 1
    .param p1, "requestParameters"    # Lcom/mopub/nativeads/RequestParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getKeywords()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mKeywords:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mLocation:Landroid/location/Location;

    .line 36
    invoke-virtual {p1}, Lcom/mopub/nativeads/RequestParameters;->getDesiredAssets()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mDesiredAssets:Ljava/lang/String;

    .line 38
    :cond_0
    return-object p0
.end method

.method withSequenceNumber(I)Lcom/mopub/nativeads/NativeUrlGenerator;
    .locals 1
    .param p1, "sequenceNumber"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeUrlGenerator;->mSequenceNumber:Ljava/lang/String;

    .line 44
    return-object p0
.end method
