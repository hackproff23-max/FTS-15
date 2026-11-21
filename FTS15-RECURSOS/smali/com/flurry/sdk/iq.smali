.class final Lcom/flurry/sdk/iq;
.super Lcom/flurry/sdk/ir;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/iq$1;,
        Lcom/flurry/sdk/iq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/ir",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/flurry/sdk/in;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/in",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/flurry/sdk/if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/if",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/flurry/sdk/ia;

.field private final d:Lcom/flurry/sdk/jw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jw",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/flurry/sdk/is;

.field private f:Lcom/flurry/sdk/ir;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ir",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/in;Lcom/flurry/sdk/if;Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/is;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/in",
            "<TT;>;",
            "Lcom/flurry/sdk/if",
            "<TT;>;",
            "Lcom/flurry/sdk/ia;",
            "Lcom/flurry/sdk/jw",
            "<TT;>;",
            "Lcom/flurry/sdk/is;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/flurry/sdk/ir;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/flurry/sdk/iq;->a:Lcom/flurry/sdk/in;

    .line 44
    iput-object p2, p0, Lcom/flurry/sdk/iq;->b:Lcom/flurry/sdk/if;

    .line 45
    iput-object p3, p0, Lcom/flurry/sdk/iq;->c:Lcom/flurry/sdk/ia;

    .line 46
    iput-object p4, p0, Lcom/flurry/sdk/iq;->d:Lcom/flurry/sdk/jw;

    .line 47
    iput-object p5, p0, Lcom/flurry/sdk/iq;->e:Lcom/flurry/sdk/is;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/in;Lcom/flurry/sdk/if;Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/is;Lcom/flurry/sdk/iq$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/flurry/sdk/iq;-><init>(Lcom/flurry/sdk/in;Lcom/flurry/sdk/if;Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/is;)V

    return-void
.end method

.method private a()Lcom/flurry/sdk/ir;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/ir",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/sdk/iq;->f:Lcom/flurry/sdk/ir;

    .line 76
    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/iq;->c:Lcom/flurry/sdk/ia;

    iget-object v1, p0, Lcom/flurry/sdk/iq;->e:Lcom/flurry/sdk/is;

    iget-object v2, p0, Lcom/flurry/sdk/iq;->d:Lcom/flurry/sdk/jw;

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/is;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/iq;->f:Lcom/flurry/sdk/ir;

    goto :goto_0
.end method

.method public static a(Lcom/flurry/sdk/jw;Ljava/lang/Object;)Lcom/flurry/sdk/is;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jw",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/flurry/sdk/is;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 85
    new-instance v0, Lcom/flurry/sdk/iq$a;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/iq$a;-><init>(Ljava/lang/Object;Lcom/flurry/sdk/jw;ZLjava/lang/Class;Lcom/flurry/sdk/iq$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jz;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flurry/sdk/iq;->a:Lcom/flurry/sdk/in;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/flurry/sdk/iq;->a()Lcom/flurry/sdk/ir;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ir;->a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/flurry/sdk/jz;->f()Lcom/flurry/sdk/jz;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/iq;->a:Lcom/flurry/sdk/in;

    iget-object v1, p0, Lcom/flurry/sdk/iq;->d:Lcom/flurry/sdk/jw;

    invoke-virtual {v1}, Lcom/flurry/sdk/jw;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/iq;->c:Lcom/flurry/sdk/ia;

    iget-object v2, v2, Lcom/flurry/sdk/ia;->b:Lcom/flurry/sdk/im;

    invoke-interface {v0, p2, v1, v2}, Lcom/flurry/sdk/in;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/flurry/sdk/im;)Lcom/flurry/sdk/ig;

    move-result-object v0

    .line 71
    invoke-static {v0, p1}, Lcom/flurry/sdk/jh;->a(Lcom/flurry/sdk/ig;Lcom/flurry/sdk/jz;)V

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jx;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flurry/sdk/iq;->b:Lcom/flurry/sdk/if;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/flurry/sdk/iq;->a()Lcom/flurry/sdk/ir;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ir;->b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/flurry/sdk/jh;->a(Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/ig;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/flurry/sdk/ig;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/iq;->b:Lcom/flurry/sdk/if;

    iget-object v2, p0, Lcom/flurry/sdk/iq;->d:Lcom/flurry/sdk/jw;

    invoke-virtual {v2}, Lcom/flurry/sdk/jw;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/iq;->c:Lcom/flurry/sdk/ia;

    iget-object v3, v3, Lcom/flurry/sdk/ia;->a:Lcom/flurry/sdk/ie;

    invoke-interface {v1, v0, v2, v3}, Lcom/flurry/sdk/if;->b(Lcom/flurry/sdk/ig;Ljava/lang/reflect/Type;Lcom/flurry/sdk/ie;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
