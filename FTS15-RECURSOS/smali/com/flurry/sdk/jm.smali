.class public final Lcom/flurry/sdk/jm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/is;


# instance fields
.field private final a:Lcom/flurry/sdk/ja;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ja;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/flurry/sdk/jm;->a:Lcom/flurry/sdk/ja;

    .line 38
    return-void
.end method

.method static a(Lcom/flurry/sdk/ja;Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/iu;)Lcom/flurry/sdk/ir;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ja;",
            "Lcom/flurry/sdk/ia;",
            "Lcom/flurry/sdk/jw",
            "<*>;",
            "Lcom/flurry/sdk/iu;",
            ")",
            "Lcom/flurry/sdk/ir",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-interface {p3}, Lcom/flurry/sdk/iu;->a()Ljava/lang/Class;

    move-result-object v0

    .line 53
    const-class v1, Lcom/flurry/sdk/ir;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {v0}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/jf;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/jf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ir;

    .line 61
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const-class v1, Lcom/flurry/sdk/is;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-static {v0}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/jf;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/flurry/sdk/jf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/is;

    .line 61
    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;
    .locals 2
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
    .line 42
    invoke-virtual {p2}, Lcom/flurry/sdk/jw;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/sdk/iu;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iu;

    .line 43
    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/jm;->a:Lcom/flurry/sdk/ja;

    invoke-static {v1, p1, p2, v0}, Lcom/flurry/sdk/jm;->a(Lcom/flurry/sdk/ja;Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/iu;)Lcom/flurry/sdk/ir;

    move-result-object v0

    goto :goto_0
.end method
