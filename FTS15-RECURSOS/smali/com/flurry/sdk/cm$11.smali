.class Lcom/flurry/sdk/cm$11;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/cm;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/cm;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cm;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/flurry/sdk/cm$11;->a:Lcom/flurry/sdk/cm;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/aa;->f()V

    .line 183
    return-void
.end method
