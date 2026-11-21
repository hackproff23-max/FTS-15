.class public Lcom/flurry/sdk/dk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/dk$1;,
        Lcom/flurry/sdk/dk$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/flurry/sdk/fu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fu",
            "<",
            "Lcom/flurry/sdk/de;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/flurry/sdk/fu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fu",
            "<",
            "Lcom/flurry/sdk/df;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/flurry/sdk/dl;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/dk$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/flurry/sdk/dk;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dk;I)I
    .locals 0

    .prologue
    .line 11
    iput p1, p0, Lcom/flurry/sdk/dk;->a:I

    return p1
.end method

.method public static a(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/dk;)Lcom/flurry/sdk/dk;
    .locals 4

    .prologue
    .line 22
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 27
    :cond_1
    new-instance v0, Lcom/flurry/sdk/fu;

    invoke-direct {v0}, Lcom/flurry/sdk/fu;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/flurry/sdk/dk;->c()Lcom/flurry/sdk/fu;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fu;->a(Lcom/flurry/sdk/fu;)V

    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/dk;->c()Lcom/flurry/sdk/fu;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fu;->a(Lcom/flurry/sdk/fu;)V

    .line 40
    :cond_3
    new-instance v1, Lcom/flurry/sdk/fu;

    invoke-direct {v1}, Lcom/flurry/sdk/fu;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/flurry/sdk/dk;->d()Lcom/flurry/sdk/fu;

    move-result-object v2

    .line 43
    if-eqz v2, :cond_4

    .line 44
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fu;->a(Lcom/flurry/sdk/fu;)V

    .line 47
    :cond_4
    invoke-virtual {p1}, Lcom/flurry/sdk/dk;->d()Lcom/flurry/sdk/fu;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_5

    .line 49
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fu;->a(Lcom/flurry/sdk/fu;)V

    .line 53
    :cond_5
    new-instance v2, Lcom/flurry/sdk/dk$a;

    invoke-direct {v2}, Lcom/flurry/sdk/dk$a;-><init>()V

    .line 54
    invoke-virtual {p1}, Lcom/flurry/sdk/dk;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/dk$a;->a(I)Lcom/flurry/sdk/dk$a;

    .line 55
    invoke-virtual {p1}, Lcom/flurry/sdk/dk;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/dk$a;->b(I)Lcom/flurry/sdk/dk$a;

    .line 56
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/dk$a;->a(Lcom/flurry/sdk/fu;)Lcom/flurry/sdk/dk$a;

    .line 57
    invoke-virtual {v2, v1}, Lcom/flurry/sdk/dk$a;->b(Lcom/flurry/sdk/fu;)Lcom/flurry/sdk/dk$a;

    .line 58
    invoke-virtual {p1}, Lcom/flurry/sdk/dk;->e()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/dk$a;->a(Lcom/flurry/sdk/dl;)Lcom/flurry/sdk/dk$a;

    .line 60
    invoke-virtual {v2}, Lcom/flurry/sdk/dk$a;->a()Lcom/flurry/sdk/dk;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/dl;)Lcom/flurry/sdk/dl;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/flurry/sdk/dk;->e:Lcom/flurry/sdk/dl;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/fu;)Lcom/flurry/sdk/fu;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/flurry/sdk/dk;->c:Lcom/flurry/sdk/fu;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/dk;I)I
    .locals 0

    .prologue
    .line 11
    iput p1, p0, Lcom/flurry/sdk/dk;->b:I

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/fu;)Lcom/flurry/sdk/fu;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/flurry/sdk/dk;->d:Lcom/flurry/sdk/fu;

    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/flurry/sdk/dk;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/flurry/sdk/dk;->b:I

    return v0
.end method

.method public c()Lcom/flurry/sdk/fu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/fu",
            "<",
            "Lcom/flurry/sdk/de;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/flurry/sdk/dk;->c:Lcom/flurry/sdk/fu;

    return-object v0
.end method

.method public d()Lcom/flurry/sdk/fu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/fu",
            "<",
            "Lcom/flurry/sdk/df;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/dk;->d:Lcom/flurry/sdk/fu;

    return-object v0
.end method

.method public e()Lcom/flurry/sdk/dl;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/dk;->e:Lcom/flurry/sdk/dl;

    return-object v0
.end method
