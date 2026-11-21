.class public Lcom/flurry/sdk/cr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/sdk/cr;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/flurry/sdk/cr;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public static a(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)Lcom/flurry/android/AdCreative;
    .locals 6

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 54
    :cond_0
    iget v1, p0, Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;->adHeight:I

    .line 55
    iget v2, p0, Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;->adWidth:I

    .line 56
    iget-object v3, p0, Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;->format:Ljava/lang/String;

    .line 57
    iget-object v4, p0, Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;->fix:Ljava/lang/String;

    .line 58
    iget-object v5, p0, Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;->alignment:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/flurry/android/AdCreative;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/AdCreative;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;)Lcom/flurry/android/AdCreative;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 63
    if-nez p0, :cond_0

    move-object v0, v1

    .line 82
    :goto_0
    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adFrames:Ljava/util/List;

    .line 68
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 69
    goto :goto_0

    .line 72
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    .line 73
    if-nez v0, :cond_3

    move-object v0, v1

    .line 74
    goto :goto_0

    .line 77
    :cond_3
    iget-object v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->adSpaceLayout:Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;

    .line 78
    if-nez v0, :cond_4

    move-object v0, v1

    .line 79
    goto :goto_0

    .line 82
    :cond_4
    invoke-static {v0}, Lcom/flurry/sdk/cr;->a(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)Lcom/flurry/android/AdCreative;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;Lcom/flurry/sdk/b;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;",
            "Lcom/flurry/sdk/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    iget-object v0, p0, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->callbacks:Ljava/util/List;

    .line 240
    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v1}, Lcom/flurry/sdk/aw;->a()Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/protocol/v13/Callback;

    .line 244
    iget-object v1, v0, Lcom/flurry/android/impl/ads/protocol/v13/Callback;->event:Ljava/lang/String;

    .line 245
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/Callback;->actions:Ljava/util/List;

    .line 248
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 249
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 250
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 253
    const/4 v1, -0x1

    if-eq v7, v1, :cond_2

    .line 255
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 256
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v7, "%{eventParams}"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 259
    const-string v7, "%{eventParams}"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 260
    iget-object v7, p1, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 263
    :cond_1
    invoke-static {v0}, Lcom/flurry/sdk/hp;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, v1

    .line 267
    :cond_2
    new-instance v1, Lcom/flurry/sdk/a;

    invoke-static {v0}, Lcom/flurry/sdk/a;->c(Ljava/lang/String;)Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-direct {v1, v0, v6, p1}, Lcom/flurry/sdk/a;-><init>(Lcom/flurry/sdk/au;Ljava/util/Map;Lcom/flurry/sdk/b;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_3
    return-object v2
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/at;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/SdkAdLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    if-nez p0, :cond_0

    move-object v0, v2

    .line 234
    :goto_0
    return-object v0

    .line 205
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/at;

    .line 206
    new-instance v4, Lcom/flurry/android/impl/ads/protocol/v13/SdkAdLog;

    invoke-direct {v4}, Lcom/flurry/android/impl/ads/protocol/v13/SdkAdLog;-><init>()V

    .line 207
    invoke-virtual {v0}, Lcom/flurry/sdk/at;->c()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/flurry/android/impl/ads/protocol/v13/SdkAdLog;->sessionId:J

    .line 208
    invoke-virtual {v0}, Lcom/flurry/sdk/at;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_2
    iput-object v1, v4, Lcom/flurry/android/impl/ads/protocol/v13/SdkAdLog;->adLogGUID:Ljava/lang/String;

    .line 209
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 213
    monitor-enter v0

    .line 214
    :try_start_0
    invoke-virtual {v0}, Lcom/flurry/sdk/at;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/as;

    .line 215
    invoke-virtual {v1}, Lcom/flurry/sdk/as;->b()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 216
    new-instance v7, Lcom/flurry/android/impl/ads/protocol/v13/SdkAdEvent;

    invoke-direct {v7}, Lcom/flurry/android/impl/ads/protocol/v13/SdkAdEvent;-><init>()V

    .line 217
    invoke-virtual {v1}, Lcom/flurry/sdk/as;->a()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/flurry/android/impl/ads/protocol/v13/SdkAdEvent;->type:Ljava/lang/String;

    .line 218
    invoke-virtual {v1}, Lcom/flurry/sdk/as;->c()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/flurry/android/impl/ads/protocol/v13/SdkAdEvent;->timeOffset:J

    .line 219
    invoke-virtual {v1}, Lcom/flurry/sdk/as;->d()Ljava/util/Map;

    move-result-object v1

    .line 220
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 221
    invoke-interface {v8, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 222
    iput-object v8, v7, Lcom/flurry/android/impl/ads/protocol/v13/SdkAdEvent;->params:Ljava/util/Map;

    .line 223
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 208
    :cond_3
    invoke-virtual {v0}, Lcom/flurry/sdk/at;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 226
    :cond_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    iput-object v5, v4, Lcom/flurry/android/impl/ads/protocol/v13/SdkAdLog;->sdkAdEvents:Ljava/util/List;

    .line 229
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 230
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 234
    goto :goto_0
.end method

.method public static b()Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/flurry/sdk/hn;->j()I

    move-result v0

    .line 105
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    sget-object v0, Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;->PORTRAIT:Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    .line 110
    :goto_0
    return-object v0

    .line 107
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 108
    sget-object v0, Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;->LANDSCAPE:Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    goto :goto_0

    .line 110
    :cond_1
    sget-object v0, Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;->UNKNOWN:Lcom/flurry/android/impl/ads/protocol/v13/ScreenOrientationType;

    goto :goto_0
.end method

.method public static c()Lcom/flurry/android/impl/ads/protocol/v13/Location;
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 115
    new-instance v0, Lcom/flurry/android/impl/ads/protocol/v13/Location;

    invoke-direct {v0}, Lcom/flurry/android/impl/ads/protocol/v13/Location;-><init>()V

    .line 116
    invoke-static {}, Lcom/flurry/sdk/fh;->a()Lcom/flurry/sdk/fh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/fh;->e()Landroid/location/Location;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    .line 120
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v1, v4

    float-to-double v4, v1

    .line 122
    invoke-static {v2, v3, v6}, Lcom/flurry/sdk/hp;->a(DI)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Lcom/flurry/android/impl/ads/protocol/v13/Location;->lat:F

    .line 123
    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/hp;->a(DI)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Lcom/flurry/android/impl/ads/protocol/v13/Location;->lon:F

    .line 126
    :cond_0
    return-object v0
.end method

.method public static d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-static {}, Lcom/flurry/sdk/fr;->a()Lcom/flurry/sdk/fr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fr;->c()Ljava/util/HashMap;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_0
    return-object v1
.end method

.method public static e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/AdReportedId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-static {}, Lcom/flurry/sdk/fe;->a()Lcom/flurry/sdk/fe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fe;->h()Ljava/util/Map;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    new-instance v4, Lcom/flurry/android/impl/ads/protocol/v13/AdReportedId;

    invoke-direct {v4}, Lcom/flurry/android/impl/ads/protocol/v13/AdReportedId;-><init>()V

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/fl;

    iget v1, v1, Lcom/flurry/sdk/fl;->d:I

    iput v1, v4, Lcom/flurry/android/impl/ads/protocol/v13/AdReportedId;->type:I

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/fl;

    iget-boolean v1, v1, Lcom/flurry/sdk/fl;->e:Z

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v4, Lcom/flurry/android/impl/ads/protocol/v13/AdReportedId;->id:Ljava/lang/String;

    .line 155
    :goto_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/flurry/sdk/hp;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/flurry/android/impl/ads/protocol/v13/AdReportedId;->id:Ljava/lang/String;

    goto :goto_1

    .line 157
    :cond_1
    return-object v2
.end method

.method public static f()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapRequestInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->k()Lcom/flurry/sdk/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ba;->b()V

    .line 164
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->k()Lcom/flurry/sdk/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ba;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/az;

    .line 165
    new-instance v3, Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapRequestInfo;

    invoke-direct {v3}, Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapRequestInfo;-><init>()V

    .line 166
    invoke-virtual {v0}, Lcom/flurry/sdk/az;->b()Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapType;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapRequestInfo;->capType:Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapType;

    .line 167
    invoke-virtual {v0}, Lcom/flurry/sdk/az;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapRequestInfo;->id:Ljava/lang/String;

    .line 168
    invoke-virtual {v0}, Lcom/flurry/sdk/az;->e()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapRequestInfo;->expirationTime:J

    .line 169
    invoke-virtual {v0}, Lcom/flurry/sdk/az;->d()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapRequestInfo;->serveTime:J

    .line 170
    invoke-virtual {v0}, Lcom/flurry/sdk/az;->k()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapRequestInfo;->lastViewedTime:J

    .line 171
    invoke-virtual {v0}, Lcom/flurry/sdk/az;->f()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapRequestInfo;->streamCapDurationMillis:J

    .line 172
    invoke-virtual {v0}, Lcom/flurry/sdk/az;->j()I

    move-result v4

    iput v4, v3, Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapRequestInfo;->views:I

    .line 173
    invoke-virtual {v0}, Lcom/flurry/sdk/az;->g()I

    move-result v4

    iput v4, v3, Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapRequestInfo;->capRemaining:I

    .line 174
    invoke-virtual {v0}, Lcom/flurry/sdk/az;->h()I

    move-result v4

    iput v4, v3, Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapRequestInfo;->totalCap:I

    .line 175
    invoke-virtual {v0}, Lcom/flurry/sdk/az;->i()I

    move-result v0

    iput v0, v3, Lcom/flurry/android/impl/ads/protocol/v13/FrequencyCapRequestInfo;->capDurationType:I

    .line 177
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_0
    return-object v1
.end method

.method public static g()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/StreamInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->n()Lcom/flurry/sdk/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bc;->b()V

    .line 187
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->n()Lcom/flurry/sdk/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bc;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/bb;

    .line 188
    new-instance v3, Lcom/flurry/android/impl/ads/protocol/v13/StreamInfo;

    invoke-direct {v3}, Lcom/flurry/android/impl/ads/protocol/v13/StreamInfo;-><init>()V

    .line 189
    invoke-virtual {v0}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/android/impl/ads/protocol/v13/StreamInfo;->adId:Ljava/lang/String;

    .line 190
    invoke-virtual {v0}, Lcom/flurry/sdk/bb;->e()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/android/impl/ads/protocol/v13/StreamInfo;->lastEvent:Ljava/lang/String;

    .line 191
    invoke-virtual {v0}, Lcom/flurry/sdk/bb;->c()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/flurry/android/impl/ads/protocol/v13/StreamInfo;->renderedTime:J

    .line 193
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_0
    return-object v1
.end method
