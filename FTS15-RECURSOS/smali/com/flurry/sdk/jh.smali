.class public final Lcom/flurry/sdk/jh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jh$1;,
        Lcom/flurry/sdk/jh$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/ig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/ik;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v1, 0x1

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/jx;->f()Lcom/flurry/sdk/jy;

    .line 43
    const/4 v1, 0x0

    .line 44
    sget-object v0, Lcom/flurry/sdk/jv;->P:Lcom/flurry/sdk/ir;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ir;->b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ig;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/flurry/sdk/ka; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 51
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 50
    if-eqz v1, :cond_0

    .line 51
    sget-object v0, Lcom/flurry/sdk/ii;->a:Lcom/flurry/sdk/ii;

    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Lcom/flurry/sdk/io;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/io;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 55
    :catch_1
    move-exception v0

    .line 56
    new-instance v1, Lcom/flurry/sdk/io;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/io;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 57
    :catch_2
    move-exception v0

    .line 58
    new-instance v1, Lcom/flurry/sdk/ih;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/ih;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 59
    :catch_3
    move-exception v0

    .line 60
    new-instance v1, Lcom/flurry/sdk/io;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/io;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2

    .prologue
    .line 73
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/jh$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/jh$a;-><init>(Ljava/lang/Appendable;Lcom/flurry/sdk/jh$1;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Lcom/flurry/sdk/ig;Lcom/flurry/sdk/jz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lcom/flurry/sdk/jv;->P:Lcom/flurry/sdk/ir;

    invoke-virtual {v0, p1, p0}, Lcom/flurry/sdk/ir;->a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V

    .line 69
    return-void
.end method
