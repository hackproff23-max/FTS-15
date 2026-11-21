.class Lcom/flurry/sdk/jr$1;
.super Lcom/flurry/sdk/jr$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/ia;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/flurry/sdk/jw;ZZ)Lcom/flurry/sdk/jr$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/flurry/sdk/ir;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ir",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/flurry/sdk/ia;

.field final synthetic c:Ljava/lang/reflect/Field;

.field final synthetic d:Lcom/flurry/sdk/jw;

.field final synthetic e:Z

.field final synthetic f:Lcom/flurry/sdk/jr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jr;Ljava/lang/String;ZZLcom/flurry/sdk/ia;Ljava/lang/reflect/Field;Lcom/flurry/sdk/jw;Z)V
    .locals 4

    .prologue
    .line 83
    iput-object p1, p0, Lcom/flurry/sdk/jr$1;->f:Lcom/flurry/sdk/jr;

    iput-object p5, p0, Lcom/flurry/sdk/jr$1;->b:Lcom/flurry/sdk/ia;

    iput-object p6, p0, Lcom/flurry/sdk/jr$1;->c:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lcom/flurry/sdk/jr$1;->d:Lcom/flurry/sdk/jw;

    iput-boolean p8, p0, Lcom/flurry/sdk/jr$1;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/flurry/sdk/jr$b;-><init>(Ljava/lang/String;ZZ)V

    .line 84
    iget-object v0, p0, Lcom/flurry/sdk/jr$1;->f:Lcom/flurry/sdk/jr;

    iget-object v1, p0, Lcom/flurry/sdk/jr$1;->b:Lcom/flurry/sdk/ia;

    iget-object v2, p0, Lcom/flurry/sdk/jr$1;->c:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/flurry/sdk/jr$1;->d:Lcom/flurry/sdk/jw;

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/ia;Ljava/lang/reflect/Field;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/jr$1;->a:Lcom/flurry/sdk/ir;

    return-void
.end method


# virtual methods
.method a(Lcom/flurry/sdk/jx;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/jr$1;->a:Lcom/flurry/sdk/ir;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ir;->b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/flurry/sdk/jr$1;->e:Z

    if-nez v1, :cond_1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/jr$1;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    :cond_1
    return-void
.end method

.method a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/jr$1;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/flurry/sdk/ju;

    iget-object v2, p0, Lcom/flurry/sdk/jr$1;->b:Lcom/flurry/sdk/ia;

    iget-object v3, p0, Lcom/flurry/sdk/jr$1;->a:Lcom/flurry/sdk/ir;

    iget-object v4, p0, Lcom/flurry/sdk/jr$1;->d:Lcom/flurry/sdk/jw;

    .line 90
    invoke-virtual {v4}, Lcom/flurry/sdk/jw;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/sdk/ju;-><init>(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/ir;Ljava/lang/reflect/Type;)V

    .line 91
    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/ir;->a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V

    .line 92
    return-void
.end method
