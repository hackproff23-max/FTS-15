.class Lcom/flurry/sdk/ia$5;
.super Lcom/flurry/sdk/ir;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/ir;
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
    .line 308
    iput-object p1, p0, Lcom/flurry/sdk/ia$5;->a:Lcom/flurry/sdk/ia;

    invoke-direct {p0}, Lcom/flurry/sdk/ir;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jx;)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->f()Lcom/flurry/sdk/jy;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/jy;->i:Lcom/flurry/sdk/jy;

    if-ne v0, v1, :cond_0

    .line 311
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->j()V

    .line 312
    const/4 v0, 0x0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/jz;Ljava/lang/Number;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    if-nez p2, :cond_0

    .line 318
    invoke-virtual {p1}, Lcom/flurry/sdk/jz;->f()Lcom/flurry/sdk/jz;

    .line 322
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jz;->b(Ljava/lang/String;)Lcom/flurry/sdk/jz;

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
    .line 308
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ia$5;->a(Lcom/flurry/sdk/jz;Ljava/lang/Number;)V

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
    .line 308
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ia$5;->a(Lcom/flurry/sdk/jx;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method
