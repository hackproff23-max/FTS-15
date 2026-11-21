.class Lcom/flurry/sdk/ia$4;
.super Lcom/flurry/sdk/ir;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ia;->b(Z)Lcom/flurry/sdk/ir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/ir",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ia;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ia;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/flurry/sdk/ia$4;->a:Lcom/flurry/sdk/ia;

    invoke-direct {p0}, Lcom/flurry/sdk/ir;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jx;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->f()Lcom/flurry/sdk/jy;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/jy;->i:Lcom/flurry/sdk/jy;

    if-ne v0, v1, :cond_0

    .line 279
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->j()V

    .line 280
    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->k()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/jz;Ljava/lang/Number;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    if-nez p2, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/flurry/sdk/jz;->f()Lcom/flurry/sdk/jz;

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 290
    iget-object v1, p0, Lcom/flurry/sdk/ia$4;->a:Lcom/flurry/sdk/ia;

    float-to-double v2, v0

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/ia;D)V

    .line 291
    invoke-virtual {p1, p2}, Lcom/flurry/sdk/jz;->a(Ljava/lang/Number;)Lcom/flurry/sdk/jz;

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ia$4;->a(Lcom/flurry/sdk/jz;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ia$4;->a(Lcom/flurry/sdk/jx;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
