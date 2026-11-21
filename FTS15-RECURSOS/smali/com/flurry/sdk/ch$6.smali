.class Lcom/flurry/sdk/ch$6;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ch;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/ci;Lcom/flurry/sdk/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ch;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ch;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/flurry/sdk/ch$6;->a:Lcom/flurry/sdk/ch;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/flurry/sdk/ch$6;->a:Lcom/flurry/sdk/ch;

    invoke-static {v0}, Lcom/flurry/sdk/ch;->i(Lcom/flurry/sdk/ch;)V

    .line 237
    return-void
.end method
