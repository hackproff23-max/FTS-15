.class Lcom/flurry/sdk/ci$3;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ci;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ci;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ci;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/flurry/sdk/ci$3;->a:Lcom/flurry/sdk/ci;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/flurry/sdk/ci$3;->a:Lcom/flurry/sdk/ci;

    iget-object v1, p0, Lcom/flurry/sdk/ci$3;->a:Lcom/flurry/sdk/ci;

    invoke-static {v1}, Lcom/flurry/sdk/ci;->b(Lcom/flurry/sdk/ci;)Lcom/flurry/sdk/r;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ci$3;->a:Lcom/flurry/sdk/ci;

    invoke-static {v2}, Lcom/flurry/sdk/ci;->c(Lcom/flurry/sdk/ci;)Lcom/flurry/sdk/ap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/ci;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ap;)V

    .line 208
    return-void
.end method
