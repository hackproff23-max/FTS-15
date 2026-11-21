.class Lcom/flurry/sdk/fb$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ha;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/fb;->a(Landroid/content/Context;)V
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
        "Lcom/flurry/sdk/ez;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fb;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/flurry/sdk/fb$2;->a:Lcom/flurry/sdk/fb;

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
            "Lcom/flurry/sdk/ez;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/flurry/sdk/gw;

    new-instance v1, Lcom/flurry/sdk/ez$a;

    invoke-direct {v1}, Lcom/flurry/sdk/ez$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gw;-><init>(Lcom/flurry/sdk/gx;)V

    return-object v0
.end method
