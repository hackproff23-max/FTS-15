.class public Lcom/flurry/sdk/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/flurry/sdk/cy;

.field private b:Lcom/flurry/sdk/dt;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/flurry/sdk/dt;

    invoke-direct {v0}, Lcom/flurry/sdk/dt;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/aq;->b:Lcom/flurry/sdk/dt;

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/cy;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flurry/sdk/aq;->a:Lcom/flurry/sdk/cy;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/cy;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/flurry/sdk/aq;->a:Lcom/flurry/sdk/cy;

    .line 27
    return-void
.end method

.method public a(Lcom/flurry/sdk/dt;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/flurry/sdk/aq;->b:Lcom/flurry/sdk/dt;

    .line 35
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/flurry/sdk/aq;->c:Ljava/util/List;

    .line 47
    return-void
.end method

.method public b()Lcom/flurry/sdk/dt;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/flurry/sdk/aq;->b:Lcom/flurry/sdk/dt;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/flurry/sdk/aq;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/aq;->c:Ljava/util/List;

    goto :goto_0
.end method
