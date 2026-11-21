.class Lcom/firsttouchgames/fts15/GLSurfaceView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Lcom/firsttouchgames/fts15/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/fts15/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lcom/firsttouchgames/fts15/GLSurfaceView;


# direct methods
.method private constructor <init>(Lcom/firsttouchgames/fts15/GLSurfaceView;)V
    .locals 1

    .prologue
    .line 747
    iput-object p1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/firsttouchgames/fts15/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    const/16 v0, 0x3098

    iput v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/firsttouchgames/fts15/GLSurfaceView;Lcom/firsttouchgames/fts15/GLSurfaceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/firsttouchgames/fts15/GLSurfaceView;
    .param p2, "x1"    # Lcom/firsttouchgames/fts15/GLSurfaceView$1;

    .prologue
    .line 747
    invoke-direct {p0, p1}, Lcom/firsttouchgames/fts15/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/firsttouchgames/fts15/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 751
    const/4 v1, 0x3

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/firsttouchgames/fts15/GLSurfaceView;

    invoke-static {v2}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$200(Lcom/firsttouchgames/fts15/GLSurfaceView;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 754
    .local v0, "attrib_list":[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/firsttouchgames/fts15/GLSurfaceView;

    invoke-static {v2}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$200(Lcom/firsttouchgames/fts15/GLSurfaceView;)I

    move-result v2

    if-eqz v2, :cond_0

    .end local v0    # "attrib_list":[I
    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .restart local v0    # "attrib_list":[I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 760
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 761
    return-void
.end method
