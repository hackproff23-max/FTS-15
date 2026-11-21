.class final Lcom/flurry/sdk/jv$1;
.super Lcom/flurry/sdk/ir;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/ir",
        "<",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/flurry/sdk/ir;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jx;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->f()Lcom/flurry/sdk/jy;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/jy;->i:Lcom/flurry/sdk/jy;

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->j()V

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/flurry/sdk/jz;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p2, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/flurry/sdk/jz;->f()Lcom/flurry/sdk/jz;

    .line 70
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to serialize java.lang.Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 68
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Forgot to register a type adapter?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/jv$1;->a(Lcom/flurry/sdk/jz;Ljava/lang/Class;)V

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
    .line 61
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/jv$1;->a(Lcom/flurry/sdk/jx;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
