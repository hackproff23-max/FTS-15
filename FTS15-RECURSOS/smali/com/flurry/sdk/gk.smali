.class public Lcom/flurry/sdk/gk;
.super Lcom/flurry/sdk/gl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/gk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestObjectType:",
        "Ljava/lang/Object;",
        "ResponseObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/gl;"
    }
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/gk$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/gk$a",
            "<TRequestObjectType;TResponseObjectType;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestObjectType;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseObjectType;"
        }
    .end annotation
.end field

.field private d:Lcom/flurry/sdk/gx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/gx",
            "<TRequestObjectType;>;"
        }
    .end annotation
.end field

.field private e:Lcom/flurry/sdk/gx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/gx",
            "<TResponseObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/flurry/sdk/gl;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gk;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/gk;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/gk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/flurry/sdk/gk;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/gk;)Lcom/flurry/sdk/gx;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/gk;->d:Lcom/flurry/sdk/gx;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/gk;)Lcom/flurry/sdk/gx;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/gk;->e:Lcom/flurry/sdk/gx;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/gk;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->n()V

    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/flurry/sdk/gk$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gk$1;-><init>(Lcom/flurry/sdk/gk;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gk;->a(Lcom/flurry/sdk/gl$c;)V

    .line 91
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gk$a;

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gk;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gk$a;

    iget-object v1, p0, Lcom/flurry/sdk/gk;->c:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/flurry/sdk/gk$a;->a(Lcom/flurry/sdk/gk;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/gk$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/gk$a",
            "<TRequestObjectType;TResponseObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gk$a;

    .line 49
    return-void
.end method

.method public a(Lcom/flurry/sdk/gx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/gx",
            "<TRequestObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/flurry/sdk/gk;->d:Lcom/flurry/sdk/gx;

    .line 41
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestObjectType;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcom/flurry/sdk/gk;->b:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public b(Lcom/flurry/sdk/gx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/gx",
            "<TResponseObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/flurry/sdk/gk;->e:Lcom/flurry/sdk/gx;

    .line 45
    return-void
.end method

.method public safeRun()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/flurry/sdk/gk;->m()V

    .line 61
    invoke-super {p0}, Lcom/flurry/sdk/gl;->safeRun()V

    .line 62
    return-void
.end method
