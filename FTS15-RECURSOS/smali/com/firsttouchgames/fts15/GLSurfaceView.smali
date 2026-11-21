.class public Lcom/firsttouchgames/fts15/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firsttouchgames/fts15/GLSurfaceView$1;,
        Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;,
        Lcom/firsttouchgames/fts15/GLSurfaceView$LogWriter;,
        Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;,
        Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;,
        Lcom/firsttouchgames/fts15/GLSurfaceView$SimpleEGLConfigChooser;,
        Lcom/firsttouchgames/fts15/GLSurfaceView$ComponentSizeChooser;,
        Lcom/firsttouchgames/fts15/GLSurfaceView$BaseConfigChooser;,
        Lcom/firsttouchgames/fts15/GLSurfaceView$EGLConfigChooser;,
        Lcom/firsttouchgames/fts15/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Lcom/firsttouchgames/fts15/GLSurfaceView$EGLWindowSurfaceFactory;,
        Lcom/firsttouchgames/fts15/GLSurfaceView$DefaultContextFactory;,
        Lcom/firsttouchgames/fts15/GLSurfaceView$EGLContextFactory;,
        Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;,
        Lcom/firsttouchgames/fts15/GLSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_SURFACE:Z = true

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final sGLThreadManager:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lcom/firsttouchgames/fts15/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/firsttouchgames/fts15/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/firsttouchgames/fts15/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

