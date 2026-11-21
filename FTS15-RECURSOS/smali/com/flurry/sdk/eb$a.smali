.class final Lcom/flurry/sdk/eb$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/eb;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/eb;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/eb;Lcom/flurry/sdk/eb$1;)V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/flurry/sdk/eb$a;-><init>(Lcom/flurry/sdk/eb;)V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 629
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHideCustomView()"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v0}, Lcom/flurry/sdk/eb;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v0}, Lcom/flurry/sdk/eb;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 637
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->v(Lcom/flurry/sdk/eb;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->z(Lcom/flurry/sdk/eb;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 642
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->z(Lcom/flurry/sdk/eb;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 645
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 646
    iget-object v2, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v2}, Lcom/flurry/sdk/eb;->x(Lcom/flurry/sdk/eb;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 647
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->x(Lcom/flurry/sdk/eb;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v2}, Lcom/flurry/sdk/eb;->v(Lcom/flurry/sdk/eb;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 649
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->y(Lcom/flurry/sdk/eb;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->y(Lcom/flurry/sdk/eb;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 650
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->y(Lcom/flurry/sdk/eb;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 651
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->y(Lcom/flurry/sdk/eb;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 652
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->y(Lcom/flurry/sdk/eb;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 654
    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1, v3}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 656
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->A(Lcom/flurry/sdk/eb;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/cn;->a(Landroid/app/Activity;I)V

    .line 657
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->B(Lcom/flurry/sdk/eb;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 659
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0, v3}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 660
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0, v3}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 661
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0, v3}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 551
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowCustomView(14)"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v0}, Lcom/flurry/sdk/eb;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 626
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v0}, Lcom/flurry/sdk/eb;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 559
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->v(Lcom/flurry/sdk/eb;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->w(Lcom/flurry/sdk/eb;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 560
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->w(Lcom/flurry/sdk/eb;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1, p1}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Landroid/view/View;)Landroid/view/View;

    .line 565
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;I)I

    .line 566
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1, p3}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 568
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 569
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->x(Lcom/flurry/sdk/eb;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 570
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->x(Lcom/flurry/sdk/eb;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v2}, Lcom/flurry/sdk/eb;->v(Lcom/flurry/sdk/eb;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 581
    iget-object v2, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v2}, Lcom/flurry/sdk/eb;->x(Lcom/flurry/sdk/eb;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 588
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->y(Lcom/flurry/sdk/eb;)Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_2

    .line 589
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    new-instance v2, Lcom/flurry/sdk/eb$a$1;

    const v3, 0x1030011

    invoke-direct {v2, p0, v0, v3, v0}, Lcom/flurry/sdk/eb$a$1;-><init>(Lcom/flurry/sdk/eb$a;Landroid/content/Context;ILandroid/app/Activity;)V

    invoke-static {v1, v2}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 601
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->y(Lcom/flurry/sdk/eb;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 603
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->y(Lcom/flurry/sdk/eb;)Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/eb$a$2;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/eb$a$2;-><init>(Lcom/flurry/sdk/eb$a;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 611
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->y(Lcom/flurry/sdk/eb;)Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/eb$a$3;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/eb$a$3;-><init>(Lcom/flurry/sdk/eb$a;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 620
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->y(Lcom/flurry/sdk/eb;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 621
    iget-object v1, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->y(Lcom/flurry/sdk/eb;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 624
    :cond_2
    invoke-static {v0, p2, v6}, Lcom/flurry/sdk/cn;->a(Landroid/app/Activity;IZ)Z

    goto/16 :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 537
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowCustomView(7)"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v0}, Lcom/flurry/sdk/eb;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 546
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v0}, Lcom/flurry/sdk/eb;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 545
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/flurry/sdk/eb$a;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method
