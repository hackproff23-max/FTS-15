.class Lcom/flurry/sdk/du$1;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/du;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/flurry/sdk/du;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/du;I)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/flurry/sdk/du$1;->b:Lcom/flurry/sdk/du;

    iput p2, p0, Lcom/flurry/sdk/du$1;->a:I

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flurry/sdk/du$1;->b:Lcom/flurry/sdk/du;

    invoke-static {v0}, Lcom/flurry/sdk/du;->a(Lcom/flurry/sdk/du;)Lcom/flurry/sdk/dv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/flurry/sdk/du$1;->b:Lcom/flurry/sdk/du;

    invoke-static {v0}, Lcom/flurry/sdk/du;->a(Lcom/flurry/sdk/du;)Lcom/flurry/sdk/dv;

    move-result-object v0

    iget v1, p0, Lcom/flurry/sdk/du$1;->a:I

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv;->a(I)V

    .line 93
    :cond_0
    return-void
.end method
