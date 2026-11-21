.class Lcom/flurry/sdk/eh$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/eh;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ec$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/eh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/eh;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/flurry/sdk/eh$2;->a:Lcom/flurry/sdk/eh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/flurry/sdk/eh$2;->a:Lcom/flurry/sdk/eh;

    invoke-static {v0}, Lcom/flurry/sdk/eh;->b(Lcom/flurry/sdk/eh;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/eh$2;->a:Lcom/flurry/sdk/eh;

    invoke-static {v0}, Lcom/flurry/sdk/eh;->b(Lcom/flurry/sdk/eh;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/flurry/sdk/eh$2;->a:Lcom/flurry/sdk/eh;

    invoke-static {v0}, Lcom/flurry/sdk/eh;->b(Lcom/flurry/sdk/eh;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/eh$2;->a:Lcom/flurry/sdk/eh;

    sget-object v1, Lcom/flurry/sdk/eh$c;->b:Lcom/flurry/sdk/eh$c;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/eh$c;)V

    goto :goto_0
.end method
