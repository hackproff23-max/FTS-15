.class Lcom/flurry/sdk/fz$1;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/fz;->a(Lcom/flurry/sdk/fx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fy;

.field final synthetic b:Lcom/flurry/sdk/fx;

.field final synthetic c:Lcom/flurry/sdk/fz;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fz;Lcom/flurry/sdk/fy;Lcom/flurry/sdk/fx;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/flurry/sdk/fz$1;->c:Lcom/flurry/sdk/fz;

    iput-object p2, p0, Lcom/flurry/sdk/fz$1;->a:Lcom/flurry/sdk/fy;

    iput-object p3, p0, Lcom/flurry/sdk/fz$1;->b:Lcom/flurry/sdk/fx;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/flurry/sdk/fz$1;->a:Lcom/flurry/sdk/fy;

    iget-object v1, p0, Lcom/flurry/sdk/fz$1;->b:Lcom/flurry/sdk/fx;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/fy;->notify(Lcom/flurry/sdk/fx;)V

    .line 139
    return-void
.end method
