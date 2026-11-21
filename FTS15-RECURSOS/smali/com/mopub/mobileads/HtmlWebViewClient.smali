.class Lcom/mopub/mobileads/HtmlWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "HtmlWebViewClient.java"


# static fields
.field static final MOPUB_FAIL_LOAD:Ljava/lang/String; = "mopub://failLoad"

.field static final MOPUB_FINISH_LOAD:Ljava/lang/String; = "mopub://finishLoad"


# instance fields
.field private final mClickthroughUrl:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHtmlWebView:Lcom/mopub/mobileads/BaseHtmlWebView;

.field private mHtmlWebViewListener:Lcom/mopub/mobileads/HtmlWebViewListener;

.field private final mRedirectUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/HtmlWebViewListener;Lcom/mopub/mobileads/BaseHtmlWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "htmlWebViewListener"    # Lcom/mopub/mobileads/HtmlWebViewListener;
    .param p2, "htmlWebView"    # Lcom/mopub/mobileads/BaseHtmlWebView;
    .param p3, "clickthrough"    # Ljava/lang/String;
    .param p4, "redirect"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mHtmlWebViewListener:Lcom/mopub/mobileads/HtmlWebViewListener;

    .line 34
    iput-object p2, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mHtmlWebView:Lcom/mopub/mobileads/BaseHtmlWebView;

    .line 35
    iput-object p3, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mClickthroughUrl:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mRedirectUrl:Ljava/lang/String;

    .line 37
    invoke-virtual {p2}, Lcom/mopub/mobileads/BaseHtmlWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private handleCustomIntentFromUri(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 166
    :try_start_0
    const-string v5, "fnc"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "action":Ljava/lang/String;
    const-string v5, "data"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    .local v1, "adData":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v2, "customIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    const-string v5, "com.mopub.intent.extra.AD_CLICK_DATA"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not handle custom intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Is your intent spelled correctly?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "errorMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v2, v4}, Lcom/mopub/mobileads/HtmlWebViewClient;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 181
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "adData":Ljava/lang/String;
    .end local v2    # "customIntent":Landroid/content/Intent;
    .end local v4    # "errorMessage":Ljava/lang/String;
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not handle custom intent with uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePhoneScheme(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/HtmlWebViewClient;->isPhoneScheme(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    const/4 v2, 0x0

    .line 127
    :goto_0
    return v2

    .line 119
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 120
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not handle intent with URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Is this intent supported on your phone?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1, v0}, Lcom/mopub/mobileads/HtmlWebViewClient;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 127
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private handleSpecialMoPubScheme(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/HtmlWebViewClient;->isSpecialMoPubScheme(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const/4 v2, 0x0

    .line 106
    :goto_0
    return v2

    .line 93
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 94
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "host":Ljava/lang/String;
    const-string v2, "finishLoad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mHtmlWebViewListener:Lcom/mopub/mobileads/HtmlWebViewListener;

    iget-object v3, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mHtmlWebView:Lcom/mopub/mobileads/BaseHtmlWebView;

    invoke-interface {v2, v3}, Lcom/mopub/mobileads/HtmlWebViewListener;->onLoaded(Lcom/mopub/mobileads/BaseHtmlWebView;)V

    .line 106
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 98
    :cond_2
    const-string v2, "close"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    iget-object v2, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mHtmlWebViewListener:Lcom/mopub/mobileads/HtmlWebViewListener;

    invoke-interface {v2}, Lcom/mopub/mobileads/HtmlWebViewListener;->onCollapsed()V

    goto :goto_1

    .line 100
    :cond_3
    const-string v2, "failLoad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    iget-object v2, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mHtmlWebViewListener:Lcom/mopub/mobileads/HtmlWebViewListener;

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v2, v3}, Lcom/mopub/mobileads/HtmlWebViewListener;->onFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_1

    .line 102
    :cond_4
    const-string v2, "custom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/HtmlWebViewClient;->handleCustomIntentFromUri(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method private isPhoneScheme(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "voicemail:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sms:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mailto:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "geo:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "google.streetview:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpecialMoPubScheme(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "mopub://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private launchApplicationUrl(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    const-string v0, "Unable to open intent."

    .line 136
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1, v0}, Lcom/mopub/mobileads/HtmlWebViewClient;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private showMoPubBrowserForUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    :cond_0
    const-string p1, "about:blank"

    .line 143
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final URI to show in browser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 145
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "URL"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v4, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mContext:Landroid/content/Context;

    const-class v5, Lcom/mopub/common/MoPubBrowser;

    invoke-static {v4, v5, v1}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 149
    .local v3, "intent":Landroid/content/Intent;
    const-string v0, "Could not handle intent action. . Perhaps you forgot to declare com.mopub.common.MoPubBrowser in your Android manifest file."

    .line 153
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v3, v0}, Lcom/mopub/mobileads/HtmlWebViewClient;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    .line 155
    .local v2, "handledByMoPubBrowser":Z
    if-nez v2, :cond_2

    .line 156
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    const-string v5, "about:blank"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 157
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    iget-object v4, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v3, v5}, Lcom/mopub/mobileads/HtmlWebViewClient;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 160
    :cond_2
    return-void
.end method


# virtual methods
.method launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "errorMessage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-static {p2}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    .line 187
    if-nez p1, :cond_1

    .line 188
    invoke-static {p3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mHtmlWebView:Lcom/mopub/mobileads/BaseHtmlWebView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/BaseHtmlWebView;->wasClicked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    :try_start_0
    invoke-static {p1, p2}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 198
    iget-object v2, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mHtmlWebViewListener:Lcom/mopub/mobileads/HtmlWebViewListener;

    invoke-interface {v2}, Lcom/mopub/mobileads/HtmlWebViewListener;->onClicked()V

    .line 199
    iget-object v2, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mHtmlWebView:Lcom/mopub/mobileads/BaseHtmlWebView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/BaseHtmlWebView;->onResetUserClick()V
    :try_end_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    const/4 v1, 0x1

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Lcom/mopub/exceptions/IntentNotResolvableException;
    invoke-static {p3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mRedirectUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 81
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/HtmlWebViewClient;->showMoPubBrowserForUrl(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad clicked. Click URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/HtmlWebViewClient;->handleSpecialMoPubScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p2}, Lcom/mopub/mobileads/HtmlWebViewClient;->handlePhoneScheme(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v5

    .line 54
    :cond_1
    invoke-static {p2}, Lcom/mopub/common/util/Intents;->isNativeBrowserScheme(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load mopub native browser url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "errorMessage":Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Lcom/mopub/common/util/Intents;->intentForNativeBrowserScheme(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 58
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2, v1}, Lcom/mopub/mobileads/HtmlWebViewClient;->launchIntentForUserClick(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/mopub/exceptions/UrlParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lcom/mopub/exceptions/UrlParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mopub/exceptions/UrlParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v0    # "e":Lcom/mopub/exceptions/UrlParseException;
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Lcom/mopub/common/util/Intents;->isHttpUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/mopub/mobileads/HtmlWebViewClient;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/mopub/common/util/Intents;->canHandleApplicationUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 68
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/HtmlWebViewClient;->launchApplicationUrl(Ljava/lang/String;)Z

    goto :goto_0

    .line 72
    :cond_3
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/HtmlWebViewClient;->showMoPubBrowserForUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
