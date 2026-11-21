.class Lcom/flurry/sdk/eb$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/eb;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/eb;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/eb;Lcom/flurry/sdk/eb$1;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/flurry/sdk/eb$b;-><init>(Lcom/flurry/sdk/eb;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 295
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadResource: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 298
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->d(Lcom/flurry/sdk/eb;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->d(Lcom/flurry/sdk/eb;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->e(Lcom/flurry/sdk/eb;)V

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->f(Lcom/flurry/sdk/eb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->g(Lcom/flurry/sdk/eb;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Z)Z

    .line 330
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->h(Lcom/flurry/sdk/eb;)V

    .line 332
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->i(Lcom/flurry/sdk/eb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->j(Lcom/flurry/sdk/eb;)V

    .line 334
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->k(Lcom/flurry/sdk/eb;)V

    .line 335
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->l(Lcom/flurry/sdk/eb;)V

    goto :goto_0

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->i(Lcom/flurry/sdk/eb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->m(Lcom/flurry/sdk/eb;)V

    .line 341
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->n(Lcom/flurry/sdk/eb;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->o(Lcom/flurry/sdk/eb;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->p(Lcom/flurry/sdk/eb;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 374
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished: url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adcontroller index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v2}, Lcom/flurry/sdk/eb;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/ap;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 375
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->d(Lcom/flurry/sdk/eb;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->e(Lcom/flurry/sdk/eb;)V

    .line 387
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->s(Lcom/flurry/sdk/eb;)V

    .line 390
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v0}, Lcom/flurry/sdk/eb;->dismissProgressDialog()V

    .line 392
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->d(Lcom/flurry/sdk/eb;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eb;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->o(Lcom/flurry/sdk/eb;)I

    move-result v0

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->o(Lcom/flurry/sdk/eb;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adding WebView to AdUnityView"

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->d(Lcom/flurry/sdk/eb;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eb;->addView(Landroid/view/View;)V

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0, v3}, Lcom/flurry/sdk/eb;->b(Lcom/flurry/sdk/eb;Z)Z

    .line 400
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->g(Lcom/flurry/sdk/eb;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 401
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->f(Lcom/flurry/sdk/eb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->j(Lcom/flurry/sdk/eb;)V

    .line 403
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->k(Lcom/flurry/sdk/eb;)V

    .line 404
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->l(Lcom/flurry/sdk/eb;)V

    goto :goto_0

    .line 407
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->f(Lcom/flurry/sdk/eb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const-string v0, "mraidAdNotSupported"

    invoke-static {v0}, Lcom/flurry/sdk/b;->a(Ljava/lang/String;)Lcom/flurry/sdk/aw;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1, v0}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Lcom/flurry/sdk/aw;)V

    .line 413
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 414
    iget-object v2, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    iget-object v3, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v3}, Lcom/flurry/sdk/eb;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;Lcom/flurry/sdk/ap;I)V

    .line 416
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->n(Lcom/flurry/sdk/eb;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->o(Lcom/flurry/sdk/eb;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 418
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->p(Lcom/flurry/sdk/eb;)V

    goto/16 :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 353
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageStarted: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 354
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->d(Lcom/flurry/sdk/eb;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->q(Lcom/flurry/sdk/eb;)V

    .line 365
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->r(Lcom/flurry/sdk/eb;)V

    .line 367
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0, v4}, Lcom/flurry/sdk/eb;->b(Lcom/flurry/sdk/eb;Z)Z

    .line 368
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0, v4}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Z)Z

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 501
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedError: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v0}, Lcom/flurry/sdk/eb;->dismissProgressDialog()V

    .line 507
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 508
    const-string v1, "market"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 512
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v0}, Lcom/flurry/sdk/eb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 516
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;)V

    .line 524
    :goto_0
    return-void

    .line 518
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 519
    const-string v1, "errorCode"

    sget-object v2, Lcom/flurry/sdk/av;->q:Lcom/flurry/sdk/av;

    invoke-virtual {v2}, Lcom/flurry/sdk/av;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v1, "webViewErrorCode"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v1, "failingUrl"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    sget-object v2, Lcom/flurry/sdk/aw;->g:Lcom/flurry/sdk/aw;

    iget-object v3, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v3}, Lcom/flurry/sdk/eb;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;Lcom/flurry/sdk/ap;I)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v7, 0x3

    .line 427
    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldOverrideUrlLoading: url = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 428
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->d(Lcom/flurry/sdk/eb;)Landroid/webkit/WebView;

    move-result-object v1

    if-eq p1, v1, :cond_2

    :cond_0
    move v3, v0

    .line 494
    :cond_1
    :goto_0
    return v3

    .line 438
    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->d(Lcom/flurry/sdk/eb;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v1}, Lcom/flurry/sdk/cv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 441
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 443
    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 446
    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldOverrideUrlLoading: target url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v1, v4}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 452
    iget-object v4, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v4}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldOverrideUrlLoading: getScheme = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v4, "flurry"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 454
    const-string v2, "event"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 455
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 456
    invoke-static {v2}, Lcom/flurry/sdk/b;->a(Ljava/lang/String;)Lcom/flurry/sdk/aw;

    move-result-object v2

    .line 457
    iget-object v4, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v4, v2}, Lcom/flurry/sdk/eb;->b(Lcom/flurry/sdk/eb;Lcom/flurry/sdk/aw;)V

    .line 458
    iget-object v4, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v4, v2, v1}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Lcom/flurry/sdk/aw;Landroid/net/Uri;)V

    .line 461
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/hp;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 462
    const-string v4, "requiresCallComplete"

    const-string v5, "true"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v4, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    iget-object v5, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v5}, Lcom/flurry/sdk/eb;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5, v0}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;Lcom/flurry/sdk/ap;I)V

    goto/16 :goto_0

    .line 467
    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->t(Lcom/flurry/sdk/eb;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 468
    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1, v0}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;Z)Z

    .line 469
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 470
    iget-object v4, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    sget-object v5, Lcom/flurry/sdk/aw;->h:Lcom/flurry/sdk/aw;

    iget-object v6, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v6}, Lcom/flurry/sdk/eb;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v6, v0}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;Lcom/flurry/sdk/ap;I)V

    .line 472
    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v1}, Lcom/flurry/sdk/eb;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/ap;->l()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 474
    invoke-static {v2}, Lcom/flurry/sdk/cv;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 475
    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "shouldOverrideUrlLoading: isMarketUrl "

    invoke-static {v7, v1, v4}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v1}, Lcom/flurry/sdk/eb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/flurry/sdk/cu;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 478
    :goto_2
    if-nez v1, :cond_5

    invoke-static {v2}, Lcom/flurry/sdk/cv;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 479
    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "shouldOverrideUrlLoading: isGooglePlayUrl "

    invoke-static {v7, v1, v4}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v1}, Lcom/flurry/sdk/eb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/flurry/sdk/cu;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 482
    :cond_5
    if-eqz v1, :cond_6

    .line 483
    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    sget-object v2, Lcom/flurry/sdk/aw;->O:Lcom/flurry/sdk/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v5}, Lcom/flurry/sdk/eb;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;Lcom/flurry/sdk/ap;I)V

    goto/16 :goto_0

    .line 485
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideUrlLoading: loadUrl doGenericLaunch "

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->o()Lcom/flurry/sdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v1}, Lcom/flurry/sdk/eb;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v4}, Lcom/flurry/sdk/eb;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v5}, Lcom/flurry/sdk/eb;->u(Lcom/flurry/sdk/eb;)Z

    move-result v6

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/r;ZZ)V

    goto/16 :goto_0

    .line 490
    :cond_7
    iget-object v0, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideUrlLoading: doGenericLaunch "

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->o()Lcom/flurry/sdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v1}, Lcom/flurry/sdk/eb;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v4}, Lcom/flurry/sdk/eb;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/eb$b;->a:Lcom/flurry/sdk/eb;

    invoke-static {v5}, Lcom/flurry/sdk/eb;->u(Lcom/flurry/sdk/eb;)Z

    move-result v6

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/r;ZZ)V

    goto/16 :goto_0

    :cond_8
    move v1, v0

    goto/16 :goto_2

    :cond_9
    move-object v2, p2

    goto/16 :goto_1
.end method
