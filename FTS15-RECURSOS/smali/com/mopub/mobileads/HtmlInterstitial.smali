.class public Lcom/mopub/mobileads/HtmlInterstitial;
.super Lcom/mopub/mobileads/ResponseBodyInterstitial;
.source "HtmlInterstitial.java"


# instance fields
.field private mClickthroughUrl:Ljava/lang/String;

.field private mHtmlData:Ljava/lang/String;

.field private mIsScrollable:Z

.field private mRedirectUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mHtmlData:Ljava/lang/String;

    .line 19
    const-string v0, "Scrollable"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mIsScrollable:Z

    .line 20
    const-string v0, "Redirect-Url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mRedirectUrl:Ljava/lang/String;

    .line 21
    const-string v0, "Clickthrough-Url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mClickthroughUrl:Ljava/lang/String;

    .line 22
    return-void
.end method

.method protected preRenderHtml(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 3
    .param p1, "customEventInterstitialListener"    # Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mAdReport:Lcom/mopub/common/AdReport;

    iget-object v2, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mHtmlData:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/mopub/mobileads/MoPubActivity;->preRenderHtml(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public showInterstitial()V
    .locals 8

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mHtmlData:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mAdReport:Lcom/mopub/common/AdReport;

    iget-boolean v3, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mIsScrollable:Z

    iget-object v4, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mRedirectUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mClickthroughUrl:Ljava/lang/String;

    iget-wide v6, p0, Lcom/mopub/mobileads/HtmlInterstitial;->mBroadcastIdentifier:J

    invoke-static/range {v0 .. v7}, Lcom/mopub/mobileads/MoPubActivity;->start(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/AdReport;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 32
    return-void
.end method
