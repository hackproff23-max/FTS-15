.class Lcom/flurry/sdk/u$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/fy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/u;
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
        "Lcom/flurry/sdk/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/u;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/u;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/flurry/sdk/u$2;->a:Lcom/flurry/sdk/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/d;)V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p1, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    iget-object v1, p0, Lcom/flurry/sdk/u$2;->a:Lcom/flurry/sdk/u;

    if-eq v0, v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/flurry/sdk/u$2;->a:Lcom/flurry/sdk/u;

    invoke-static {v0, p1}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;Lcom/flurry/sdk/d;)V

    .line 92
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/j;->b()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p1, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    invoke-interface {v1}, Lcom/flurry/sdk/r;->g()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/u$2$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/flurry/sdk/u$2$1;-><init>(Lcom/flurry/sdk/u$2;Lcom/flurry/sdk/d;Lcom/flurry/android/FlurryAdListener;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public synthetic notify(Lcom/flurry/sdk/fx;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Lcom/flurry/sdk/d;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/u$2;->a(Lcom/flurry/sdk/d;)V

    return-void
.end method
