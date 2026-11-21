.class public final Lcom/flurry/android/ads/FlurryAdBanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/ads/FlurryAdBanner$2;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/sdk/q;

.field private final c:Lcom/flurry/sdk/fy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fy",
            "<",
            "Lcom/flurry/sdk/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/flurry/android/ads/FlurryAdBannerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/flurry/android/ads/FlurryAdBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/flurry/android/ads/FlurryAdBanner$1;

    invoke-direct {v0, p0}, Lcom/flurry/android/ads/FlurryAdBanner$1;-><init>(Lcom/flurry/android/ads/FlurryAdBanner;)V

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->c:Lcom/flurry/sdk/fy;

    .line 117
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    if-nez p1, :cond_1

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ad space must be specified!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    if-nez v0, :cond_3

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find FlurryAds module. Please make sure the library is included."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_3
    :try_start_1
    new-instance v0, Lcom/flurry/sdk/q;

    invoke-direct {v0, p1, p2, p3}, Lcom/flurry/sdk/q;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    .line 134
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdStateEvent"

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdBanner;->c:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/fz;->a(Ljava/lang/String;Lcom/flurry/sdk/fy;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/ads/FlurryAdBanner;)Lcom/flurry/sdk/q;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/android/ads/FlurryAdBanner;)Lcom/flurry/android/ads/FlurryAdBannerListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->d:Lcom/flurry/android/ads/FlurryAdBannerListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 147
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdStateEvent"

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdBanner;->c:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/fz;->b(Ljava/lang/String;Lcom/flurry/sdk/fy;)V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->d:Lcom/flurry/android/ads/FlurryAdBannerListener;

    .line 151
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->a()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public displayAd()V
    .locals 3

    .prologue
    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->w()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fetchAd()V
    .locals 3

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->v()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fetchAndDisplayAd()V
    .locals 3

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->x()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isReady()Z
    .locals 3

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->u()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 247
    :goto_0
    return v0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/flurry/android/ads/FlurryAdBannerListener;)V
    .locals 3

    .prologue
    .line 170
    :try_start_0
    iput-object p1, p0, Lcom/flurry/android/ads/FlurryAdBanner;->d:Lcom/flurry/android/ads/FlurryAdBannerListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setTargeting(Lcom/flurry/android/ads/FlurryAdTargeting;)V
    .locals 3

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/q;->a(Lcom/flurry/sdk/e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
