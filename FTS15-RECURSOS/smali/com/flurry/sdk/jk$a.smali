.class final Lcom/flurry/sdk/jk$a;
.super Lcom/flurry/sdk/ir;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/ir",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/flurry/sdk/ir;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ir",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/flurry/sdk/jf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jf",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ia;Ljava/lang/reflect/Type;Lcom/flurry/sdk/ir;Lcom/flurry/sdk/jf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ia;",
            "Ljava/lang/reflect/Type;",
            "Lcom/flurry/sdk/ir",
            "<TE;>;",
            "Lcom/flurry/sdk/jf",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/flurry/sdk/ir;-><init>()V

    .line 67
    new-instance v0, Lcom/flurry/sdk/ju;

    invoke-direct {v0, p1, p3, p2}, Lcom/flurry/sdk/ju;-><init>(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/ir;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/flurry/sdk/jk$a;->a:Lcom/flurry/sdk/ir;

    .line 69
    iput-object p4, p0, Lcom/flurry/sdk/jk$a;->b:Lcom/flurry/sdk/jf;

    .line 70
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jx;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jx;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

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

    .line 85
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/jk$a;->b:Lcom/flurry/sdk/jf;

    invoke-interface {v0}, Lcom/flurry/sdk/jf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 79
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->a()V

    .line 80
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/flurry/sdk/jk$a;->a:Lcom/flurry/sdk/ir;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/ir;->b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->b()V

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
    .line 60
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/jk$a;->a(Lcom/flurry/sdk/jz;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/jz;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jz;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/flurry/sdk/jz;->f()Lcom/flurry/sdk/jz;

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/jz;->b()Lcom/flurry/sdk/jz;

    .line 95
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/flurry/sdk/jk$a;->a:Lcom/flurry/sdk/ir;

    invoke-virtual {v2, p1, v1}, Lcom/flurry/sdk/ir;->a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/jz;->c()Lcom/flurry/sdk/jz;

    goto :goto_0
.end method

.method public synthetic b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/jk$a;->a(Lcom/flurry/sdk/jx;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
