.class public Lcom/flurry/sdk/eq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gg;


# instance fields
.field private a:Lcom/flurry/sdk/ey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/eq;
    .locals 3

    .prologue
    .line 19
    const-class v1, Lcom/flurry/sdk/eq;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    const-class v2, Lcom/flurry/sdk/eq;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Class;)Lcom/flurry/sdk/gg;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/eq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/flurry/sdk/hb;)Lcom/flurry/sdk/fb;
    .locals 1

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/flurry/sdk/fb;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hb;->c(Ljava/lang/Class;)Lcom/flurry/sdk/hf;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fb;

    goto :goto_0
.end method

.method private f()Lcom/flurry/sdk/fb;
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/flurry/sdk/hc;->a()Lcom/flurry/sdk/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->e()Lcom/flurry/sdk/hb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/eq;->a(Lcom/flurry/sdk/hb;)Lcom/flurry/sdk/fb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flurry/sdk/eq;->f()Lcom/flurry/sdk/fb;

    move-result-object v1

    .line 58
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 59
    if-eqz v1, :cond_0

    .line 60
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    .line 62
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/flurry/sdk/eq;->f()Lcom/flurry/sdk/fb;

    move-result-object v1

    .line 67
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 68
    if-eqz v1, :cond_0

    .line 69
    const/4 v0, 0x0

    invoke-virtual {v1, p1, p2, v0}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/flurry/sdk/eq;->f()Lcom/flurry/sdk/fb;

    move-result-object v1

    .line 86
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 88
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    .line 91
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/flurry/sdk/eq;->f()Lcom/flurry/sdk/fb;

    move-result-object v1

    .line 76
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 78
    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0, p2}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    .line 81
    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/hb;->a(Ljava/lang/Class;)V

    .line 32
    new-instance v0, Lcom/flurry/sdk/ey;

    invoke-direct {v0}, Lcom/flurry/sdk/ey;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/eq;->a:Lcom/flurry/sdk/ey;

    .line 33
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_1

    array-length v0, v1

    if-le v0, v4, :cond_1

    .line 115
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 116
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    :goto_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 121
    invoke-direct {p0}, Lcom/flurry/sdk/eq;->f()Lcom/flurry/sdk/fb;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/flurry/sdk/eq;->f()Lcom/flurry/sdk/fb;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/sdk/eq;->a:Lcom/flurry/sdk/ey;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/flurry/sdk/eq;->a:Lcom/flurry/sdk/ey;

    invoke-virtual {v0}, Lcom/flurry/sdk/ey;->a()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/eq;->a:Lcom/flurry/sdk/ey;

    .line 42
    :cond_0
    const-class v0, Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/hb;->b(Ljava/lang/Class;)V

    .line 43
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/flurry/sdk/eq;->f()Lcom/flurry/sdk/fb;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 99
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/flurry/sdk/eq;->f()Lcom/flurry/sdk/fb;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 107
    :cond_0
    return-void
.end method

.method public c()Lcom/flurry/sdk/ey;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/eq;->a:Lcom/flurry/sdk/ey;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/flurry/sdk/eq;->f()Lcom/flurry/sdk/fb;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    .line 139
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/flurry/sdk/eq;->f()Lcom/flurry/sdk/fb;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    .line 146
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/flurry/sdk/eq;->f()Lcom/flurry/sdk/fb;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/flurry/sdk/fb;->b()V

    .line 54
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/flurry/sdk/eq;->f()Lcom/flurry/sdk/fb;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/flurry/sdk/fb;->d()V

    .line 153
    :cond_0
    return-void
.end method
