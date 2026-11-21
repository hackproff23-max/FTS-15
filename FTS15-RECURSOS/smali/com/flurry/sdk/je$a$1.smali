.class Lcom/flurry/sdk/je$a$1;
.super Lcom/flurry/sdk/je$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/je$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/je",
        "<TK;TV;>.c<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/je$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/je$a;)V
    .locals 2

    .prologue
    .line 563
    iput-object p1, p0, Lcom/flurry/sdk/je$a$1;->a:Lcom/flurry/sdk/je$a;

    iget-object v0, p1, Lcom/flurry/sdk/je$a;->a:Lcom/flurry/sdk/je;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/je$c;-><init>(Lcom/flurry/sdk/je;Lcom/flurry/sdk/je$1;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/flurry/sdk/je$a$1;->b()Lcom/flurry/sdk/je$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/flurry/sdk/je$a$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
