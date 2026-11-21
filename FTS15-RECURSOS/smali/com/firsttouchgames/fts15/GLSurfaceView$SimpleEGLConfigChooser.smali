.class Lcom/firsttouchgames/fts15/GLSurfaceView$SimpleEGLConfigChooser;
.super Lcom/firsttouchgames/fts15/GLSurfaceView$ComponentSizeChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/fts15/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firsttouchgames/fts15/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/firsttouchgames/fts15/GLSurfaceView;Z)V
    .locals 9
    .param p2, "withDepthBuffer"    # Z

    .prologue
    const/4 v8, 0x5

    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 940
    iput-object p1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$SimpleEGLConfigChooser;->this$0:Lcom/firsttouchgames/fts15/GLSurfaceView;

    .line 941
    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    if-eqz p2, :cond_1

    const/16 v7, 0x8

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/firsttouchgames/fts15/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/firsttouchgames/fts15/GLSurfaceView;IIIIII)V

    .line 944
    iput v8, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$SimpleEGLConfigChooser;->mRedSize:I

    .line 945
    const/4 v0, 0x6

    iput v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$SimpleEGLConfigChooser;->mGreenSize:I

    .line 946
    iput v8, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$SimpleEGLConfigChooser;->mBlueSize:I

    .line 947
    return-void

    :cond_0
    move v6, v5

    .line 941
    goto :goto_0

    :cond_1
    move v7, v5

    goto :goto_1
.end method
