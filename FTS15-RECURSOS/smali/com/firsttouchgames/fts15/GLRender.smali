.class public Lcom/firsttouchgames/fts15/GLRender;
.super Ljava/lang/Object;
.source "GLRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 29
    invoke-static {}, Lcom/firsttouchgames/fts15/JNI;->step()V

    .line 30
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 35
    const-wide/16 v2, 0x2ee

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    if-le p3, p2, :cond_0

    .line 41
    invoke-static {p3, p2}, Lcom/firsttouchgames/fts15/JNI;->SetScreen(II)V

    .line 46
    :goto_1
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-static {p2, p3}, Lcom/firsttouchgames/fts15/JNI;->SetScreen(II)V

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-static {v0, v0}, Lcom/firsttouchgames/fts15/JNI;->SetScreen(II)V

    .line 53
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 54
    return-void
.end method

.method public onSurfaceDestroyed(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 59
    return-void
.end method

.method public onSurfaceLost()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
