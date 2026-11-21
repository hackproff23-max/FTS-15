.class Lcom/flurry/sdk/ch$4;
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
        "Lcom/flurry/sdk/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ch;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ch;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/flurry/sdk/ch$4;->a:Lcom/flurry/sdk/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ad;)V
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ch$4$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/ch$4$1;-><init>(Lcom/flurry/sdk/ch$4;Lcom/flurry/sdk/ad;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public synthetic notify(Lcom/flurry/sdk/fx;)V
    .locals 0

    .prologue
    .line 124
    check-cast p1, Lcom/flurry/sdk/ad;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ch$4;->a(Lcom/flurry/sdk/ad;)V

    return-void
.end method
