.class Lcom/flurry/sdk/eb$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/ed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/a;

.field final synthetic b:I

.field final synthetic c:Lcom/flurry/sdk/eb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/eb;Lcom/flurry/sdk/a;I)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/flurry/sdk/eb$2;->c:Lcom/flurry/sdk/eb;

    iput-object p2, p0, Lcom/flurry/sdk/eb$2;->a:Lcom/flurry/sdk/a;

    iput p3, p0, Lcom/flurry/sdk/eb$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    const-string v1, "sourceEvent"

    iget-object v2, p0, Lcom/flurry/sdk/eb$2;->a:Lcom/flurry/sdk/a;

    invoke-virtual {v2}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v2}, Lcom/flurry/sdk/aw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/flurry/sdk/eb$2;->c:Lcom/flurry/sdk/eb;

    sget-object v2, Lcom/flurry/sdk/aw;->q:Lcom/flurry/sdk/aw;

    iget-object v3, p0, Lcom/flurry/sdk/eb$2;->c:Lcom/flurry/sdk/eb;

    invoke-virtual {v3}, Lcom/flurry/sdk/eb;->getAdController()Lcom/flurry/sdk/ap;

    move-result-object v3

    iget v4, p0, Lcom/flurry/sdk/eb$2;->b:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/aw;Ljava/util/Map;Lcom/flurry/sdk/ap;I)V

    .line 265
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 266
    return-void
.end method
