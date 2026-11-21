.class Lcom/flurry/sdk/hc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/fy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/hc;
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
        "Lcom/flurry/sdk/he;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/hc;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hc;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flurry/sdk/hc$1;->a:Lcom/flurry/sdk/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/he;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/sdk/hc$1;->a:Lcom/flurry/sdk/hc;

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->h()V

    .line 64
    return-void
.end method

.method public synthetic notify(Lcom/flurry/sdk/fx;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Lcom/flurry/sdk/he;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hc$1;->a(Lcom/flurry/sdk/he;)V

    return-void
.end method
