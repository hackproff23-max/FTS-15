.class Lcom/flurry/sdk/hc$3;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/hc;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/hb;

.field final synthetic b:Lcom/flurry/sdk/hc;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hc;Lcom/flurry/sdk/hb;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/flurry/sdk/hc$3;->b:Lcom/flurry/sdk/hc;

    iput-object p2, p0, Lcom/flurry/sdk/hc$3;->a:Lcom/flurry/sdk/hb;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/flurry/sdk/hc$3;->b:Lcom/flurry/sdk/hc;

    iget-object v1, p0, Lcom/flurry/sdk/hc$3;->a:Lcom/flurry/sdk/hb;

    invoke-static {v0, v1}, Lcom/flurry/sdk/hc;->a(Lcom/flurry/sdk/hc;Lcom/flurry/sdk/hb;)V

    .line 294
    return-void
.end method
