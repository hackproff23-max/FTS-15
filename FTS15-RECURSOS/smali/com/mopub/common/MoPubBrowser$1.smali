.class Lcom/mopub/common/MoPubBrowser$1;
.super Landroid/webkit/WebViewClient;
.source "MoPubBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/MoPubBrowser;->initializeWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/common/MoPubBrowser;


# direct methods
.method constructor <init>(Lcom/mopub/common/MoPubBrowser;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mopub/common/MoPubBrowser$1;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mopub/common/util/Drawables;->LEFT_ARROW:Lcom/mopub/common/util/Drawables;

    iget-object v3, p0, Lcom/mopub/common/MoPubBrowser$1;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v2, v3}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    .local v0, "backImageDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p0, Lcom/mopub/common/MoPubBrowser$1;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-static {v2}, Lcom/mopub/common/MoPubBrowser;->access$100(Lcom/mopub/common/MoPubBrowser;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/mopub/common/util/Drawables;->RIGHT_ARROW:Lcom/mopub/common/util/Drawables;

    iget-object v3, p0, Lcom/mopub/common/MoPubBrowser$1;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v2, v3}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 128
    .local v1, "forwardImageDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v2, p0, Lcom/mopub/common/MoPubBrowser$1;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-static {v2}, Lcom/mopub/common/MoPubBrowser;->access$000(Lcom/mopub/common/MoPubBrowser;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    return-void

    .line 120
    .end local v0    # "backImageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "forwardImageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-object v2, Lcom/mopub/common/util/Drawables;->UNLEFT_ARROW:Lcom/mopub/common/util/Drawables;

    iget-object v3, p0, Lcom/mopub/common/MoPubBrowser$1;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v2, v3}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 125
    .restart local v0    # "backImageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget-object v2, Lcom/mopub/common/util/Drawables;->UNRIGHT_ARROW:Lcom/mopub/common/util/Drawables;

    iget-object v3, p0, Lcom/mopub/common/MoPubBrowser$1;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v2, v3}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 113
    iget-object v0, p0, Lcom/mopub/common/MoPubBrowser$1;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-static {v0}, Lcom/mopub/common/MoPubBrowser;->access$000(Lcom/mopub/common/MoPubBrowser;)Landroid/widget/ImageButton;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/util/Drawables;->UNRIGHT_ARROW:Lcom/mopub/common/util/Drawables;

    iget-object v2, p0, Lcom/mopub/common/MoPubBrowser$1;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v1, v2}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoPubBrowser error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 96
    if-nez p2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p2}, Lcom/mopub/common/util/Intents;->isDeepLink(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mopub/common/MoPubBrowser$1;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-static {v2, v0}, Lcom/mopub/common/util/Intents;->deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    iget-object v1, p0, Lcom/mopub/common/MoPubBrowser$1;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v1, v0}, Lcom/mopub/common/MoPubBrowser;->startActivity(Landroid/content/Intent;)V

    .line 103
    iget-object v1, p0, Lcom/mopub/common/MoPubBrowser$1;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v1}, Lcom/mopub/common/MoPubBrowser;->finish()V

    .line 104
    const/4 v1, 0x1

    goto :goto_0
.end method
