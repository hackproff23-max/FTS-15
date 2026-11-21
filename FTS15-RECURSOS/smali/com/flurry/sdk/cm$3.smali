.class Lcom/flurry/sdk/cm$3;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/cm;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/cm;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cm;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/flurry/sdk/cm$3;->a:Lcom/flurry/sdk/cm;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/flurry/sdk/cm$3;->a:Lcom/flurry/sdk/cm;

    invoke-static {v0}, Lcom/flurry/sdk/cm;->c(Lcom/flurry/sdk/cm;)V

    .line 229
    return-void
.end method
