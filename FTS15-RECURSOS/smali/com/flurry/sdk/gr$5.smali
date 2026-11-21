.class Lcom/flurry/sdk/gr$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ha;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gr;->h(Ljava/lang/String;)Ljava/util/List;
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
        "Lcom/flurry/sdk/gs;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gr;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/flurry/sdk/gr$5;->a:Lcom/flurry/sdk/gr;

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
            "Lcom/flurry/sdk/gs;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Lcom/flurry/sdk/gw;

    new-instance v1, Lcom/flurry/sdk/gs$a;

    invoke-direct {v1}, Lcom/flurry/sdk/gs$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gw;-><init>(Lcom/flurry/sdk/gx;)V

    return-object v0
.end method
