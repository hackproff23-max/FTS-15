.class Lcom/flurry/sdk/ec$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/fy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ec;
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
.field final synthetic a:Lcom/flurry/sdk/ec;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ec;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/flurry/sdk/ec$1;->a:Lcom/flurry/sdk/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/hj;)V
    .locals 4

    .prologue
    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/flurry/sdk/ec$1;->a:Lcom/flurry/sdk/ec;

    invoke-static {v2}, Lcom/flurry/sdk/ec;->a(Lcom/flurry/sdk/ec;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f40

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 239
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ec$1$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ec$1$1;-><init>(Lcom/flurry/sdk/ec$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Runnable;)V

    .line 249
    :cond_0
    return-void
.end method

.method public synthetic notify(Lcom/flurry/sdk/fx;)V
    .locals 0

    .prologue
    .line 235
    check-cast p1, Lcom/flurry/sdk/hj;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ec$1;->a(Lcom/flurry/sdk/hj;)V

    return-void
.end method
