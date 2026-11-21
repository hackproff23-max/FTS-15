.class final Lcom/flurry/sdk/jq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/is;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;
    .locals 3
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
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p2}, Lcom/flurry/sdk/jw;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    .line 42
    new-instance v0, Lcom/flurry/sdk/jq;

    invoke-direct {v0, p1, v1}, Lcom/flurry/sdk/jq;-><init>(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jq$1;)V

    .line 44
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
