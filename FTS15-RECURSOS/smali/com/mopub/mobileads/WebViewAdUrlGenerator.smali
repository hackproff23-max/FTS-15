.class public Lcom/mopub/mobileads/WebViewAdUrlGenerator;
.super Lcom/mopub/common/AdUrlGenerator;
.source "WebViewAdUrlGenerator.java"


# instance fields
.field private final mIsStorePictureSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isStorePictureSupported"    # Z

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;-><init>(Landroid/content/Context;)V

    .line 15
    iput-boolean p2, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->mIsStorePictureSupported:Z

    .line 16
    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "serverHostname"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 20
    const-string v2, "/m/ad"

    invoke-virtual {p0, p1, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->initUrlString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 24
    .local v0, "clientMetadata":Lcom/mopub/common/ClientMetadata;
    const-string v2, "6"

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setApiVersion(Ljava/lang/String;)V

    .line 26
    iget-object v2, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setAdUnitId(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setSdkVersion(Ljava/lang/String;)V

    .line 30
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setDeviceInfo([Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->mKeywords:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setKeywords(Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setLocation(Landroid/location/Location;)V

    .line 38
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->getTimeZoneOffsetString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setTimezone(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getOrientationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setOrientation(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDensity()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setDensity(F)V

    .line 44
    invoke-virtual {p0, v5}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setMraidFlag(Z)V

    .line 46
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorForUrl()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "networkOperator":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setMccCode(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setMncCode(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setIsoCountryCode(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setCarrierName(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setNetworkType(Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V

    .line 55
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setAppVersion(Ljava/lang/String;)V

    .line 57
    iget-boolean v2, p0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->mIsStorePictureSupported:Z

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->setExternalStoragePermission(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->appendAdvertisingInfoTemplates()V

    .line 61
    invoke-virtual {p0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->getFinalUrlString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
