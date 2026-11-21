.class Lcom/flurry/sdk/du$3;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/du;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/flurry/sdk/du;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/du;II)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/flurry/sdk/du$3;->c:Lcom/flurry/sdk/du;

    iput p2, p0, Lcom/flurry/sdk/du$3;->a:I

    iput p3, p0, Lcom/flurry/sdk/du$3;->b:I

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/flurry/sdk/du$3;->c:Lcom/flurry/sdk/du;

    invoke-static {v0}, Lcom/flurry/sdk/du;->a(Lcom/flurry/sdk/du;)Lcom/flurry/sdk/dv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/flurry/sdk/du$3;->c:Lcom/flurry/sdk/du;

    invoke-static {v0}, Lcom/flurry/sdk/du;->a(Lcom/flurry/sdk/du;)Lcom/flurry/sdk/dv;

    move-result-object v0

    iget v1, p0, Lcom/flurry/sdk/du$3;->a:I

    iget v2, p0, Lcom/flurry/sdk/du$3;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dv;->a(II)V

    .line 206
    :cond_0
    return-void
.end method
