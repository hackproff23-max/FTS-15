.class Lcom/flurry/sdk/ch$1;
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
        "Lcom/flurry/sdk/hj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ch;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ch;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/flurry/sdk/ch$1;->a:Lcom/flurry/sdk/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/hj;)V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/flurry/sdk/ch$a;->b:Lcom/flurry/sdk/ch$a;

    iget-object v1, p0, Lcom/flurry/sdk/ch$1;->a:Lcom/flurry/sdk/ch;

    invoke-static {v1}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ch;)Lcom/flurry/sdk/ch$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ch$1$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ch$1$1;-><init>(Lcom/flurry/sdk/ch$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    sget-object v0, Lcom/flurry/sdk/ch$a;->d:Lcom/flurry/sdk/ch$a;

    iget-object v1, p0, Lcom/flurry/sdk/ch$1;->a:Lcom/flurry/sdk/ch;

    invoke-static {v1}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ch;)Lcom/flurry/sdk/ch$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ch$1$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ch$1$2;-><init>(Lcom/flurry/sdk/ch$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 106
    :cond_2
    sget-object v0, Lcom/flurry/sdk/ch$a;->e:Lcom/flurry/sdk/ch$a;

    iget-object v1, p0, Lcom/flurry/sdk/ch$1;->a:Lcom/flurry/sdk/ch;

    invoke-static {v1}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ch;)Lcom/flurry/sdk/ch$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ch$1$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ch$1$3;-><init>(Lcom/flurry/sdk/ch$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 113
    :cond_3
    sget-object v0, Lcom/flurry/sdk/ch$a;->g:Lcom/flurry/sdk/ch$a;

    iget-object v1, p0, Lcom/flurry/sdk/ch$1;->a:Lcom/flurry/sdk/ch;

    invoke-static {v1}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ch;)Lcom/flurry/sdk/ch$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ch$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ch$1$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ch$1$4;-><init>(Lcom/flurry/sdk/ch$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public synthetic notify(Lcom/flurry/sdk/fx;)V
    .locals 0

    .prologue
    .line 89
    check-cast p1, Lcom/flurry/sdk/hj;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ch$1;->a(Lcom/flurry/sdk/hj;)V

    return-void
.end method
