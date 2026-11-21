.class Lcom/flurry/sdk/eb$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ec$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/eb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/eb;)V
    .locals 0

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->o(Lcom/flurry/sdk/eb;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->b(Lcom/flurry/sdk/eb;)Lcom/flurry/sdk/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v0}, Lcom/flurry/sdk/eb;->isViewAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    iget-object v1, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->b(Lcom/flurry/sdk/eb;)Lcom/flurry/sdk/dq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eb;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    iget-object v1, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->b(Lcom/flurry/sdk/eb;)Lcom/flurry/sdk/dq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eb;->removeView(Landroid/view/View;)V

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->b(Lcom/flurry/sdk/eb;)Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->cleanupLayout()V

    .line 1043
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Lcom/flurry/sdk/dq;)Lcom/flurry/sdk/dq;

    .line 1046
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->o(Lcom/flurry/sdk/eb;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->b(Lcom/flurry/sdk/eb;)Lcom/flurry/sdk/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-virtual {v0}, Lcom/flurry/sdk/eb;->isViewAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    iget-object v1, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->b(Lcom/flurry/sdk/eb;)Lcom/flurry/sdk/dq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eb;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    iget-object v1, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-static {v1}, Lcom/flurry/sdk/eb;->b(Lcom/flurry/sdk/eb;)Lcom/flurry/sdk/dq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eb;->removeView(Landroid/view/View;)V

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->b(Lcom/flurry/sdk/eb;)Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->cleanupLayout()V

    .line 1056
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Lcom/flurry/sdk/dq;)Lcom/flurry/sdk/dq;

    .line 1059
    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->o(Lcom/flurry/sdk/eb;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->b(Lcom/flurry/sdk/eb;)Lcom/flurry/sdk/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->b(Lcom/flurry/sdk/eb;)Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->cleanupLayout()V

    .line 1066
    iget-object v0, p0, Lcom/flurry/sdk/eb$4;->a:Lcom/flurry/sdk/eb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Lcom/flurry/sdk/dq;)Lcom/flurry/sdk/dq;

    .line 1069
    :cond_0
    return-void
.end method
