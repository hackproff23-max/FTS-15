.class public final Lcom/flurry/sdk/jr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/is;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jr$a;,
        Lcom/flurry/sdk/jr$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/flurry/sdk/ja;

.field private final b:Lcom/flurry/sdk/hz;

.field private final c:Lcom/flurry/sdk/jb;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ja;Lcom/flurry/sdk/hz;Lcom/flurry/sdk/jb;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/flurry/sdk/jr;->a:Lcom/flurry/sdk/ja;

    .line 54
    iput-object p2, p0, Lcom/flurry/sdk/jr;->b:Lcom/flurry/sdk/hz;

    .line 55
    iput-object p3, p0, Lcom/flurry/sdk/jr;->c:Lcom/flurry/sdk/jb;

    .line 56
    return-void
.end method

.method private a(Lcom/flurry/sdk/ia;Ljava/lang/reflect/Field;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ia;",
            "Ljava/lang/reflect/Field;",
            "Lcom/flurry/sdk/jw",
            "<*>;)",
            "Lcom/flurry/sdk/ir",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 104
    const-class v0, Lcom/flurry/sdk/iu;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iu;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/flurry/sdk/jr;->a:Lcom/flurry/sdk/ja;

    invoke-static {v1, p1, p3, v0}, Lcom/flurry/sdk/jm;->a(Lcom/flurry/sdk/ja;Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/iu;)Lcom/flurry/sdk/ir;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/ia;Ljava/lang/reflect/Field;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/ia;Ljava/lang/reflect/Field;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/flurry/sdk/ia;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/flurry/sdk/jw;ZZ)Lcom/flurry/sdk/jr$b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ia;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/jw",
            "<*>;ZZ)",
            "Lcom/flurry/sdk/jr$b;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p4}, Lcom/flurry/sdk/jw;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/jg;->a(Ljava/lang/reflect/Type;)Z

    move-result v8

    .line 83
    new-instance v0, Lcom/flurry/sdk/jr$1;

    move-object v1, p0

    move-object v2, p3

    move v3, p5

    move v4, p6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/flurry/sdk/jr$1;-><init>(Lcom/flurry/sdk/jr;Ljava/lang/String;ZZLcom/flurry/sdk/ia;Ljava/lang/reflect/Field;Lcom/flurry/sdk/jw;Z)V

    return-object v0
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/flurry/sdk/iv;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iv;

    .line 64
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/jr;->b:Lcom/flurry/sdk/hz;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/hz;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/flurry/sdk/iv;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;Ljava/lang/Class;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ia;",
            "Lcom/flurry/sdk/jw",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/jr$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 114
    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v7

    .line 140
    :goto_0
    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/jw;->b()Ljava/lang/reflect/Type;

    move-result-object v9

    .line 119
    :goto_1
    const-class v0, Ljava/lang/Object;

    if-eq p3, v0, :cond_4

    .line 120
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 121
    array-length v11, v10

    const/4 v0, 0x0

    move v8, v0

    :goto_2
    if-ge v8, v11, :cond_3

    aget-object v2, v10, v8

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/jr;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/jr;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    .line 124
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    .line 121
    :cond_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 127
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 128
    invoke-virtual {p2}, Lcom/flurry/sdk/jw;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/flurry/sdk/iz;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 129
    invoke-direct {p0, v2}, Lcom/flurry/sdk/jr;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/jw;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    .line 129
    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/ia;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/flurry/sdk/jw;ZZ)Lcom/flurry/sdk/jr$b;

    move-result-object v0

    .line 131
    iget-object v1, v0, Lcom/flurry/sdk/jr$b;->g:Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jr$b;

    .line 132
    if-eqz v0, :cond_1

    .line 133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/flurry/sdk/jr$b;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_3
    invoke-virtual {p2}, Lcom/flurry/sdk/jw;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/flurry/sdk/iz;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/jw;

    move-result-object p2

    .line 138
    invoke-virtual {p2}, Lcom/flurry/sdk/jw;->a()Ljava/lang/Class;

    move-result-object p3

    goto :goto_1

    :cond_4
    move-object v0, v7

    .line 140
    goto/16 :goto_0
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
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p2}, Lcom/flurry/sdk/jw;->a()Ljava/lang/Class;

    move-result-object v2

    .line 70
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/jr;->a:Lcom/flurry/sdk/ja;

    invoke-virtual {v1, p2}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/jf;

    move-result-object v3

    .line 75
    new-instance v1, Lcom/flurry/sdk/jr$a;

    invoke-direct {p0, p1, p2, v2}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/flurry/sdk/jr$a;-><init>(Lcom/flurry/sdk/jf;Ljava/util/Map;Lcom/flurry/sdk/jr$1;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flurry/sdk/jr;->c:Lcom/flurry/sdk/jb;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/flurry/sdk/jb;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/jr;->c:Lcom/flurry/sdk/jb;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/jb;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
