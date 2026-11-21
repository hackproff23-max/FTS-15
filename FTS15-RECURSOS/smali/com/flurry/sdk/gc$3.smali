.class Lcom/flurry/sdk/gc$3;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gc;->a(Lcom/flurry/sdk/hr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/hr;

.field final synthetic b:Lcom/flurry/sdk/gc;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gc;Lcom/flurry/sdk/hr;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/flurry/sdk/gc$3;->b:Lcom/flurry/sdk/gc;

    iput-object p2, p0, Lcom/flurry/sdk/gc$3;->a:Lcom/flurry/sdk/hr;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/flurry/sdk/gc$3;->a:Lcom/flurry/sdk/hr;

    invoke-virtual {v0}, Lcom/flurry/sdk/hr;->h()V

    .line 176
    return-void
.end method
