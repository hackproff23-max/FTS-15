.class Lcom/flurry/sdk/fb$7;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/fb;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fb;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/flurry/sdk/fb$7;->a:Lcom/flurry/sdk/fb;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/flurry/sdk/fb$7;->a:Lcom/flurry/sdk/fb;

    invoke-virtual {v0}, Lcom/flurry/sdk/fb;->c()Lcom/flurry/sdk/ez;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/flurry/sdk/fb$7;->a:Lcom/flurry/sdk/fb;

    invoke-static {v1}, Lcom/flurry/sdk/fb;->d(Lcom/flurry/sdk/fb;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/flurry/sdk/fb$7;->a:Lcom/flurry/sdk/fb;

    invoke-virtual {v0}, Lcom/flurry/sdk/fb;->e()V

    .line 251
    return-void
.end method
