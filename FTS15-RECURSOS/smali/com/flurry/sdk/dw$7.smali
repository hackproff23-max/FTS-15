.class Lcom/flurry/sdk/dw$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dw;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dw;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/flurry/sdk/dw$7;->a:Lcom/flurry/sdk/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/flurry/sdk/dw$7;->a:Lcom/flurry/sdk/dw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/dw;Z)Z

    .line 303
    iget-object v0, p0, Lcom/flurry/sdk/dw$7;->a:Lcom/flurry/sdk/dw;

    invoke-static {v0}, Lcom/flurry/sdk/dw;->h(Lcom/flurry/sdk/dw;)V

    .line 304
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/flurry/sdk/dw$7;->a:Lcom/flurry/sdk/dw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/dw;Z)Z

    .line 308
    iget-object v0, p0, Lcom/flurry/sdk/dw$7;->a:Lcom/flurry/sdk/dw;

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->c()V

    .line 309
    return-void
.end method
