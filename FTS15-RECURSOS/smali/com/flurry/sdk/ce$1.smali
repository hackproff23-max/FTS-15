.class Lcom/flurry/sdk/ce$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ha;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ha",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/flurry/sdk/cd;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ce;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ce;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/flurry/sdk/ce$1;->a:Lcom/flurry/sdk/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/gx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/gx",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cd;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 38
    new-instance v0, Lcom/flurry/sdk/gw;

    new-instance v1, Lcom/flurry/sdk/cd$a;

    invoke-direct {v1}, Lcom/flurry/sdk/cd$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gw;-><init>(Lcom/flurry/sdk/gx;)V

    .line 40
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/gw;

    new-instance v1, Lcom/flurry/sdk/cd$b;

    invoke-direct {v1}, Lcom/flurry/sdk/cd$b;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gw;-><init>(Lcom/flurry/sdk/gx;)V

    goto :goto_0
.end method
