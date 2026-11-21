.class Lcom/flurry/sdk/ch$11$1;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ch$11;->a(Lcom/flurry/sdk/gk;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ch$11;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ch$11;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/flurry/sdk/ch$11$1;->a:Lcom/flurry/sdk/ch$11;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/flurry/sdk/ch$11$1;->a:Lcom/flurry/sdk/ch$11;

    iget-object v0, v0, Lcom/flurry/sdk/ch$11;->e:Lcom/flurry/sdk/ch;

    invoke-static {v0}, Lcom/flurry/sdk/ch;->i(Lcom/flurry/sdk/ch;)V

    .line 668
    return-void
.end method
