.class public Lcom/flurry/sdk/dl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/dl$1;,
        Lcom/flurry/sdk/dl$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/flurry/sdk/dd;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/dl$1;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/flurry/sdk/dl;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dl;I)I
    .locals 0

    .prologue
    .line 5
    iput p1, p0, Lcom/flurry/sdk/dl;->d:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/dl;Lcom/flurry/sdk/dd;)Lcom/flurry/sdk/dd;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/dl;->e:Lcom/flurry/sdk/dd;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/dl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/dl;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/dl;Z)Z
    .locals 0

    .prologue
    .line 5
    iput-boolean p1, p0, Lcom/flurry/sdk/dl;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/dl;I)I
    .locals 0

    .prologue
    .line 5
    iput p1, p0, Lcom/flurry/sdk/dl;->f:I

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/dl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/dl;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/dl;Z)Z
    .locals 0

    .prologue
    .line 5
    iput-boolean p1, p0, Lcom/flurry/sdk/dl;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/dl;I)I
    .locals 0

    .prologue
    .line 5
    iput p1, p0, Lcom/flurry/sdk/dl;->g:I

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/dl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/dl;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/flurry/sdk/dl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/flurry/sdk/dl;->j:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/dl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/flurry/sdk/dl;->d:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/dl;->j:Ljava/lang/String;

    return-object v0
.end method
