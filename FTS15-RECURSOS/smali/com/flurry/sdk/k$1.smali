.class Lcom/flurry/sdk/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/fy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/fy",
        "<",
        "Lcom/flurry/sdk/fi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/k;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/k;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/flurry/sdk/k$1;->a:Lcom/flurry/sdk/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/fi;)V
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p1, Lcom/flurry/sdk/fi;->a:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/k$1;->a:Lcom/flurry/sdk/k;

    invoke-static {v0}, Lcom/flurry/sdk/k;->a(Lcom/flurry/sdk/k;)V

    .line 41
    :cond_0
    return-void
.end method

.method public synthetic notify(Lcom/flurry/sdk/fx;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/flurry/sdk/fi;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/k$1;->a(Lcom/flurry/sdk/fi;)V

    return-void
.end method
