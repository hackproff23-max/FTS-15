.class Lcom/flurry/sdk/go$7;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/go;->d(Lcom/flurry/sdk/gn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/go;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/go;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/flurry/sdk/go$7;->a:Lcom/flurry/sdk/go;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/flurry/sdk/go$7;->a:Lcom/flurry/sdk/go;

    invoke-static {v0}, Lcom/flurry/sdk/go;->c(Lcom/flurry/sdk/go;)V

    .line 120
    return-void
.end method
