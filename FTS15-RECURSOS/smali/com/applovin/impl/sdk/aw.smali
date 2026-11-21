.class Lcom/applovin/impl/sdk/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/u;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/sdk/AppLovinLogger;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/aw;->b:Lcom/applovin/sdk/AppLovinLogger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/aw;->c:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/aw;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/aw;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/aw;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/aw;->f:Ljava/util/Set;

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdSize;)Lcom/applovin/impl/sdk/bd;
    .locals 1

    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {p1, v0}, Lcom/applovin/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/bb;->an:Lcom/applovin/impl/sdk/bd;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/applovin/impl/sdk/bb;->aj:Lcom/applovin/impl/sdk/bd;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/applovin/impl/sdk/bb;->ak:Lcom/applovin/impl/sdk/bd;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/applovin/impl/sdk/bb;->al:Lcom/applovin/impl/sdk/bd;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/applovin/impl/sdk/bb;->am:Lcom/applovin/impl/sdk/bd;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/applovin/impl/sdk/bb;->aj:Lcom/applovin/impl/sdk/bd;

    goto :goto_0
.end method

.method private a()Ljava/util/Map;
    .locals 6

    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {}, Lcom/applovin/sdk/AppLovinAdSize;->allSizes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAdSize;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdSize;)Lcom/applovin/impl/sdk/bd;

    move-result-object v1

    iget-object v4, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v4, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v4, Lcom/applovin/impl/sdk/ax;

    invoke-direct {v4, v1}, Lcom/applovin/impl/sdk/ax;-><init>(I)V

    new-instance v1, Lcom/applovin/impl/sdk/c;

    sget-object v5, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-direct {v1, v0, v5}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdSize;)Lcom/applovin/impl/sdk/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/applovin/impl/sdk/ax;

    invoke-direct {v1, v0}, Lcom/applovin/impl/sdk/ax;-><init>(I)V

    new-instance v0, Lcom/applovin/impl/sdk/c;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    sget-object v4, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-direct {v0, v3, v4}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private g(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Lcom/applovin/impl/sdk/ax;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->d:Ljava/util/Map;

    new-instance v1, Lcom/applovin/impl/sdk/c;

    invoke-direct {v1, p1, p2}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/ax;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/c;I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PreloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to pre-load an ad of spec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/aw;->f:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v1, v0, Lcom/applovin/impl/sdk/u;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/applovin/impl/sdk/u;

    invoke-interface {v0, p1, p2}, Lcom/applovin/impl/sdk/u;->a(Lcom/applovin/impl/sdk/c;I)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-interface {v0, p2}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    goto :goto_0
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->G:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/aw;->d(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PreloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preloading ad for size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/impl/sdk/bk;

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/applovin/impl/sdk/bk;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bk;->a(Z)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/bn;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/bo;->b:Lcom/applovin/impl/sdk/bo;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/applovin/impl/sdk/bn;->a(Lcom/applovin/impl/sdk/ba;Lcom/applovin/impl/sdk/bo;J)V

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 5

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/applovin/impl/sdk/c;

    invoke-direct {v0, p1, p2}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/aw;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/aw;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "PreloadManager"

    const-string v4, "Possibly missing prior registered preload callback."

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/aw;->e:Ljava/util/Map;

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 6

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/applovin/impl/sdk/c;

    invoke-direct {v2, p1}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v3, p0, Lcom/applovin/impl/sdk/aw;->e:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/applovin/impl/sdk/aw;->f:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/applovin/impl/sdk/aw;->g(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Lcom/applovin/impl/sdk/ax;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/applovin/impl/sdk/ax;->a(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/aw;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "PreloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad enqueued: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PreloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called additional callback regarding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "PreloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pulled ad from network and saved to preload cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/aw;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "PreloadManager"

    const-string v4, "Additional callback found, skipping enqueue."

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/aw;->g(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Lcom/applovin/impl/sdk/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ax;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/aw;->f(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V
    .locals 3

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/aw;->g(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Lcom/applovin/impl/sdk/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ax;->b()I

    move-result v2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ax;->a()I

    move-result v0

    sub-int/2addr v2, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public d(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Z
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/aw;->g(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Lcom/applovin/impl/sdk/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ax;->c()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Lcom/applovin/sdk/AppLovinAd;
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/aw;->g(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Lcom/applovin/impl/sdk/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ax;->e()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method f(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Z
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/c;

    invoke-direct {v0, p1, p2}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/aw;->f:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public failedToReceiveAd(I)V
    .locals 0

    return-void
.end method
