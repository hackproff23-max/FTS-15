.class Lcom/flurry/sdk/fo$1;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/fo;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fo;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fo;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/flurry/sdk/fo$1;->a:Lcom/flurry/sdk/fo;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/flurry/sdk/fh;->a()Lcom/flurry/sdk/fh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fh;->c()V

    .line 50
    return-void
.end method
