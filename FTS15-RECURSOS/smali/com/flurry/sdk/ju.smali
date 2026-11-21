.class final Lcom/flurry/sdk/ju;
.super Lcom/flurry/sdk/ir;
.source "SourceFile"


# annotations
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
.field private final a:Lcom/flurry/sdk/ia;

.field private final b:Lcom/flurry/sdk/ir;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ir",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/ir;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ia;",
            "Lcom/flurry/sdk/ir",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/flurry/sdk/ir;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/flurry/sdk/ju;->a:Lcom/flurry/sdk/ia;

    .line 34
    iput-object p2, p0, Lcom/flurry/sdk/ju;->b:Lcom/flurry/sdk/ir;

    .line 35
    iput-object p3, p0, Lcom/flurry/sdk/ju;->c:Ljava/lang/reflect/Type;

    .line 36
    return-void
.end method

.method private a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 75
    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 79
    :cond_1
    return-object p1
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
    .line 52
    iget-object v0, p0, Lcom/flurry/sdk/ju;->b:Lcom/flurry/sdk/ir;

    .line 53
    iget-object v1, p0, Lcom/flurry/sdk/ju;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lcom/flurry/sdk/ju;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/flurry/sdk/ju;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/flurry/sdk/ju;->a:Lcom/flurry/sdk/ia;

    invoke-static {v1}, Lcom/flurry/sdk/jw;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/jw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lcom/flurry/sdk/jr$a;

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ir;->a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V

    .line 69
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/ju;->b:Lcom/flurry/sdk/ir;

    instance-of v1, v1, Lcom/flurry/sdk/jr$a;

    if-nez v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/flurry/sdk/ju;->b:Lcom/flurry/sdk/ir;

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;
    .locals 1
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
    .line 40
    iget-object v0, p0, Lcom/flurry/sdk/ju;->b:Lcom/flurry/sdk/ir;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ir;->b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
