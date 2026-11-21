.class Lcom/flurry/sdk/ci$5;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ci;->f()V
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
    .line 538
    iput-object p1, p0, Lcom/flurry/sdk/ci$5;->a:Lcom/flurry/sdk/ci;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .prologue
    .line 541
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ci$5;->a:Lcom/flurry/sdk/ci;

    invoke-static {v1}, Lcom/flurry/sdk/ci;->f(Lcom/flurry/sdk/ci;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aa;->a(Ljava/util/List;)V

    .line 542
    return-void
.end method
