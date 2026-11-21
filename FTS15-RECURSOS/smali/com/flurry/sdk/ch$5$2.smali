.class Lcom/flurry/sdk/ch$5$2;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ch$5;->a(Lcom/flurry/sdk/cj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/cj;

.field final synthetic b:Lcom/flurry/sdk/ch$5;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ch$5;Lcom/flurry/sdk/cj;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/flurry/sdk/ch$5$2;->b:Lcom/flurry/sdk/ch$5;

    iput-object p2, p0, Lcom/flurry/sdk/ch$5$2;->a:Lcom/flurry/sdk/cj;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flurry/sdk/ch$5$2;->b:Lcom/flurry/sdk/ch$5;

    iget-object v0, v0, Lcom/flurry/sdk/ch$5;->a:Lcom/flurry/sdk/ch;

    iget-object v1, p0, Lcom/flurry/sdk/ch$5$2;->a:Lcom/flurry/sdk/cj;

    iget-object v1, v1, Lcom/flurry/sdk/cj;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/ch;Ljava/util/List;)V

    .line 152
    return-void
.end method
