.class abstract Lcom/flurry/sdk/eg$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/eg$1;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/flurry/sdk/eg$c;-><init>()V

    return-void
.end method

.method private static h(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)Z
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;->adWidth:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static i(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)Z
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;->adHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)Landroid/view/ViewGroup$LayoutParams;
.end method

.method public b(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 188
    invoke-static {p1}, Lcom/flurry/sdk/eg$c;->h(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/eg$c;->d(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/eg$c;->f(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)I

    move-result v0

    goto :goto_0
.end method

.method public c(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 192
    invoke-static {p1}, Lcom/flurry/sdk/eg$c;->i(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/eg$c;->e(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/eg$c;->g(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)I

    move-result v0

    goto :goto_0
.end method

.method public d(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 196
    iget v0, p1, Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;->adWidth:I

    invoke-static {v0}, Lcom/flurry/sdk/hn;->b(I)I

    move-result v0

    return v0
.end method

.method public e(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 200
    iget v0, p1, Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;->adHeight:I

    invoke-static {v0}, Lcom/flurry/sdk/hn;->b(I)I

    move-result v0

    return v0
.end method

.method public f(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 204
    const/4 v0, -0x1

    return v0
.end method

.method public g(Lcom/flurry/android/impl/ads/protocol/v13/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 208
    const/4 v0, -0x2

    return v0
.end method
