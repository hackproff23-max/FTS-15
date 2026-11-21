.class Lcom/flurry/sdk/ch$1$1;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ch$1;->a(Lcom/flurry/sdk/hj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ch$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ch$1;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/flurry/sdk/ch$1$1;->a:Lcom/flurry/sdk/ch$1;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/ch$1$1;->a:Lcom/flurry/sdk/ch$1;

    iget-object v0, v0, Lcom/flurry/sdk/ch$1;->a:Lcom/flurry/sdk/ch;

    invoke-static {v0}, Lcom/flurry/sdk/ch;->b(Lcom/flurry/sdk/ch;)V

    .line 97
    return-void
.end method
