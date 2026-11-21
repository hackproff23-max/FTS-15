.class Lcom/flurry/sdk/fe$1;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/fe;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fe;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fe;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/flurry/sdk/fe$1;->a:Lcom/flurry/sdk/fe;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/flurry/sdk/fe$1;->a:Lcom/flurry/sdk/fe;

    invoke-static {v0}, Lcom/flurry/sdk/fe;->a(Lcom/flurry/sdk/fe;)V

    .line 84
    return-void
.end method
