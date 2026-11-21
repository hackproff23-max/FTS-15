.class Lcom/flurry/sdk/gp$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ha;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gp;->g()V
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
        "Lcom/flurry/sdk/gq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gp;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/flurry/sdk/gp$6;->a:Lcom/flurry/sdk/gp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/gx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/gx",
            "<",
            "Lcom/flurry/sdk/gq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/flurry/sdk/gq$a;

    invoke-direct {v0}, Lcom/flurry/sdk/gq$a;-><init>()V

    return-object v0
.end method
