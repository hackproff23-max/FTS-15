.class Lcom/flurry/sdk/ec$1$1;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ec$1;->a(Lcom/flurry/sdk/hj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ec$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ec$1;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/flurry/sdk/ec$1$1;->a:Lcom/flurry/sdk/ec$1;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .prologue
    .line 242
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ec;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to load view in 8 seconds."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/flurry/sdk/ec$1$1;->a:Lcom/flurry/sdk/ec$1;

    iget-object v0, v0, Lcom/flurry/sdk/ec$1;->a:Lcom/flurry/sdk/ec;

    invoke-virtual {v0}, Lcom/flurry/sdk/ec;->dismissProgressDialog()V

    .line 244
    iget-object v0, p0, Lcom/flurry/sdk/ec$1$1;->a:Lcom/flurry/sdk/ec$1;

    iget-object v0, v0, Lcom/flurry/sdk/ec$1;->a:Lcom/flurry/sdk/ec;

    invoke-virtual {v0}, Lcom/flurry/sdk/ec;->removeTimerListener()V

    .line 245
    iget-object v0, p0, Lcom/flurry/sdk/ec$1$1;->a:Lcom/flurry/sdk/ec$1;

    iget-object v0, v0, Lcom/flurry/sdk/ec$1;->a:Lcom/flurry/sdk/ec;

    invoke-virtual {v0}, Lcom/flurry/sdk/ec;->onViewLoadTimeout()V

    .line 246
    return-void
.end method
