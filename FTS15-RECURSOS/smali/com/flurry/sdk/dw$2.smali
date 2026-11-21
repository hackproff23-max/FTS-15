.class Lcom/flurry/sdk/dw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 245
    iput-object p1, p0, Lcom/flurry/sdk/dw$2;->a:Lcom/flurry/sdk/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 247
    iget-object v0, p0, Lcom/flurry/sdk/dw$2;->a:Lcom/flurry/sdk/dw;

    sget-object v1, Lcom/flurry/sdk/dw$a;->d:Lcom/flurry/sdk/dw$a;

    invoke-static {v0, v1}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/dw;Lcom/flurry/sdk/dw$a;)Lcom/flurry/sdk/dw$a;

    .line 248
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/dw;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnPreparedListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dw$2;->a:Lcom/flurry/sdk/dw;

    invoke-static {v3}, Lcom/flurry/sdk/dw;->d(Lcom/flurry/sdk/dw;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/flurry/sdk/dw$2;->a:Lcom/flurry/sdk/dw;

    invoke-static {v0}, Lcom/flurry/sdk/dw;->e(Lcom/flurry/sdk/dw;)I

    move-result v0

    if-le v0, v4, :cond_1

    .line 250
    iget-object v0, p0, Lcom/flurry/sdk/dw$2;->a:Lcom/flurry/sdk/dw;

    iget-object v1, p0, Lcom/flurry/sdk/dw$2;->a:Lcom/flurry/sdk/dw;

    invoke-static {v1}, Lcom/flurry/sdk/dw;->e(Lcom/flurry/sdk/dw;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dw;->seekTo(I)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/dw$2;->a:Lcom/flurry/sdk/dw;

    invoke-static {v0}, Lcom/flurry/sdk/dw;->b(Lcom/flurry/sdk/dw;)Lcom/flurry/sdk/dz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/dw$2;->a:Lcom/flurry/sdk/dw;

    invoke-static {v0}, Lcom/flurry/sdk/dw;->d(Lcom/flurry/sdk/dw;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/flurry/sdk/dw$2;->a:Lcom/flurry/sdk/dw;

    invoke-static {v0}, Lcom/flurry/sdk/dw;->b(Lcom/flurry/sdk/dw;)Lcom/flurry/sdk/dz;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dw$2;->a:Lcom/flurry/sdk/dw;

    invoke-static {v1}, Lcom/flurry/sdk/dw;->d(Lcom/flurry/sdk/dw;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/sdk/dz;->a(Ljava/lang/String;)V

    .line 257
    :cond_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dw$2;->a:Lcom/flurry/sdk/dw;

    invoke-virtual {v0, v4}, Lcom/flurry/sdk/dw;->seekTo(I)V

    goto :goto_0
.end method
