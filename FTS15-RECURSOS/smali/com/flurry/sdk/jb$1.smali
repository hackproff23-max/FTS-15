.class Lcom/flurry/sdk/jb$1;
.super Lcom/flurry/sdk/ir;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/ir",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/flurry/sdk/ia;

.field final synthetic d:Lcom/flurry/sdk/jw;

.field final synthetic e:Lcom/flurry/sdk/jb;

.field private f:Lcom/flurry/sdk/ir;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ir",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jb;ZZLcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/flurry/sdk/jb$1;->e:Lcom/flurry/sdk/jb;

    iput-boolean p2, p0, Lcom/flurry/sdk/jb$1;->a:Z

    iput-boolean p3, p0, Lcom/flurry/sdk/jb$1;->b:Z

    iput-object p4, p0, Lcom/flurry/sdk/jb$1;->c:Lcom/flurry/sdk/ia;

    iput-object p5, p0, Lcom/flurry/sdk/jb$1;->d:Lcom/flurry/sdk/jw;

    invoke-direct {p0}, Lcom/flurry/sdk/ir;-><init>()V

    return-void
.end method

.method private a()Lcom/flurry/sdk/ir;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/ir",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/flurry/sdk/jb$1;->f:Lcom/flurry/sdk/ir;

    .line 142
    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/jb$1;->c:Lcom/flurry/sdk/ia;

    iget-object v1, p0, Lcom/flurry/sdk/jb$1;->e:Lcom/flurry/sdk/jb;

    iget-object v2, p0, Lcom/flurry/sdk/jb$1;->d:Lcom/flurry/sdk/jw;

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/is;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/jb$1;->f:Lcom/flurry/sdk/ir;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V
    .locals 1
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
    .line 133
    iget-boolean v0, p0, Lcom/flurry/sdk/jb$1;->b:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/flurry/sdk/jz;->f()Lcom/flurry/sdk/jz;

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/jb$1;->a()Lcom/flurry/sdk/ir;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ir;->a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V

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
    .line 125
    iget-boolean v0, p0, Lcom/flurry/sdk/jb$1;->a:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->n()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/jb$1;->a()Lcom/flurry/sdk/ir;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ir;->b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
