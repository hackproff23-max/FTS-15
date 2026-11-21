.class Lcom/flurry/sdk/q$5;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/q;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/q;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/q;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/flurry/sdk/q$5;->a:Lcom/flurry/sdk/q;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/flurry/sdk/q$5;->a:Lcom/flurry/sdk/q;

    invoke-static {v0}, Lcom/flurry/sdk/q;->b(Lcom/flurry/sdk/q;)V

    .line 309
    return-void
.end method
