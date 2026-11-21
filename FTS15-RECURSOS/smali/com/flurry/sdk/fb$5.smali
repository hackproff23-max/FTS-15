.class Lcom/flurry/sdk/fb$5;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/fb;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fb;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/flurry/sdk/fb$5;->a:Lcom/flurry/sdk/fb;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/flurry/sdk/fb$5;->a:Lcom/flurry/sdk/fb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb;Z)V

    .line 215
    return-void
.end method
