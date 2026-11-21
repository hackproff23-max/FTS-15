.class Lcom/flurry/sdk/ch$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/fy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/fy",
        "<",
        "Lcom/flurry/sdk/cj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ch;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ch;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/flurry/sdk/ch$5;->a:Lcom/flurry/sdk/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/cj;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/flurry/sdk/ch$5;->a:Lcom/flurry/sdk/ch;

    invoke-static {v0}, Lcom/flurry/sdk/ch;->f(Lcom/flurry/sdk/ch;)Lcom/flurry/sdk/ci;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/cj;->a:Lcom/flurry/sdk/ci;

    if-ne v0, v1, :cond_1

    .line 141
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ch$5$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ch$5$1;-><init>(Lcom/flurry/sdk/ch$5;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ch$5;->a:Lcom/flurry/sdk/ch;

    invoke-static {v0}, Lcom/flurry/sdk/ch;->h(Lcom/flurry/sdk/ch;)Lcom/flurry/sdk/ci;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/cj;->a:Lcom/flurry/sdk/ci;

    if-ne v0, v1, :cond_0

    .line 148
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ch$5$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/ch$5$2;-><init>(Lcom/flurry/sdk/ch$5;Lcom/flurry/sdk/cj;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public synthetic notify(Lcom/flurry/sdk/fx;)V
    .locals 0

    .prologue
    .line 136
    check-cast p1, Lcom/flurry/sdk/cj;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ch$5;->a(Lcom/flurry/sdk/cj;)V

    return-void
.end method
