.class public Lcom/flurry/sdk/dj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/dj$1;,
        Lcom/flurry/sdk/dj$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/flurry/sdk/dc;

.field private d:Lcom/flurry/sdk/dk;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/dj$1;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/flurry/sdk/dj;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dj;I)I
    .locals 0

    .prologue
    .line 5
    iput p1, p0, Lcom/flurry/sdk/dj;->b:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/dj;Lcom/flurry/sdk/dc;)Lcom/flurry/sdk/dc;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/dj;->c:Lcom/flurry/sdk/dc;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/dj;Lcom/flurry/sdk/dk;)Lcom/flurry/sdk/dk;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/dj;->d:Lcom/flurry/sdk/dk;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/dj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/dj;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/flurry/sdk/dj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/flurry/sdk/dj;->b:I

    return v0
.end method

.method public c()Lcom/flurry/sdk/dc;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/flurry/sdk/dj;->c:Lcom/flurry/sdk/dc;

    return-object v0
.end method

.method public d()Lcom/flurry/sdk/dk;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/dj;->d:Lcom/flurry/sdk/dk;

    return-object v0
.end method
