.class Lcom/flurry/sdk/jv$15$1;
.super Lcom/flurry/sdk/ir;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jv$15;->a(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/ir",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ir;

.field final synthetic b:Lcom/flurry/sdk/jv$15;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jv$15;Lcom/flurry/sdk/ir;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/flurry/sdk/jv$15$1;->b:Lcom/flurry/sdk/jv$15;

    iput-object p2, p0, Lcom/flurry/sdk/jv$15$1;->a:Lcom/flurry/sdk/ir;

    invoke-direct {p0}, Lcom/flurry/sdk/ir;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jx;)Ljava/sql/Timestamp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/flurry/sdk/jv$15$1;->a:Lcom/flurry/sdk/ir;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ir;->b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 527
    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

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
    .line 524
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/jv$15$1;->a(Lcom/flurry/sdk/jz;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/jz;Ljava/sql/Timestamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/flurry/sdk/jv$15$1;->a:Lcom/flurry/sdk/ir;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ir;->a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V

    .line 532
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
    .line 524
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/jv$15$1;->a(Lcom/flurry/sdk/jx;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method
