.class Lcom/flurry/sdk/je$b$1;
.super Lcom/flurry/sdk/je$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/je$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/je",
        "<TK;TV;>.c<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/je$b;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/je$b;)V
    .locals 2

    .prologue
    .line 598
    iput-object p1, p0, Lcom/flurry/sdk/je$b$1;->a:Lcom/flurry/sdk/je$b;

    iget-object v0, p1, Lcom/flurry/sdk/je$b;->a:Lcom/flurry/sdk/je;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/je$c;-><init>(Lcom/flurry/sdk/je;Lcom/flurry/sdk/je$1;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/flurry/sdk/je$b$1;->b()Lcom/flurry/sdk/je$d;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/je$d;->f:Ljava/lang/Object;

    return-object v0
.end method
