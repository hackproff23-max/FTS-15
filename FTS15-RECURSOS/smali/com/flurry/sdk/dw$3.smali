.class Lcom/flurry/sdk/dw$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 260
    iput-object p1, p0, Lcom/flurry/sdk/dw$3;->a:Lcom/flurry/sdk/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/flurry/sdk/dw$3;->a:Lcom/flurry/sdk/dw;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/dw;I)I

    .line 263
    iget-object v0, p0, Lcom/flurry/sdk/dw$3;->a:Lcom/flurry/sdk/dw;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/dw;->b(Lcom/flurry/sdk/dw;I)I

    .line 264
    iget-object v0, p0, Lcom/flurry/sdk/dw$3;->a:Lcom/flurry/sdk/dw;

    invoke-static {v0}, Lcom/flurry/sdk/dw;->f(Lcom/flurry/sdk/dw;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/dw$3;->a:Lcom/flurry/sdk/dw;

    invoke-static {v0}, Lcom/flurry/sdk/dw;->g(Lcom/flurry/sdk/dw;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/dw$3;->a:Lcom/flurry/sdk/dw;

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/flurry/sdk/dw$3;->a:Lcom/flurry/sdk/dw;

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dw$3;->a:Lcom/flurry/sdk/dw;

    invoke-static {v1}, Lcom/flurry/sdk/dw;->f(Lcom/flurry/sdk/dw;)I

    move-result v1

    iget-object v2, p0, Lcom/flurry/sdk/dw$3;->a:Lcom/flurry/sdk/dw;

    invoke-static {v2}, Lcom/flurry/sdk/dw;->g(Lcom/flurry/sdk/dw;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 267
    :cond_0
    return-void
.end method
