.class public Lcom/flurry/sdk/hg;
.super Lcom/flurry/sdk/hh;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/Integer;

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/Boolean;

.field public static final g:Ljava/lang/Boolean;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/Boolean;

.field public static final j:Landroid/location/Criteria;

.field public static final k:Landroid/location/Location;

.field public static final l:Ljava/lang/Long;

.field public static final m:Ljava/lang/Boolean;

.field public static final n:Ljava/lang/Long;

.field public static final o:Ljava/lang/Byte;

.field private static p:Lcom/flurry/sdk/hg;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    const/16 v0, 0xc3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hg;->a:Ljava/lang/Integer;

    .line 60
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hg;->b:Ljava/lang/Integer;

    .line 61
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hg;->c:Ljava/lang/Integer;

    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hg;->d:Ljava/lang/Integer;

    .line 65
    sput-object v2, Lcom/flurry/sdk/hg;->e:Ljava/lang/String;

    .line 66
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hg;->f:Ljava/lang/Boolean;

    .line 67
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hg;->g:Ljava/lang/Boolean;

    .line 68
    sput-object v2, Lcom/flurry/sdk/hg;->h:Ljava/lang/String;

    .line 69
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hg;->i:Ljava/lang/Boolean;

    .line 70
    sput-object v2, Lcom/flurry/sdk/hg;->j:Landroid/location/Criteria;

    .line 71
    sput-object v2, Lcom/flurry/sdk/hg;->k:Landroid/location/Location;

    .line 72
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hg;->l:Ljava/lang/Long;

    .line 73
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hg;->m:Ljava/lang/Boolean;

    .line 74
    sput-object v2, Lcom/flurry/sdk/hg;->n:Ljava/lang/Long;

    .line 75
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hg;->o:Ljava/lang/Byte;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/flurry/sdk/hh;-><init>()V

    .line 79
    invoke-virtual {p0}, Lcom/flurry/sdk/hg;->c()V

    .line 80
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/hg;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/flurry/sdk/hg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/hg;->p:Lcom/flurry/sdk/hg;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/flurry/sdk/hg;

    invoke-direct {v0}, Lcom/flurry/sdk/hg;-><init>()V

    sput-object v0, Lcom/flurry/sdk/hg;->p:Lcom/flurry/sdk/hg;

    .line 28
    :cond_0
    sget-object v0, Lcom/flurry/sdk/hg;->p:Lcom/flurry/sdk/hg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/flurry/sdk/hg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/hg;->p:Lcom/flurry/sdk/hg;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/flurry/sdk/hg;->p:Lcom/flurry/sdk/hg;

    invoke-virtual {v0}, Lcom/flurry/sdk/hg;->d()V

    .line 36
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/hg;->p:Lcom/flurry/sdk/hg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v1

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public c()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "AgentVersion"

    sget-object v1, Lcom/flurry/sdk/hg;->a:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v0, "ReleaseMajorVersion"

    sget-object v1, Lcom/flurry/sdk/hg;->b:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v0, "ReleaseMinorVersion"

    sget-object v1, Lcom/flurry/sdk/hg;->c:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string v0, "ReleasePatchVersion"

    sget-object v1, Lcom/flurry/sdk/hg;->d:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string v0, "ReleaseBetaVersion"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v0, "VersionName"

    sget-object v1, Lcom/flurry/sdk/hg;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v0, "CaptureUncaughtExceptions"

    sget-object v1, Lcom/flurry/sdk/hg;->f:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string v0, "UseHttps"

    sget-object v1, Lcom/flurry/sdk/hg;->g:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v0, "ReportUrl"

    sget-object v1, Lcom/flurry/sdk/hg;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v0, "ReportLocation"

    sget-object v1, Lcom/flurry/sdk/hg;->i:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const-string v0, "ExplicitLocation"

    sget-object v1, Lcom/flurry/sdk/hg;->k:Landroid/location/Location;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v0, "ContinueSessionMillis"

    sget-object v1, Lcom/flurry/sdk/hg;->l:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    const-string v0, "LogEvents"

    sget-object v1, Lcom/flurry/sdk/hg;->m:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    const-string v0, "Age"

    sget-object v1, Lcom/flurry/sdk/hg;->n:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string v0, "Gender"

    sget-object v1, Lcom/flurry/sdk/hg;->o:Ljava/lang/Byte;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v0, "UserId"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    return-void
.end method
