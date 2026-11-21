.class public Lcom/flurry/sdk/dp;
.super Lcom/flurry/sdk/dq;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:I

.field private d:Z

.field private e:F

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/flurry/sdk/dp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dp;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ec$a;)V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/dq;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ec$a;)V

    .line 27
    iput v0, p0, Lcom/flurry/sdk/dp;->c:I

    .line 28
    iput-boolean v0, p0, Lcom/flurry/sdk/dp;->d:Z

    .line 29
    iput v1, p0, Lcom/flurry/sdk/dp;->e:F

    .line 30
    iput v1, p0, Lcom/flurry/sdk/dp;->f:F

    .line 38
    invoke-interface {p2}, Lcom/flurry/sdk/r;->k()Lcom/flurry/sdk/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v1

    iget-boolean v1, v1, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->videoAutoPlay:Z

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/dp;->setAutoPlay(Z)V

    .line 41
    invoke-interface {p2}, Lcom/flurry/sdk/r;->k()Lcom/flurry/sdk/ap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flurry/sdk/dp;->a(Lcom/flurry/sdk/ap;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/dp;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/dp;->setVideoUri(Landroid/net/Uri;)V

    .line 45
    invoke-interface {p2}, Lcom/flurry/sdk/r;->k()Lcom/flurry/sdk/ap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flurry/sdk/dp;->b(Lcom/flurry/sdk/ap;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/flurry/sdk/dp;->d:Z

    .line 47
    invoke-interface {p2}, Lcom/flurry/sdk/r;->k()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v0

    iget v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->videoPctCompletionForMoreInfo:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/flurry/sdk/dp;->e:F

    .line 50
    invoke-interface {p2}, Lcom/flurry/sdk/r;->k()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v0

    iget v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->videoPctCompletionForReward:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/flurry/sdk/dp;->f:F

    .line 51
    return-void
.end method

.method private a(Lcom/flurry/sdk/ap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/flurry/sdk/ap;->g()Lcom/flurry/sdk/cy;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/flurry/sdk/cy;->f()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/flurry/sdk/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/flurry/sdk/ap;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/flurry/sdk/ap;->g()Lcom/flurry/sdk/cy;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/flurry/sdk/cy;->i()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-static {v0}, Lcom/flurry/sdk/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 149
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dp;->b:Ljava/lang/String;

    const-string v2, "Reward granted: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/flurry/sdk/dp;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v0

    .line 151
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dt;->f(Z)V

    .line 152
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;)V

    .line 142
    iget v0, p0, Lcom/flurry/sdk/dp;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/flurry/sdk/aw;->I:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/dp;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;)V

    .line 145
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;FF)V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/dq;->a(Ljava/lang/String;FF)V

    .line 87
    const v0, 0x453b8000    # 3000.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 88
    iget-boolean v0, p0, Lcom/flurry/sdk/dp;->d:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/flurry/sdk/dp;->c:I

    or-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Lcom/flurry/sdk/dp;->c:I

    .line 98
    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    .line 99
    iget v0, p0, Lcom/flurry/sdk/dp;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/flurry/sdk/dp;->c:I

    .line 100
    iget v0, p0, Lcom/flurry/sdk/dp;->c:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/flurry/sdk/dp;->c:I

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/dp;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v0

    iget-wide v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->closableTimeMillis15SecOrLess:J

    .line 105
    const v2, 0x466a6000    # 15000.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/flurry/sdk/dp;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v0

    iget-wide v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->closableTimeMillisLongerThan15Sec:J

    .line 109
    :cond_2
    long-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    .line 110
    iget v0, p0, Lcom/flurry/sdk/dp;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/dp;->c:I

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/dp;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v0

    .line 115
    iget v1, p0, Lcom/flurry/sdk/dp;->f:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Lcom/flurry/sdk/dp;->f:F

    mul-float/2addr v1, p2

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_4

    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 116
    invoke-direct {p0}, Lcom/flurry/sdk/dp;->g()V

    .line 117
    sget-object v0, Lcom/flurry/sdk/aw;->I:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/dp;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;)V

    .line 119
    :cond_4
    return-void

    .line 88
    :cond_5
    iget v0, p0, Lcom/flurry/sdk/dp;->c:I

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/flurry/sdk/dp;->c:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/flurry/sdk/dp;->c:I

    .line 134
    invoke-super {p0}, Lcom/flurry/sdk/dq;->b()V

    .line 135
    return-void
.end method

.method protected getViewParams()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/flurry/sdk/dp;->c:I

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/flurry/sdk/dp;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->i()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/dp;->c:I

    .line 79
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/dp;->c:I

    return v0
.end method

.method public setAutoPlay(Z)V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/flurry/sdk/dq;->setAutoPlay(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/flurry/sdk/dp;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->a()I

    move-result v0

    .line 126
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 127
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/flurry/sdk/dp;->c:I

    :goto_0
    iput v0, p0, Lcom/flurry/sdk/dp;->c:I

    .line 129
    :cond_0
    return-void

    .line 127
    :cond_1
    iget v0, p0, Lcom/flurry/sdk/dp;->c:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method
