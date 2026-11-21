.class public Lcom/flurry/sdk/fd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gg;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/flurry/sdk/fd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/fd;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/fd;
    .locals 3

    .prologue
    .line 27
    const-class v1, Lcom/flurry/sdk/fd;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    const-class v2, Lcom/flurry/sdk/fd;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Class;)Lcom/flurry/sdk/gg;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/flurry/sdk/hb;)Lcom/flurry/sdk/fo;
    .locals 1

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/flurry/sdk/fo;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hb;->c(Ljava/lang/Class;)Lcom/flurry/sdk/hf;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fo;

    goto :goto_0
.end method

.method private i()Lcom/flurry/sdk/fo;
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/flurry/sdk/hc;->a()Lcom/flurry/sdk/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->e()Lcom/flurry/sdk/hb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/fd;->a(Lcom/flurry/sdk/hb;)Lcom/flurry/sdk/fo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/flurry/sdk/fo;

    invoke-static {v0}, Lcom/flurry/sdk/hb;->a(Ljava/lang/Class;)V

    .line 41
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    .line 42
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 43
    invoke-static {}, Lcom/flurry/sdk/hg;->a()Lcom/flurry/sdk/hg;

    .line 44
    invoke-static {}, Lcom/flurry/sdk/fr;->a()Lcom/flurry/sdk/fr;

    .line 45
    invoke-static {}, Lcom/flurry/sdk/fj;->a()Lcom/flurry/sdk/fj;

    .line 46
    invoke-static {}, Lcom/flurry/sdk/fe;->a()Lcom/flurry/sdk/fe;

    .line 47
    invoke-static {}, Lcom/flurry/sdk/fk;->a()Lcom/flurry/sdk/fk;

    .line 48
    invoke-static {}, Lcom/flurry/sdk/fh;->a()Lcom/flurry/sdk/fh;

    .line 49
    invoke-static {}, Lcom/flurry/sdk/fe;->a()Lcom/flurry/sdk/fe;

    .line 50
    invoke-static {}, Lcom/flurry/sdk/fm;->a()Lcom/flurry/sdk/fm;

    .line 51
    invoke-static {}, Lcom/flurry/sdk/fg;->a()Lcom/flurry/sdk/fg;

    .line 52
    invoke-static {}, Lcom/flurry/sdk/fn;->a()Lcom/flurry/sdk/fn;

    .line 53
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/flurry/sdk/fn;->b()V

    .line 59
    invoke-static {}, Lcom/flurry/sdk/fg;->b()V

    .line 60
    invoke-static {}, Lcom/flurry/sdk/fm;->b()V

    .line 61
    invoke-static {}, Lcom/flurry/sdk/fe;->b()V

    .line 62
    invoke-static {}, Lcom/flurry/sdk/fh;->b()V

    .line 63
    invoke-static {}, Lcom/flurry/sdk/fk;->b()V

    .line 64
    invoke-static {}, Lcom/flurry/sdk/fe;->b()V

    .line 65
    invoke-static {}, Lcom/flurry/sdk/fj;->b()V

    .line 66
    invoke-static {}, Lcom/flurry/sdk/fr;->b()V

    .line 67
    invoke-static {}, Lcom/flurry/sdk/hg;->b()V

    .line 68
    invoke-static {}, Lcom/flurry/sdk/hk;->b()V

    .line 69
    invoke-static {}, Lcom/flurry/sdk/fz;->b()V

    .line 71
    const-class v0, Lcom/flurry/sdk/fo;

    invoke-static {v0}, Lcom/flurry/sdk/hb;->b(Ljava/lang/Class;)V

    .line 72
    return-void
.end method

.method public c()J
    .locals 3

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    .line 77
    invoke-direct {p0}, Lcom/flurry/sdk/fd;->i()Lcom/flurry/sdk/fo;

    move-result-object v2

    .line 78
    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v2}, Lcom/flurry/sdk/fo;->b()J

    move-result-wide v0

    .line 82
    :cond_0
    return-wide v0
.end method

.method public d()J
    .locals 3

    .prologue
    .line 86
    const-wide/16 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/flurry/sdk/fd;->i()Lcom/flurry/sdk/fo;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2}, Lcom/flurry/sdk/fo;->c()J

    move-result-wide v0

    .line 93
    :cond_0
    return-wide v0
.end method

.method public e()J
    .locals 3

    .prologue
    .line 97
    const-wide/16 v0, -0x1

    .line 99
    invoke-direct {p0}, Lcom/flurry/sdk/fd;->i()Lcom/flurry/sdk/fo;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v2}, Lcom/flurry/sdk/fo;->d()J

    move-result-wide v0

    .line 104
    :cond_0
    return-wide v0
.end method

.method public f()J
    .locals 3

    .prologue
    .line 108
    const-wide/16 v0, 0x0

    .line 110
    invoke-direct {p0}, Lcom/flurry/sdk/fd;->i()Lcom/flurry/sdk/fo;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v2}, Lcom/flurry/sdk/fo;->f()J

    move-result-wide v0

    .line 115
    :cond_0
    return-wide v0
.end method

.method public g()J
    .locals 3

    .prologue
    .line 119
    const-wide/16 v0, 0x0

    .line 121
    invoke-direct {p0}, Lcom/flurry/sdk/fd;->i()Lcom/flurry/sdk/fo;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v2}, Lcom/flurry/sdk/fo;->e()J

    move-result-wide v0

    .line 126
    :cond_0
    return-wide v0
.end method

.method public h()Lcom/flurry/sdk/fj$a;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/flurry/sdk/fj;->a()Lcom/flurry/sdk/fj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fj;->d()Lcom/flurry/sdk/fj$a;

    move-result-object v0

    return-object v0
.end method
