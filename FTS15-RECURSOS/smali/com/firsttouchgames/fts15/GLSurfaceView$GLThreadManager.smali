.class Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/fts15/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static final kGLES_20:I = 0x20000


# instance fields
.field private mEglOwner:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

.field private mGLContextCount:I

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/firsttouchgames/fts15/GLSurfaceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/firsttouchgames/fts15/GLSurfaceView$1;

    .prologue
    .line 1559
    invoke-direct {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1615
    iget-boolean v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    .line 1616
    const/4 v0, 0x0

    iput v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    .line 1617
    iget v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    .line 1618
    iput-boolean v2, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1620
    :cond_0
    iput-boolean v2, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1623
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 1603
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v1, :cond_1

    .line 1604
    invoke-direct {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1605
    iget v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v2, 0x20000

    if-ge v1, v2, :cond_0

    .line 1606
    const/16 v1, 0x1f01

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1607
    .local v0, "renderer":Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1608
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1610
    .end local v0    # "renderer":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1612
    :cond_1
    monitor-exit p0

    return-void

    .line 1603
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglSurfaceLocked(Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    .line 1599
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1600
    return-void
.end method

.method public declared-synchronized threadExiting(Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    .prologue
    .line 1565
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->access$1002(Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;Z)Z

    .line 1566
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    .line 1569
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1570
    monitor-exit p0

    return-void

    .line 1565
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglSurfaceLocked(Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;)Z
    .locals 2
    .param p1, "thread"    # Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    .prologue
    const/4 v0, 0x1

    .line 1580
    iget-object v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    if-nez v1, :cond_2

    .line 1581
    :cond_0
    iput-object p1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    .line 1582
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1589
    :cond_1
    :goto_0
    return v0

    .line 1585
    :cond_2
    invoke-direct {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1586
    iget-boolean v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 1589
    const/4 v0, 0x0

    goto :goto_0
.end method
