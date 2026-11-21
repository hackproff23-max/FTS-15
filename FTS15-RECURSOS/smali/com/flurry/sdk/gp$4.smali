.class Lcom/flurry/sdk/gp$4;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gp;->a(Lcom/flurry/sdk/gp$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gp$a;

.field final synthetic b:Lcom/flurry/sdk/gp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gp;Lcom/flurry/sdk/gp$a;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/flurry/sdk/gp$4;->b:Lcom/flurry/sdk/gp;

    iput-object p2, p0, Lcom/flurry/sdk/gp$4;->a:Lcom/flurry/sdk/gp$a;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/sdk/gp$4;->b:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->g()V

    .line 130
    iget-object v0, p0, Lcom/flurry/sdk/gp$4;->a:Lcom/flurry/sdk/gp$a;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/flurry/sdk/gp$4;->a:Lcom/flurry/sdk/gp$a;

    invoke-interface {v0}, Lcom/flurry/sdk/gp$a;->a()V

    .line 133
    :cond_0
    return-void
.end method
