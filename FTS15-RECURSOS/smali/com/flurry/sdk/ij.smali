.class public final Lcom/flurry/sdk/ij;
.super Lcom/flurry/sdk/ig;
.source "SourceFile"


# instance fields
.field private final a:Lcom/flurry/sdk/je;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/je",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/ig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/flurry/sdk/ig;-><init>()V

    .line 33
    new-instance v0, Lcom/flurry/sdk/je;

    invoke-direct {v0}, Lcom/flurry/sdk/je;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ij;->a:Lcom/flurry/sdk/je;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/flurry/sdk/ig;)V
    .locals 1

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lcom/flurry/sdk/ii;->a:Lcom/flurry/sdk/ii;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ij;->a:Lcom/flurry/sdk/je;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/je;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 187
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/flurry/sdk/ij;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/flurry/sdk/ij;

    iget-object v0, p1, Lcom/flurry/sdk/ij;->a:Lcom/flurry/sdk/je;

    iget-object v1, p0, Lcom/flurry/sdk/ij;->a:Lcom/flurry/sdk/je;

    .line 188
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/je;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flurry/sdk/ij;->a:Lcom/flurry/sdk/je;

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->hashCode()I

    move-result v0

    return v0
.end method

.method public o()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/ig;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/flurry/sdk/ij;->a:Lcom/flurry/sdk/je;

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
