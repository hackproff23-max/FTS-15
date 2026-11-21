.class public abstract Lcom/mopub/common/BaseUrlGenerator;
.super Ljava/lang/Object;
.source "BaseUrlGenerator.java"


# instance fields
.field private mFirstParam:Z

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getParamDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/mopub/common/BaseUrlGenerator;->mFirstParam:Z

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/common/BaseUrlGenerator;->mFirstParam:Z

    .line 40
    const-string v0, "?"

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "&"

    goto :goto_0
.end method


# virtual methods
.method protected addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/BaseUrlGenerator;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;->getParamDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v0, p0, Lcom/mopub/common/BaseUrlGenerator;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v0, p0, Lcom/mopub/common/BaseUrlGenerator;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v0, p0, Lcom/mopub/common/BaseUrlGenerator;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected appendAdvertisingInfoTemplates()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "udid"

    const-string v1, "mp_tmpl_advertising_id"

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/BaseUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "dnt"

    const-string v1, "mp_tmpl_do_not_track"

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/BaseUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public abstract generateUrlString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected getFinalUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mopub/common/BaseUrlGenerator;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initUrlString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "serverHostname"    # Ljava/lang/String;
    .param p2, "handlerType"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {}, Lcom/mopub/network/Networking;->useHttps()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "https"

    .line 18
    .local v0, "scheme":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/BaseUrlGenerator;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mopub/common/BaseUrlGenerator;->mFirstParam:Z

    .line 20
    return-void

    .line 17
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_0
    const-string v0, "http"

    goto :goto_0
.end method

.method protected setApiVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "apiVersion"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v0, "v"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected setAppVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v0, "av"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method protected varargs setDeviceInfo([Ljava/lang/String;)V
    .locals 4
    .param p1, "info"    # [Ljava/lang/String;

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v1, "result":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 64
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_2
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v2, "dn"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/mopub/common/BaseUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDoNotTrack(Z)V
    .locals 2
    .param p1, "dnt"    # Z

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v0, "dnt"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/BaseUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method protected setExternalStoragePermission(Z)V
    .locals 2
    .param p1, "isExternalStoragePermissionGranted"    # Z

    .prologue
    .line 54
    const-string v1, "android_perms_ext_storage"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/BaseUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 54
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected setUdid(Ljava/lang/String;)V
    .locals 1
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "udid"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
