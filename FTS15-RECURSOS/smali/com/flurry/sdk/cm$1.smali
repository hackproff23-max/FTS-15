.class Lcom/flurry/sdk/cm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ha;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/cm;->a(Landroid/content/Context;)V
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
        "Lcom/flurry/sdk/at;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/cm;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cm;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/flurry/sdk/cm$1;->a:Lcom/flurry/sdk/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/gx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/gx",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/at;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/flurry/sdk/gw;

    new-instance v1, Lcom/flurry/sdk/at$a;

    new-instance v2, Lcom/flurry/sdk/as$a;

    invoke-direct {v2}, Lcom/flurry/sdk/as$a;-><init>()V

    invoke-direct {v1, v2}, Lcom/flurry/sdk/at$a;-><init>(Lcom/flurry/sdk/as$a;)V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gw;-><init>(Lcom/flurry/sdk/gx;)V

    return-object v0
.end method
