.class Lcom/flurry/sdk/hl$1;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/hl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/hl;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hl;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/flurry/sdk/hl$1;->a:Lcom/flurry/sdk/hl;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Lcom/flurry/sdk/hj;

    invoke-direct {v0}, Lcom/flurry/sdk/hj;-><init>()V

    .line 22
    invoke-virtual {v0}, Lcom/flurry/sdk/hj;->b()V

    .line 24
    iget-object v0, p0, Lcom/flurry/sdk/hl$1;->a:Lcom/flurry/sdk/hl;

    invoke-static {v0}, Lcom/flurry/sdk/hl;->a(Lcom/flurry/sdk/hl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/hl$1;->a:Lcom/flurry/sdk/hl;

    invoke-static {v0}, Lcom/flurry/sdk/hl;->b(Lcom/flurry/sdk/hl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/hl$1;->a:Lcom/flurry/sdk/hl;

    invoke-static {v1}, Lcom/flurry/sdk/hl;->c(Lcom/flurry/sdk/hl;)Lcom/flurry/sdk/hq;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/hl$1;->a:Lcom/flurry/sdk/hl;

    invoke-static {v2}, Lcom/flurry/sdk/hl;->d(Lcom/flurry/sdk/hl;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;J)V

    .line 27
    :cond_0
    return-void
.end method
