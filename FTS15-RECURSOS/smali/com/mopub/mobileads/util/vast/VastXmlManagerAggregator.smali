.class public Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;
.super Landroid/os/AsyncTask;
.source "VastXmlManagerAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/mopub/mobileads/util/vast/VastXmlManager;",
        ">;>;"
    }
.end annotation


# static fields
.field static final MAX_TIMES_TO_FOLLOW_VAST_REDIRECT:I = 0x14


# instance fields
.field private mTimesFollowedVastRedirect:I

.field private final mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;)V
    .locals 1
    .param p1, "vastXmlManagerAggregatorListener"    # Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    .line 32
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/util/vast/VastXmlManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v3, 0x0

    .line 37
    .local v3, "vastXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    const/4 v1, 0x0

    .line 39
    .local v1, "httpClient":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    invoke-static {}, Lcom/mopub/common/HttpClient;->getHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 40
    if-eqz p1, :cond_1

    array-length v6, p1

    if-lez v6, :cond_1

    .line 41
    const/4 v6, 0x0

    aget-object v2, p1, v6

    .line 43
    .local v2, "vastXml":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .end local v3    # "vastXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    .local v4, "vastXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 45
    new-instance v5, Lcom/mopub/mobileads/util/vast/VastXmlManager;

    invoke-direct {v5}, Lcom/mopub/mobileads/util/vast/VastXmlManager;-><init>()V

    .line 46
    .local v5, "xmlManager":Lcom/mopub/mobileads/util/vast/VastXmlManager;
    invoke-virtual {v5, v2}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->parseVastXml(Ljava/lang/String;)V

    .line 47
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v5}, Lcom/mopub/mobileads/util/vast/VastXmlManager;->getVastAdTagURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;->followVastRedirect(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 49
    goto :goto_0

    .end local v5    # "xmlManager":Lcom/mopub/mobileads/util/vast/VastXmlManager;
    :cond_0
    move-object v3, v4

    .line 54
    .end local v2    # "vastXml":Ljava/lang/String;
    .end local v4    # "vastXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    .restart local v3    # "vastXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    :cond_1
    if-eqz v1, :cond_2

    .line 55
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 59
    :cond_2
    :goto_1
    return-object v3

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string v6, "Failed to parse VAST XML"

    invoke-static {v6, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    if-eqz v1, :cond_2

    .line 55
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v1, :cond_3

    .line 55
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_3
    throw v6

    .line 54
    .end local v3    # "vastXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    .restart local v2    # "vastXml":Ljava/lang/String;
    .restart local v4    # "vastXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "vastXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    .restart local v3    # "vastXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    goto :goto_3

    .line 51
    .end local v3    # "vastXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    .restart local v4    # "vastXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "vastXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    .restart local v3    # "vastXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    goto :goto_2
.end method

.method followVastRedirect(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "httpClient"    # Landroid/net/http/AndroidHttpClient;
    .param p2, "redirectUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 79
    if-eqz p2, :cond_0

    iget v4, p0, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    const/16 v5, 0x14

    if-ge v4, v5, :cond_0

    .line 80
    iget v4, p0, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    .line 82
    invoke-static {p2}, Lcom/mopub/common/HttpClient;->initializeHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 83
    .local v1, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p1, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 84
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 85
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/util/Strings;->fromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v1    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    return-object v3
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;

    .line 73
    .local v0, "listener":Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
    if-eqz v0, :cond_0

    .line 74
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;->onAggregationComplete(Ljava/util/List;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/util/vast/VastXmlManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "vastXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/util/vast/VastXmlManager;>;"
    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;

    .line 65
    .local v0, "listener":Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;->onAggregationComplete(Ljava/util/List;)V

    .line 68
    :cond_0
    return-void
.end method

.method setTimesFollowedVastRedirect(I)V
    .locals 0
    .param p1, "timesFollowedVastRedirect"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    iput p1, p0, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    .line 93
    return-void
.end method
