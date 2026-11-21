.class public Lcom/flurry/sdk/dk$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/dk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/flurry/sdk/dk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/dk;-><init>(Lcom/flurry/sdk/dk$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/dk$a;->a:Lcom/flurry/sdk/dk;

    .line 102
    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/dk$a;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/sdk/dk$a;->a:Lcom/flurry/sdk/dk;

    invoke-static {v0, p1}, Lcom/flurry/sdk/dk;->a(Lcom/flurry/sdk/dk;I)I

    .line 105
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/dl;)Lcom/flurry/sdk/dk$a;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flurry/sdk/dk$a;->a:Lcom/flurry/sdk/dk;

    invoke-static {v0, p1}, Lcom/flurry/sdk/dk;->a(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/dl;)Lcom/flurry/sdk/dl;

    .line 121
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/fu;)Lcom/flurry/sdk/dk$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/fu",
            "<",
            "Lcom/flurry/sdk/de;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/dk$a;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/dk$a;->a:Lcom/flurry/sdk/dk;

    invoke-static {v0, p1}, Lcom/flurry/sdk/dk;->a(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/fu;)Lcom/flurry/sdk/fu;

    .line 113
    return-object p0
.end method

.method public a()Lcom/flurry/sdk/dk;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/flurry/sdk/dk$a;->a:Lcom/flurry/sdk/dk;

    return-object v0
.end method

.method public b(I)Lcom/flurry/sdk/dk$a;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/flurry/sdk/dk$a;->a:Lcom/flurry/sdk/dk;

    invoke-static {v0, p1}, Lcom/flurry/sdk/dk;->b(Lcom/flurry/sdk/dk;I)I

    .line 109
    return-object p0
.end method

.method public b(Lcom/flurry/sdk/fu;)Lcom/flurry/sdk/dk$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/fu",
            "<",
            "Lcom/flurry/sdk/df;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/dk$a;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/flurry/sdk/dk$a;->a:Lcom/flurry/sdk/dk;

    invoke-static {v0, p1}, Lcom/flurry/sdk/dk;->b(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/fu;)Lcom/flurry/sdk/fu;

    .line 117
    return-object p0
.end method
