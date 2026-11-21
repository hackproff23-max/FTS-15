.class Lcom/flurry/sdk/ci$4$1;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ci$4;->a(Lcom/flurry/sdk/gk;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ci$4;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ci$4;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/flurry/sdk/ci$4$1;->a:Lcom/flurry/sdk/ci$4;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/flurry/sdk/ci$4$1;->a:Lcom/flurry/sdk/ci$4;

    iget-object v0, v0, Lcom/flurry/sdk/ci$4;->a:Lcom/flurry/sdk/ci;

    invoke-static {v0}, Lcom/flurry/sdk/ci;->g(Lcom/flurry/sdk/ci;)V

    .line 482
    return-void
.end method