.field private mGLWrapper:Lcom/firsttouchgames/fts15/GLSurfaceView$GLWrapper;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1635
    new-instance v0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;-><init>(Lcom/firsttouchgames/fts15/GLSurfaceView$1;)V

    sput-object v0, Lcom/firsttouchgames/fts15/GLSurfaceView;->sGLThreadManager:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mSizeChanged:Z

    .line 201
    invoke-direct {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView;->init()V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mSizeChanged:Z

    .line 210
    invoke-direct {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView;->init()V

    .line 211
    return-void
.end method

.method static synthetic access$200(Lcom/firsttouchgames/fts15/GLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/firsttouchgames/fts15/GLSurfaceView;

    .prologue
    .line 153
    iget v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/firsttouchgames/fts15/GLSurfaceView;)Lcom/firsttouchgames/fts15/GLSurfaceView$EGLConfigChooser;
    .locals 1
    .param p0, "x0"    # Lcom/firsttouchgames/fts15/GLSurfaceView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mEGLConfigChooser:Lcom/firsttouchgames/fts15/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/firsttouchgames/fts15/GLSurfaceView;)Lcom/firsttouchgames/fts15/GLSurfaceView$EGLContextFactory;
    .locals 1
    .param p0, "x0"    # Lcom/firsttouchgames/fts15/GLSurfaceView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mEGLContextFactory:Lcom/firsttouchgames/fts15/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/firsttouchgames/fts15/GLSurfaceView;)Lcom/firsttouchgames/fts15/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1
    .param p0, "x0"    # Lcom/firsttouchgames/fts15/GLSurfaceView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/firsttouchgames/fts15/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/firsttouchgames/fts15/GLSurfaceView;)Lcom/firsttouchgames/fts15/GLSurfaceView$GLWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/firsttouchgames/fts15/GLSurfaceView;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLWrapper:Lcom/firsttouchgames/fts15/GLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/firsttouchgames/fts15/GLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/firsttouchgames/fts15/GLSurfaceView;

    .prologue
    .line 153
    iget v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/firsttouchgames/fts15/GLSurfaceView;->sGLThreadManager:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/firsttouchgames/fts15/GLSurfaceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/firsttouchgames/fts15/GLSurfaceView;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$902(Lcom/firsttouchgames/fts15/GLSurfaceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/firsttouchgames/fts15/GLSurfaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mSizeChanged:Z

    return p1
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLThread:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 1554
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1557
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 216
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 217
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 218
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 221
    invoke-virtual {p0, v2}, Lcom/firsttouchgames/fts15/GLSurfaceView;->setFocusable(Z)V

    .line 222
    invoke-virtual {p0, v2}, Lcom/firsttouchgames/fts15/GLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 223
    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLThread:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 533
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 534
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLThread:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 535
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    .line 541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->getId()I

    move-result v0

    .line 543
    .local v0, "id":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->getSources()I

    move-result v9

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_0

    .line 545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    .line 546
    .local v1, "mrx":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v2

    .line 548
    .local v2, "mry":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v9

    mul-float v5, v9, v10

    .line 549
    .local v5, "xmin":F
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v9

    mul-float v4, v9, v10

    .line 551
    .local v4, "xmax":F
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .line 552
    .local v3, "x":F
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    .line 553
    .local v6, "y":F
    invoke-static {v3}, Lcom/firsttouchgames/fts15/DeviceManager;->SetControllerAxisX(F)V

    .line 554
    invoke-static {v6}, Lcom/firsttouchgames/fts15/DeviceManager;->SetControllerAxisY(F)V

    .line 559
    .end local v1    # "mrx":Landroid/view/InputDevice$MotionRange;
    .end local v2    # "mry":Landroid/view/InputDevice$MotionRange;
    .end local v3    # "x":F
    .end local v4    # "xmax":F
    .end local v5    # "xmin":F
    .end local v6    # "y":F
    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 565
    add-int/lit8 v0, p1, -0x60

    .line 566
    .local v0, "i":I
    if-ltz v0, :cond_0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 568
    shl-int v2, v1, v0

    invoke-static {v2}, Lcom/firsttouchgames/fts15/DeviceManager;->SetControllerButtons(I)V

    .line 577
    :goto_0
    return v1

    .line 571
    :cond_0
    add-int/lit8 v0, p1, -0x13

    .line 572
    if-ltz v0, :cond_1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 574
    add-int/lit8 v2, v0, 0x1c

    shl-int v2, v1, v2

    invoke-static {v2}, Lcom/firsttouchgames/fts15/DeviceManager;->SetControllerButtons(I)V

    goto :goto_0

    .line 577
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 582
    add-int/lit8 v0, p1, -0x60

    .line 583
    .local v0, "i":I
    if-ltz v0, :cond_0

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    .line 585
    shl-int v2, v1, v0

    invoke-static {v2}, Lcom/firsttouchgames/fts15/DeviceManager;->ClearControllerButtons(I)V

    .line 595
    :goto_0
    return v1

    .line 588
    :cond_0
    add-int/lit8 v0, p1, -0x13

    .line 589
    if-ltz v0, :cond_1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 591
    add-int/lit8 v2, v0, 0x1c

    shl-int v2, v1, v2

    invoke-static {v2}, Lcom/firsttouchgames/fts15/DeviceManager;->ClearControllerButtons(I)V

    goto :goto_0

    .line 595
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLThread:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->onPause()V

    .line 492
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLThread:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->onResume()V

    .line 503
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 522
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowFocusChanged(Z)V

    .line 523
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLThread:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->onWindowFocusChanged(Z)V

    .line 524
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLThread:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 515
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLThread:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->requestRender()V

    .line 457
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .prologue
    .line 252
    iput p1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mDebugFlags:I

    .line 253
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 382
    new-instance v0, Lcom/firsttouchgames/fts15/GLSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/firsttouchgames/fts15/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/firsttouchgames/fts15/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/firsttouchgames/fts15/GLSurfaceView;->setEGLConfigChooser(Lcom/firsttouchgames/fts15/GLSurfaceView$EGLConfigChooser;)V

    .line 384
    return-void
.end method

.method public setEGLConfigChooser(Lcom/firsttouchgames/fts15/GLSurfaceView$EGLConfigChooser;)V
    .locals 0
    .param p1, "configChooser"    # Lcom/firsttouchgames/fts15/GLSurfaceView$EGLConfigChooser;

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView;->checkRenderThreadState()V

    .line 346
    iput-object p1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mEGLConfigChooser:Lcom/firsttouchgames/fts15/GLSurfaceView$EGLConfigChooser;

    .line 347
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .prologue
    .line 364
    new-instance v0, Lcom/firsttouchgames/fts15/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/firsttouchgames/fts15/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/firsttouchgames/fts15/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/firsttouchgames/fts15/GLSurfaceView;->setEGLConfigChooser(Lcom/firsttouchgames/fts15/GLSurfaceView$EGLConfigChooser;)V

    .line 365
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView;->checkRenderThreadState()V

    .line 414
    iput p1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mEGLContextClientVersion:I

    .line 415
    return-void
.end method

.method public setEGLContextFactory(Lcom/firsttouchgames/fts15/GLSurfaceView$EGLContextFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/firsttouchgames/fts15/GLSurfaceView$EGLContextFactory;

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView;->checkRenderThreadState()V

    .line 316
    iput-object p1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mEGLContextFactory:Lcom/firsttouchgames/fts15/GLSurfaceView$EGLContextFactory;

    .line 317
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/firsttouchgames/fts15/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/firsttouchgames/fts15/GLSurfaceView$EGLWindowSurfaceFactory;

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView;->checkRenderThreadState()V

    .line 330
    iput-object p1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/firsttouchgames/fts15/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 331
    return-void
.end method

.method public setGLWrapper(Lcom/firsttouchgames/fts15/GLSurfaceView$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Lcom/firsttouchgames/fts15/GLSurfaceView$GLWrapper;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLWrapper:Lcom/firsttouchgames/fts15/GLSurfaceView$GLWrapper;

    .line 240
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 434
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLThread:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 435
    return-void
.end method

.method public setRenderer(Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;)V
    .locals 3
    .param p1, "renderer"    # Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-direct {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView;->checkRenderThreadState()V

    .line 291
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mEGLConfigChooser:Lcom/firsttouchgames/fts15/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Lcom/firsttouchgames/fts15/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/firsttouchgames/fts15/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/firsttouchgames/fts15/GLSurfaceView;Z)V

    iput-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mEGLConfigChooser:Lcom/firsttouchgames/fts15/GLSurfaceView$EGLConfigChooser;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mEGLContextFactory:Lcom/firsttouchgames/fts15/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 295
    new-instance v0, Lcom/firsttouchgames/fts15/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/firsttouchgames/fts15/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/firsttouchgames/fts15/GLSurfaceView;Lcom/firsttouchgames/fts15/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mEGLContextFactory:Lcom/firsttouchgames/fts15/GLSurfaceView$EGLContextFactory;

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/firsttouchgames/fts15/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 298
    new-instance v0, Lcom/firsttouchgames/fts15/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/firsttouchgames/fts15/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/firsttouchgames/fts15/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/firsttouchgames/fts15/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 300
    :cond_2
    new-instance v0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    invoke-direct {v0, p0, p1}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;-><init>(Lcom/firsttouchgames/fts15/GLSurfaceView;Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLThread:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    .line 301
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLThread:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->start()V

    .line 302
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLThread:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 482
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLThread:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 465
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView;->mGLThread:Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 474
    return-void
.end method
