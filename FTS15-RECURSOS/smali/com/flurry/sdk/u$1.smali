.class Lcom/flurry/sdk/u$1;
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
        "Lcom/flurry/sdk/hj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/u;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/u;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/flurry/sdk/u$1;->a:Lcom/flurry/sdk/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/hj;)V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/sdk/u$1;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)V

    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/u$1;->a:Lcom/flurry/sdk/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;J)J

    .line 72
    return-void
.end method

.method public synthetic notify(Lcom/flurry/sdk/fx;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Lcom/flurry/sdk/hj;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/u$1;->a(Lcom/flurry/sdk/hj;)V

    return-void
.end method
