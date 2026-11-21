.class public final Lcom/flurry/sdk/jk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/is;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jk$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/flurry/sdk/ja;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ja;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/flurry/sdk/jk;->a:Lcom/flurry/sdk/ja;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/sdk/ia;",
            "Lcom/flurry/sdk/jw",
            "<TT;>;)",
            "Lcom/flurry/sdk/ir",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p2}, Lcom/flurry/sdk/jw;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 46
    invoke-virtual {p2}, Lcom/flurry/sdk/jw;->a()Ljava/lang/Class;

    move-result-object v1

    .line 47
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {v0, v1}, Lcom/flurry/sdk/iz;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/flurry/sdk/jw;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;

    move-result-object v2

    .line 53
    iget-object v0, p0, Lcom/flurry/sdk/jk;->a:Lcom/flurry/sdk/ja;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/jf;

    move-result-object v3

    .line 56
    new-instance v0, Lcom/flurry/sdk/jk$a;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/flurry/sdk/jk$a;-><init>(Lcom/flurry/sdk/ia;Ljava/lang/reflect/Type;Lcom/flurry/sdk/ir;Lcom/flurry/sdk/jf;)V

    goto :goto_0
.end method
