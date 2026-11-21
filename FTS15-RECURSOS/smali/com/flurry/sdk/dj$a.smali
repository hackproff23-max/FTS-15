.class public Lcom/flurry/sdk/dj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/dj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/flurry/sdk/dj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/dj;-><init>(Lcom/flurry/sdk/dj$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/dj$a;->a:Lcom/flurry/sdk/dj;

    .line 46
    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/dj$a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/sdk/dj$a;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0, p1}, Lcom/flurry/sdk/dj;->a(Lcom/flurry/sdk/dj;I)I

    .line 53
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/dc;)Lcom/flurry/sdk/dj$a;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flurry/sdk/dj$a;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0, p1}, Lcom/flurry/sdk/dj;->a(Lcom/flurry/sdk/dj;Lcom/flurry/sdk/dc;)Lcom/flurry/sdk/dc;

    .line 57
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/dk;)Lcom/flurry/sdk/dj$a;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/flurry/sdk/dj$a;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0, p1}, Lcom/flurry/sdk/dj;->a(Lcom/flurry/sdk/dj;Lcom/flurry/sdk/dk;)Lcom/flurry/sdk/dk;

    .line 61
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/sdk/dj$a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flurry/sdk/dj$a;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0, p1}, Lcom/flurry/sdk/dj;->a(Lcom/flurry/sdk/dj;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    return-object p0
.end method

.method public a()Lcom/flurry/sdk/dj;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/dj$a;->a:Lcom/flurry/sdk/dj;

    return-object v0
.end method
