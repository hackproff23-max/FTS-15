.class public final Lcom/flurry/sdk/jp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/is;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jp$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/flurry/sdk/ja;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ja;Z)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/flurry/sdk/jp;->a:Lcom/flurry/sdk/ja;

    .line 112
    iput-boolean p2, p0, Lcom/flurry/sdk/jp;->b:Z

    .line 113
    return-void
.end method

.method private a(Lcom/flurry/sdk/ia;Ljava/lang/reflect/Type;)Lcom/flurry/sdk/ir;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ia;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/flurry/sdk/ir",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/flurry/sdk/jv;->f:Lcom/flurry/sdk/ir;

    .line 142
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/flurry/sdk/jw;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/jp;)Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/flurry/sdk/jp;->b:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;
    .locals 8
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
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p2}, Lcom/flurry/sdk/jw;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 118
    invoke-virtual {p2}, Lcom/flurry/sdk/jw;->a()Ljava/lang/Class;

    move-result-object v1

    .line 119
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-static {v0}, Lcom/flurry/sdk/iz;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/flurry/sdk/iz;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 125
    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/jp;->a(Lcom/flurry/sdk/ia;Ljava/lang/reflect/Type;)Lcom/flurry/sdk/ir;

    move-result-object v4

    .line 126
    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;

    move-result-object v6

    .line 127
    iget-object v0, p0, Lcom/flurry/sdk/jp;->a:Lcom/flurry/sdk/ja;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/jf;

    move-result-object v7

    .line 131
    new-instance v0, Lcom/flurry/sdk/jp$a;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/jp$a;-><init>(Lcom/flurry/sdk/jp;Lcom/flurry/sdk/ia;Ljava/lang/reflect/Type;Lcom/flurry/sdk/ir;Ljava/lang/reflect/Type;Lcom/flurry/sdk/ir;Lcom/flurry/sdk/jf;)V

    goto :goto_0
.end method
