.class public final Lcom/flurry/android/ads/FlurryAdInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/ads/FlurryAdInterstitial$2;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/sdk/t;

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

.field private d:Lcom/flurry/android/ads/FlurryAdInterstitialListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/android/ads/FlurryAdInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/ads/FlurryAdInterstitial;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/flurry/android/ads/FlurryAdInterstitial$1;

    invoke-direct {v0, p0}, Lcom/flurry/android/ads/FlurryAdInterstitial$1;-><init>(Lcom/flurry/android/ads/FlurryAdInterstitial;)V

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial;->c:Lcom/flurry/sdk/fy;

    .line 115
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    if-nez p1, :cond_1

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ad space must be specified!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    if-nez v0, :cond_3

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find FlurryAds module. Please make sure the library is included."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    sget-object v1, Lcom/flurry/android/ads/FlurryAdInterstitial;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_3
    :try_start_1
    new-instance v0, Lcom/flurry/sdk/t;

    invoke-direct {v0, p1, p2}, Lcom/flurry/sdk/t;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial;->b:Lcom/flurry/sdk/t;

    .line 132
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdStateEvent"

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdInterstitial;->c:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/fz;->a(Ljava/lang/String;Lcom/flurry/sdk/fy;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/ads/FlurryAdInterstitial;)Lcom/flurry/sdk/t;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial;->b:Lcom/flurry/sdk/t;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/android/ads/FlurryAdInterstitial;)Lcom/flurry/android/ads/FlurryAdInterstitialListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial;->d:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdStateEvent"

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdInterstitial;->c:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/fz;->b(Ljava/lang/String;Lcom/flurry/sdk/fy;)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial;->d:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    .line 149
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial;->b:Lcom/flurry/sdk/t;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial;->b:Lcom/flurry/sdk/t;

    invoke-virtual {v0}, Lcom/flurry/sdk/t;->a()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial;->b:Lcom/flurry/sdk/t;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    sget-object v1, Lcom/flurry/android/ads/FlurryAdInterstitial;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public displayAd()V
    .locals 3

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial;->b:Lcom/flurry/sdk/t;

    invoke-virtual {v0}, Lcom/flurry/sdk/t;->u()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    sget-object v1, Lcom/flurry/android/ads/FlurryAdInterstitial;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fetchAd()V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial;->b:Lcom/flurry/sdk/t;

    invoke-virtual {v0}, Lcom/flurry/sdk/t;->t()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    sget-object v1, Lcom/flurry/android/ads/FlurryAdInterstitial;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isReady()Z
    .locals 3

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial;->b:Lcom/flurry/sdk/t;

    invoke-virtual {v0}, Lcom/flurry/sdk/t;->s()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 232
    :goto_0
    return v0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    sget-object v1, Lcom/flurry/android/ads/FlurryAdInterstitial;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/flurry/android/ads/FlurryAdInterstitialListener;)V
    .locals 3

    .prologue
    .line 168
    :try_start_0
    iput-object p1, p0, Lcom/flurry/android/ads/FlurryAdInterstitial;->d:Lcom/flurry/android/ads/FlurryAdInterstitialListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    sget-object v1, Lcom/flurry/android/ads/FlurryAdInterstitial;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setTargeting(Lcom/flurry/android/ads/FlurryAdTargeting;)V
    .locals 3

    .prologue
    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial;->b:Lcom/flurry/sdk/t;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    sget-object v1, Lcom/flurry/android/ads/FlurryAdInterstitial;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
