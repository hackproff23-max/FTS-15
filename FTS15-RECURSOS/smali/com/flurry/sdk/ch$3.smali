.class Lcom/flurry/sdk/ch$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/gk$a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/ap;

.field final synthetic c:Lcom/flurry/sdk/ch;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ch;Ljava/lang/String;Lcom/flurry/sdk/ap;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/flurry/sdk/ch$3;->c:Lcom/flurry/sdk/ch;

    iput-object p2, p0, Lcom/flurry/sdk/ch$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/ch$3;->b:Lcom/flurry/sdk/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/gk;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 848
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ch$3;->a(Lcom/flurry/sdk/gk;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/gk;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/gk",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 851
    invoke-virtual {p1}, Lcom/flurry/sdk/gk;->e()I

    move-result v0

    .line 852
    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/ch;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prerender: HTTP status code is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for url: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/flurry/sdk/ch$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {p1}, Lcom/flurry/sdk/gk;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/flurry/sdk/ch$3;->b:Lcom/flurry/sdk/ap;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ap;->b(Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/flurry/sdk/ch$3;->c:Lcom/flurry/sdk/ch;

    invoke-static {v0}, Lcom/flurry/sdk/ch;->l(Lcom/flurry/sdk/ch;)Lcom/flurry/sdk/r;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/cq;->a(Lcom/flurry/sdk/r;)V

    .line 860
    iget-object v0, p0, Lcom/flurry/sdk/ch$3;->c:Lcom/flurry/sdk/ch;

    invoke-static {v0}, Lcom/flurry/sdk/ch;->m(Lcom/flurry/sdk/ch;)V

    .line 866
    :goto_0
    return-void

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ch$3;->c:Lcom/flurry/sdk/ch;

    iget-object v1, p0, Lcom/flurry/sdk/ch$3;->b:Lcom/flurry/sdk/ap;

    sget-object v2, Lcom/flurry/sdk/av;->k:Lcom/flurry/sdk/av;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ch;Lcom/flurry/sdk/ap;Lcom/flurry/sdk/av;)V

    .line 864
    iget-object v0, p0, Lcom/flurry/sdk/ch$3;->c:Lcom/flurry/sdk/ch;

    invoke-static {v0}, Lcom/flurry/sdk/ch;->m(Lcom/flurry/sdk/ch;)V

    goto :goto_0
.end method
