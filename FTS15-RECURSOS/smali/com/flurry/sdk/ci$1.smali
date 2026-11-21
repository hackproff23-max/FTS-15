.class Lcom/flurry/sdk/ci$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/fy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ci;
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
        "Lcom/flurry/sdk/ff;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ci;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ci;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/flurry/sdk/ci$1;->a:Lcom/flurry/sdk/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ff;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/flurry/sdk/ci$1;->a:Lcom/flurry/sdk/ci;

    invoke-static {v0}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/ci;)V

    .line 98
    return-void
.end method

.method public synthetic notify(Lcom/flurry/sdk/fx;)V
    .locals 0

    .prologue
    .line 94
    check-cast p1, Lcom/flurry/sdk/ff;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ci$1;->a(Lcom/flurry/sdk/ff;)V

    return-void
.end method
