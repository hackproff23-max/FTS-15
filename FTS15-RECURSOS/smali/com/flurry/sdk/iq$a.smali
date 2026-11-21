.class Lcom/flurry/sdk/iq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/is;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/flurry/sdk/jw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jw",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/flurry/sdk/in;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/in",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/flurry/sdk/if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/if",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/flurry/sdk/jw;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/flurry/sdk/jw",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    instance-of v0, p1, Lcom/flurry/sdk/in;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/flurry/sdk/in;

    :goto_0
    iput-object v0, p0, Lcom/flurry/sdk/iq$a;->d:Lcom/flurry/sdk/in;

    .line 120
    instance-of v0, p1, Lcom/flurry/sdk/if;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/flurry/sdk/if;

    :goto_1
    iput-object p1, p0, Lcom/flurry/sdk/iq$a;->e:Lcom/flurry/sdk/if;

    .line 123
    iget-object v0, p0, Lcom/flurry/sdk/iq$a;->d:Lcom/flurry/sdk/in;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/iq$a;->e:Lcom/flurry/sdk/if;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/flurry/sdk/iy;->a(Z)V

    .line 124
    iput-object p2, p0, Lcom/flurry/sdk/iq$a;->a:Lcom/flurry/sdk/jw;

    .line 125
    iput-boolean p3, p0, Lcom/flurry/sdk/iq$a;->b:Z

    .line 126
    iput-object p4, p0, Lcom/flurry/sdk/iq$a;->c:Ljava/lang/Class;

    .line 127
    return-void

    :cond_1
    move-object v0, v1

    .line 117
    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 120
    goto :goto_1

    .line 123
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/flurry/sdk/jw;ZLjava/lang/Class;Lcom/flurry/sdk/iq$1;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/iq$a;-><init>(Ljava/lang/Object;Lcom/flurry/sdk/jw;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/ir;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/flurry/sdk/ia;",
            "Lcom/flurry/sdk/jw",
            "<TT;>;)",
            "Lcom/flurry/sdk/ir",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 131
    iget-object v0, p0, Lcom/flurry/sdk/iq$a;->a:Lcom/flurry/sdk/jw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/iq$a;->a:Lcom/flurry/sdk/jw;

    .line 132
    invoke-virtual {v0, p2}, Lcom/flurry/sdk/jw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/iq$a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/iq$a;->a:Lcom/flurry/sdk/jw;

    invoke-virtual {v0}, Lcom/flurry/sdk/jw;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/flurry/sdk/jw;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 134
    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/flurry/sdk/iq;

    iget-object v1, p0, Lcom/flurry/sdk/iq$a;->d:Lcom/flurry/sdk/in;

    iget-object v2, p0, Lcom/flurry/sdk/iq$a;->e:Lcom/flurry/sdk/if;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/iq;-><init>(Lcom/flurry/sdk/in;Lcom/flurry/sdk/if;Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/is;Lcom/flurry/sdk/iq$1;)V

    :goto_1
    return-object v0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/iq$a;->c:Ljava/lang/Class;

    .line 133
    invoke-virtual {p2}, Lcom/flurry/sdk/jw;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, v6

    .line 134
    goto :goto_1
.end method
