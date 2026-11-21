.class Lcom/flurry/sdk/dv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/dv;->a(Landroid/content/Context;Lcom/flurry/sdk/dy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dv;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dv;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/flurry/sdk/dv$1;->a:Lcom/flurry/sdk/dv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 149
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/flurry/sdk/dv$1;->a:Lcom/flurry/sdk/dv;

    invoke-static {v1}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv;)Lcom/flurry/sdk/dy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/dv$1;->a:Lcom/flurry/sdk/dv;

    invoke-virtual {v1}, Lcom/flurry/sdk/dv;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/flurry/sdk/dv$1;->a:Lcom/flurry/sdk/dv;

    invoke-static {v1}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv;)Lcom/flurry/sdk/dy;

    move-result-object v1

    invoke-interface {v1}, Lcom/flurry/sdk/dy;->g()V

    .line 155
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
