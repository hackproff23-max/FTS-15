.class Lcom/flurry/sdk/eb$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/eb$a;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/eb$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/eb$a;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/flurry/sdk/eb$a$3;->a:Lcom/flurry/sdk/eb$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 614
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/eb$a$3;->a:Lcom/flurry/sdk/eb$a;

    iget-object v1, v1, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customViewFullScreenDialog.onDismiss()"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/flurry/sdk/eb$a$3;->a:Lcom/flurry/sdk/eb$a;

    iget-object v0, v0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->v(Lcom/flurry/sdk/eb;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/eb$a$3;->a:Lcom/flurry/sdk/eb$a;

    iget-object v0, v0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->w(Lcom/flurry/sdk/eb;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/flurry/sdk/eb$a$3;->a:Lcom/flurry/sdk/eb$a;

    iget-object v0, v0, Lcom/flurry/sdk/eb$a;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->w(Lcom/flurry/sdk/eb;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 618
    :cond_0
    return-void
.end method
