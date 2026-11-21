.class final Lcom/flurry/sdk/jv$8;
.super Lcom/flurry/sdk/ir;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/ir",
        "<",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/flurry/sdk/ir;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jx;)Ljava/lang/StringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->f()Lcom/flurry/sdk/jy;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/jy;->i:Lcom/flurry/sdk/jy;

    if-ne v0, v1, :cond_0

    .line 408
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->j()V

    .line 409
    const/4 v0, 0x0

    .line 411
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/jv$8;->a(Lcom/flurry/sdk/jz;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/jz;Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jz;->b(Ljava/lang/String;)Lcom/flurry/sdk/jz;

    .line 416
    return-void

    .line 415
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/jv$8;->a(Lcom/flurry/sdk/jx;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
