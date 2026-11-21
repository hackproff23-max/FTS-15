.class Lcom/mopub/nativeads/ClickDestinationResolutionListener;
.super Ljava/lang/Object;
.source "ClickDestinationResolutionListener.java"

# interfaces
.implements Lcom/mopub/nativeads/UrlResolutionTask$UrlResolutionListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSpinningProgressView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mopub/nativeads/SpinningProgressView;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrlIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Iterator;Lcom/mopub/nativeads/SpinningProgressView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Iterator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "spinningProgressView"    # Lcom/mopub/nativeads/SpinningProgressView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/nativeads/SpinningProgressView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "urlIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->mUrlIterator:Ljava/util/Iterator;

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->mSpinningProgressView:Ljava/lang/ref/WeakReference;

    .line 28
    return-void
.end method

.method private removeSpinningProgressView()V
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->mSpinningProgressView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/SpinningProgressView;

    .line 96
    .local v0, "spinningProgressView":Lcom/mopub/nativeads/SpinningProgressView;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/mopub/nativeads/SpinningProgressView;->removeFromRoot()Z

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "Failed to resolve URL for click."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->removeSpinningProgressView()V

    .line 92
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "resolvedUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-static {p1}, Lcom/mopub/common/util/Intents;->isNativeBrowserScheme(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    :try_start_0
    invoke-static {p1}, Lcom/mopub/common/util/Intents;->intentForNativeBrowserScheme(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 43
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    invoke-direct {p0}, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->removeSpinningProgressView()V
    :try_end_0
    .catch Lcom/mopub/exceptions/UrlParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Lcom/mopub/exceptions/UrlParseException;
    invoke-virtual {v0}, Lcom/mopub/exceptions/UrlParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 52
    .end local v0    # "e":Lcom/mopub/exceptions/UrlParseException;
    :goto_1
    iget-object v2, p0, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->mUrlIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->mUrlIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/mopub/nativeads/UrlResolutionTask;->getResolvedUrl(Ljava/lang/String;Lcom/mopub/nativeads/UrlResolutionTask$UrlResolutionListener;)V

    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    .line 49
    .local v0, "e":Lcom/mopub/exceptions/IntentNotResolvableException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not handle intent for URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    .end local v0    # "e":Lcom/mopub/exceptions/IntentNotResolvableException;
    :cond_0
    invoke-direct {p0}, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->removeSpinningProgressView()V

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {p1}, Lcom/mopub/common/util/Intents;->isDeepLink(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 62
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/mopub/common/util/Intents;->deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    :try_start_1
    iget-object v2, p0, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-direct {p0}, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->removeSpinningProgressView()V

    goto :goto_0

    .line 69
    :catch_2
    move-exception v0

    .line 70
    .restart local v0    # "e":Lcom/mopub/exceptions/IntentNotResolvableException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not handle intent with URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    invoke-direct {p0}, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->removeSpinningProgressView()V

    .line 76
    .end local v0    # "e":Lcom/mopub/exceptions/IntentNotResolvableException;
    :cond_2
    iget-object v2, p0, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->mUrlIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    iget-object v2, p0, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->mUrlIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/mopub/nativeads/UrlResolutionTask;->getResolvedUrl(Ljava/lang/String;Lcom/mopub/nativeads/UrlResolutionTask$UrlResolutionListener;)V

    goto/16 :goto_0

    .line 72
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->removeSpinningProgressView()V

    throw v2

    .line 79
    :cond_3
    invoke-direct {p0}, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->removeSpinningProgressView()V

    goto/16 :goto_0

    .line 84
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-direct {p0}, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->removeSpinningProgressView()V

    .line 85
    iget-object v2, p0, Lcom/mopub/nativeads/ClickDestinationResolutionListener;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/mopub/common/MoPubBrowser;->open(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
