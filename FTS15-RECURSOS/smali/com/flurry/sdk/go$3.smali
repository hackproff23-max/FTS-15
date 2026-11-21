.class Lcom/flurry/sdk/go$3;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/go;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/go;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/go;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/flurry/sdk/go$3;->a:Lcom/flurry/sdk/go;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flurry/sdk/go$3;->a:Lcom/flurry/sdk/go;

    iget-object v1, p0, Lcom/flurry/sdk/go$3;->a:Lcom/flurry/sdk/go;

    invoke-static {v1}, Lcom/flurry/sdk/go;->b(Lcom/flurry/sdk/go;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/go;->a(Ljava/util/List;)V

    .line 60
    iget-object v0, p0, Lcom/flurry/sdk/go$3;->a:Lcom/flurry/sdk/go;

    invoke-static {v0}, Lcom/flurry/sdk/go;->a(Lcom/flurry/sdk/go;)V

    .line 61
    return-void
.end method
