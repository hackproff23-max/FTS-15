.class Lcom/flurry/sdk/ia$a;
.super Lcom/flurry/sdk/ir;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field private a:Lcom/flurry/sdk/ir;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ir",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 873
    invoke-direct {p0}, Lcom/flurry/sdk/ir;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ir;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ir",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 877
    iget-object v0, p0, Lcom/flurry/sdk/ia$a;->a:Lcom/flurry/sdk/ir;

    if-eqz v0, :cond_0

    .line 878
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 880
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/ia$a;->a:Lcom/flurry/sdk/ir;

    .line 881
    return-void
.end method

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
    .line 891
    iget-object v0, p0, Lcom/flurry/sdk/ia$a;->a:Lcom/flurry/sdk/ir;

    if-nez v0, :cond_0

    .line 892
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ia$a;->a:Lcom/flurry/sdk/ir;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ir;->a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V

    .line 895
    return-void
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
    .line 884
    iget-object v0, p0, Lcom/flurry/sdk/ia$a;->a:Lcom/flurry/sdk/ir;

    if-nez v0, :cond_0

    .line 885
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ia$a;->a:Lcom/flurry/sdk/ir;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ir;->b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
