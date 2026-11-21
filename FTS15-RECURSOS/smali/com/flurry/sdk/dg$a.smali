.class public Lcom/flurry/sdk/dg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/dg;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/flurry/sdk/dg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/dg;-><init>(Lcom/flurry/sdk/dg$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/dg$a;->a:Lcom/flurry/sdk/dg;

    .line 36
    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/dg$a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/sdk/dg$a;->a:Lcom/flurry/sdk/dg;

    invoke-static {v0, p1}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/dg;I)I

    .line 43
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/di;)Lcom/flurry/sdk/dg$a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/dg$a;->a:Lcom/flurry/sdk/dg;

    invoke-static {v0, p1}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/dg;Lcom/flurry/sdk/di;)Lcom/flurry/sdk/di;

    .line 47
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/sdk/dg$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/flurry/sdk/dg$a;->a:Lcom/flurry/sdk/dg;

    invoke-static {v0, p1}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/dg;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    return-object p0
.end method

.method public a()Lcom/flurry/sdk/dg;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flurry/sdk/dg$a;->a:Lcom/flurry/sdk/dg;

    return-object v0
.end method
