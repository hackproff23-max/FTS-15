.class Lcom/flurry/sdk/ey$2;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ey;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/flurry/sdk/ey;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ey;I)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/flurry/sdk/ey$2;->b:Lcom/flurry/sdk/ey;

    iput p2, p0, Lcom/flurry/sdk/ey$2;->a:I

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lcom/flurry/sdk/ey$2;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 169
    invoke-static {}, Lcom/flurry/sdk/eq;->a()Lcom/flurry/sdk/eq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eq;->d()V

    .line 171
    :cond_0
    return-void
.end method
