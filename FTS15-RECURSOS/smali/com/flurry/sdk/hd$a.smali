.class Lcom/flurry/sdk/hd$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/hd;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hd;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/flurry/sdk/hd$a;->a:Lcom/flurry/sdk/hd;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/flurry/sdk/hd$a;->a:Lcom/flurry/sdk/hd;

    invoke-virtual {v0}, Lcom/flurry/sdk/hd;->a()V

    .line 22
    new-instance v0, Lcom/flurry/sdk/he;

    invoke-direct {v0}, Lcom/flurry/sdk/he;-><init>()V

    .line 23
    invoke-virtual {v0}, Lcom/flurry/sdk/he;->b()V

    .line 24
    return-void
.end method
