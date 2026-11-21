.class Lcom/flurry/android/ads/FlurryAdNative$1$1;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/android/ads/FlurryAdNative$1;->a(Lcom/flurry/sdk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/d;

.field final synthetic b:Lcom/flurry/android/ads/FlurryAdNativeListener;

.field final synthetic c:Lcom/flurry/android/ads/FlurryAdNative$1;


# direct methods
.method constructor <init>(Lcom/flurry/android/ads/FlurryAdNative$1;Lcom/flurry/sdk/d;Lcom/flurry/android/ads/FlurryAdNativeListener;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iput-object p2, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->a:Lcom/flurry/sdk/d;

    iput-object p3, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 4

    .prologue
    .line 65
    sget-object v0, Lcom/flurry/android/ads/FlurryAdNative$2;->a:[I

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->a:Lcom/flurry/sdk/d;

    iget-object v1, v1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/d$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onFetched(Lcom/flurry/android/ads/FlurryAdNative;)V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    sget-object v2, Lcom/flurry/android/ads/FlurryAdErrorType;->FETCH:Lcom/flurry/android/ads/FlurryAdErrorType;

    iget-object v3, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->a:Lcom/flurry/sdk/d;

    iget-object v3, v3, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/av;

    invoke-virtual {v3}, Lcom/flurry/sdk/av;->a()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onError(Lcom/flurry/android/ads/FlurryAdNative;Lcom/flurry/android/ads/FlurryAdErrorType;I)V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onShowFullscreen(Lcom/flurry/android/ads/FlurryAdNative;)V

    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onCloseFullscreen(Lcom/flurry/android/ads/FlurryAdNative;)V

    goto :goto_0

    .line 83
    :pswitch_4
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onAppExit(Lcom/flurry/android/ads/FlurryAdNative;)V

    goto :goto_0

    .line 87
    :pswitch_5
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onClicked(Lcom/flurry/android/ads/FlurryAdNative;)V

    goto :goto_0

    .line 91
    :pswitch_6
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    sget-object v2, Lcom/flurry/android/ads/FlurryAdErrorType;->CLICK:Lcom/flurry/android/ads/FlurryAdErrorType;

    iget-object v3, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->a:Lcom/flurry/sdk/d;

    iget-object v3, v3, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/av;

    invoke-virtual {v3}, Lcom/flurry/sdk/av;->a()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onError(Lcom/flurry/android/ads/FlurryAdNative;Lcom/flurry/android/ads/FlurryAdErrorType;I)V

    goto :goto_0

    .line 95
    :pswitch_7
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->b:Lcom/flurry/android/ads/FlurryAdNativeListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNative$1$1;->c:Lcom/flurry/android/ads/FlurryAdNative$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdNative$1;->a:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdNativeListener;->onImpressionLogged(Lcom/flurry/android/ads/FlurryAdNative;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
