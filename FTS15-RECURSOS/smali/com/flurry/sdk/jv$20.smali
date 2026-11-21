.class final Lcom/flurry/sdk/jv$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/is;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jv;->a(Ljava/lang/Class;Lcom/flurry/sdk/ir;)Lcom/flurry/sdk/is;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/flurry/sdk/ir;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/flurry/sdk/ir;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/flurry/sdk/jv$20;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/flurry/sdk/jv$20;->b:Lcom/flurry/sdk/ir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 782
    invoke-virtual {p2}, Lcom/flurry/sdk/jw;->a()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/jv$20;->a:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/jv$20;->b:Lcom/flurry/sdk/ir;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Factory[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/jv$20;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/jv$20;->b:Lcom/flurry/sdk/ir;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
