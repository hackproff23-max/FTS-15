.class public Lcom/flurry/sdk/di$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/di;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/di;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/flurry/sdk/di;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/di;-><init>(Lcom/flurry/sdk/di$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/di$a;->a:Lcom/flurry/sdk/di;

    .line 79
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/db;)Lcom/flurry/sdk/di$a;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/di$a;->a:Lcom/flurry/sdk/di;

    invoke-static {v0, p1}, Lcom/flurry/sdk/di;->a(Lcom/flurry/sdk/di;Lcom/flurry/sdk/db;)Lcom/flurry/sdk/db;

    .line 83
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/dh;)Lcom/flurry/sdk/di$a;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/flurry/sdk/di$a;->a:Lcom/flurry/sdk/di;

    invoke-static {v0, p1}, Lcom/flurry/sdk/di;->a(Lcom/flurry/sdk/di;Lcom/flurry/sdk/dh;)Lcom/flurry/sdk/dh;

    .line 93
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/sdk/di$a;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flurry/sdk/di$a;->a:Lcom/flurry/sdk/di;

    invoke-static {v0, p1}, Lcom/flurry/sdk/di;->a(Lcom/flurry/sdk/di;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/flurry/sdk/di$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/di$a;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/flurry/sdk/di$a;->a:Lcom/flurry/sdk/di;

    invoke-static {v0, p1}, Lcom/flurry/sdk/di;->a(Lcom/flurry/sdk/di;Ljava/util/List;)Ljava/util/List;

    .line 98
    return-object p0
.end method

.method public a()Lcom/flurry/sdk/di;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/flurry/sdk/di$a;->a:Lcom/flurry/sdk/di;

    return-object v0
.end method

.method public b(Ljava/util/List;)Lcom/flurry/sdk/di$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/di$a;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/di$a;->a:Lcom/flurry/sdk/di;

    invoke-static {v0, p1}, Lcom/flurry/sdk/di;->b(Lcom/flurry/sdk/di;Ljava/util/List;)Ljava/util/List;

    .line 103
    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/flurry/sdk/di$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/di$a;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/di$a;->a:Lcom/flurry/sdk/di;

    invoke-static {v0, p1}, Lcom/flurry/sdk/di;->c(Lcom/flurry/sdk/di;Ljava/util/List;)Ljava/util/List;

    .line 108
    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/flurry/sdk/di$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/dj;",
            ">;)",
            "Lcom/flurry/sdk/di$a;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/di$a;->a:Lcom/flurry/sdk/di;

    invoke-static {v0, p1}, Lcom/flurry/sdk/di;->d(Lcom/flurry/sdk/di;Ljava/util/List;)Ljava/util/List;

    .line 113
    return-object p0
.end method
