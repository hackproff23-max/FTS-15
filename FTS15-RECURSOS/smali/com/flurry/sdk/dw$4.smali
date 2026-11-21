.class Lcom/flurry/sdk/dw$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 270
    iput-object p1, p0, Lcom/flurry/sdk/dw$4;->a:Lcom/flurry/sdk/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/flurry/sdk/dw$4;->a:Lcom/flurry/sdk/dw;

    sget-object v1, Lcom/flurry/sdk/dw$a;->g:Lcom/flurry/sdk/dw$a;

    invoke-static {v0, v1}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/dw;Lcom/flurry/sdk/dw$a;)Lcom/flurry/sdk/dw$a;

    .line 273
    iget-object v0, p0, Lcom/flurry/sdk/dw$4;->a:Lcom/flurry/sdk/dw;

    invoke-static {v0}, Lcom/flurry/sdk/dw;->b(Lcom/flurry/sdk/dw;)Lcom/flurry/sdk/dz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/flurry/sdk/dw$4;->a:Lcom/flurry/sdk/dw;

    invoke-static {v0}, Lcom/flurry/sdk/dw;->b(Lcom/flurry/sdk/dw;)Lcom/flurry/sdk/dz;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dw$4;->a:Lcom/flurry/sdk/dw;

    invoke-static {v1}, Lcom/flurry/sdk/dw;->d(Lcom/flurry/sdk/dw;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/sdk/dz;->b(Ljava/lang/String;)V

    .line 276
    :cond_0
    return-void
.end method
