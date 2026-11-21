.class public final Lcom/flurry/sdk/jr$a;
.super Lcom/flurry/sdk/ir;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/ir",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/flurry/sdk/jf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jf",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/jr$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/jf;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jf",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/jr$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/flurry/sdk/ir;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/flurry/sdk/jr$a;->a:Lcom/flurry/sdk/jf;

    .line 164
    iput-object p2, p0, Lcom/flurry/sdk/jr$a;->b:Ljava/util/Map;

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/jf;Ljava/util/Map;Lcom/flurry/sdk/jr$1;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/jr$a;-><init>(Lcom/flurry/sdk/jf;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jz;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    if-nez p2, :cond_0

    .line 197
    invoke-virtual {p1}, Lcom/flurry/sdk/jz;->f()Lcom/flurry/sdk/jz;

    .line 213
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/jz;->d()Lcom/flurry/sdk/jz;

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jr$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jr$b;

    .line 204
    iget-boolean v2, v0, Lcom/flurry/sdk/jr$b;->h:Z

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, v0, Lcom/flurry/sdk/jr$b;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/jz;->a(Ljava/lang/String;)Lcom/flurry/sdk/jz;

    .line 206
    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/jr$b;->a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 212
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/jz;->e()Lcom/flurry/sdk/jz;

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jx;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->f()Lcom/flurry/sdk/jy;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/jy;->i:Lcom/flurry/sdk/jy;

    if-ne v0, v1, :cond_0

    .line 169
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->j()V

    .line 170
    const/4 v0, 0x0

    .line 192
    :goto_0
    return-object v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/jr$a;->a:Lcom/flurry/sdk/jf;

    invoke-interface {v0}, Lcom/flurry/sdk/jf;->a()Ljava/lang/Object;

    move-result-object v1

    .line 176
    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->c()V

    .line 177
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->g()Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v2, p0, Lcom/flurry/sdk/jr$a;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jr$b;

    .line 180
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/flurry/sdk/jr$b;->i:Z

    if-nez v2, :cond_2

    .line 181
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->n()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    new-instance v1, Lcom/flurry/sdk/io;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/io;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 183
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/jr$b;->a(Lcom/flurry/sdk/jx;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 188
    :catch_1
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 191
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->d()V

    move-object v0, v1

    .line 192
    goto :goto_0
.end method
