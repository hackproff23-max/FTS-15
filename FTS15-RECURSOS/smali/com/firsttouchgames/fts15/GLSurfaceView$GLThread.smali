.class Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/fts15/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mHasFocus:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/firsttouchgames/fts15/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/firsttouchgames/fts15/GLSurfaceView;Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;)V
    .locals 3
    .param p2, "renderer"    # Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1123
    iput-object p1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->this$0:Lcom/firsttouchgames/fts15/GLSurfaceView;

    .line 1124
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1125
    iput v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mWidth:I

    .line 1126
    iput v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHeight:I

    .line 1127
    iput-boolean v2, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1128
    iput v2, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1129
    iput-object p2, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRenderer:Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;

    .line 1130
    return-void
.end method

.method static synthetic access$1002(Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;
    .param p1, "x1"    # Z

    .prologue
    .line 1122
    iput-boolean p1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1162
    new-instance v9, Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;

    iget-object v10, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->this$0:Lcom/firsttouchgames/fts15/GLSurfaceView;

    invoke-direct {v9, v10}, Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;-><init>(Lcom/firsttouchgames/fts15/GLSurfaceView;)V

    iput-object v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mEglHelper:Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;

    .line 1163
    iput-boolean v11, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1164
    iput-boolean v11, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1166
    const/4 v4, 0x0

    .line 1167
    .local v4, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v1, 0x0

    .line 1168
    .local v1, "createEglSurface":Z
    const/4 v6, 0x0

    .line 1169
    .local v6, "sizeChanged":Z
    const/4 v8, 0x0

    .line 1170
    .local v8, "wantRenderNotification":Z
    const/4 v2, 0x0

    .line 1171
    .local v2, "doRenderNotification":Z
    const/4 v7, 0x0

    .line 1172
    .local v7, "w":I
    const/4 v5, 0x0

    .line 1173
    .local v5, "h":I
    const/4 v3, 0x0

    .line 1176
    .local v3, "event":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1178
    :goto_1
    :try_start_1
    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v9, :cond_1

    .line 1179
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1327
    iput-object v13, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 1331
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v10

    monitor-enter v10

    .line 1332
    :try_start_2
    invoke-direct {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1333
    iget-object v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mEglHelper:Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;

    invoke-virtual {v9}, Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;->finish()V

    .line 1334
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 1182
    :cond_1
    :try_start_3
    iget-object v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1183
    iget-object v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Runnable;

    move-object v3, v0

    .line 1279
    :goto_2
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1281
    if-eqz v3, :cond_e

    .line 1282
    :try_start_4
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1283
    const/4 v3, 0x0

    .line 1284
    goto :goto_0

    .line 1188
    :cond_2
    :try_start_5
    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v9, :cond_3

    .line 1192
    invoke-direct {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1196
    :cond_3
    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v9, :cond_5

    .line 1200
    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v9, :cond_4

    .line 1201
    invoke-direct {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1203
    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1204
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1208
    :cond_5
    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v9, :cond_6

    .line 1212
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1213
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1216
    :cond_6
    if-eqz v2, :cond_7

    .line 1217
    const/4 v8, 0x0

    .line 1218
    const/4 v2, 0x0

    .line 1219
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1220
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1224
    :cond_7
    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v9, :cond_d

    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v9, :cond_d

    iget v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mWidth:I

    if-lez v9, :cond_d

    iget v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHeight:I

    if-lez v9, :cond_d

    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v9, :cond_8

    iget v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v9, v12, :cond_d

    .line 1228
    :cond_8
    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v9, :cond_9

    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v9, :cond_9

    .line 1230
    iget-object v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mEglHelper:Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;

    invoke-virtual {v9}, Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;->verifyContext()Z

    move-result v9

    if-nez v9, :cond_9

    .line 1231
    iget-object v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mEglHelper:Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;

    invoke-virtual {v9}, Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;->finish()V

    .line 1232
    iget-object v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRenderer:Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;

    invoke-interface {v9}, Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;->onSurfaceLost()V

    .line 1233
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1237
    :cond_9
    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v9, :cond_a

    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->tryAcquireEglSurfaceLocked(Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1238
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1239
    iget-object v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mEglHelper:Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;

    invoke-virtual {v9}, Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;->start()V

    .line 1241
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1244
    :cond_a
    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v9, :cond_b

    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v9, :cond_b

    .line 1245
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1246
    const/4 v1, 0x1

    .line 1247
    const/4 v6, 0x1

    .line 1250
    :cond_b
    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v9, :cond_d

    .line 1251
    iget-object v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->this$0:Lcom/firsttouchgames/fts15/GLSurfaceView;

    invoke-static {v9}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$900(Lcom/firsttouchgames/fts15/GLSurfaceView;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1252
    const/4 v6, 0x1

    .line 1253
    iget v7, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mWidth:I

    .line 1254
    iget v5, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHeight:I

    .line 1255
    const/4 v8, 0x1

    .line 1264
    iget-object v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->this$0:Lcom/firsttouchgames/fts15/GLSurfaceView;

    const/4 v11, 0x0

    invoke-static {v9, v11}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$902(Lcom/firsttouchgames/fts15/GLSurfaceView;Z)Z

    .line 1268
    :goto_3
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 1279
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1327
    :catchall_2
    move-exception v9

    iput-object v13, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 1331
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v10

    monitor-enter v10

    .line 1332
    :try_start_7
    invoke-direct {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1333
    iget-object v11, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mEglHelper:Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;

    invoke-virtual {v11}, Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;->finish()V

    .line 1334
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v9

    .line 1266
    :cond_c
    const/4 v9, 0x0

    :try_start_8
    iput-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_3

    .line 1277
    :cond_d
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 1287
    :cond_e
    :try_start_9
    iget-boolean v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHasFocus:Z

    if-eqz v9, :cond_11

    .line 1288
    if-eqz v1, :cond_f

    .line 1289
    iget-object v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mEglHelper:Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;

    iget-object v10, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->this$0:Lcom/firsttouchgames/fts15/GLSurfaceView;

    invoke-virtual {v10}, Lcom/firsttouchgames/fts15/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v4, v0

    .line 1290
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1294
    iput-object v4, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 1295
    iget-object v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRenderer:Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;

    iget-object v10, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mEglHelper:Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;

    iget-object v10, v10, Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v9, v4, v10}, Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1296
    const/4 v1, 0x0

    .line 1300
    :cond_f
    if-eqz v6, :cond_10

    .line 1304
    iget-object v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRenderer:Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;

    invoke-interface {v9, v4, v7, v5}, Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1305
    const/4 v6, 0x0

    .line 1313
    :cond_10
    iget-object v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRenderer:Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;

    invoke-interface {v9, v4}, Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1314
    iget-object v9, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mEglHelper:Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;

    invoke-virtual {v9}, Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;->swap()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v9

    if-nez v9, :cond_11

    .line 1321
    :cond_11
    if-eqz v8, :cond_0

    .line 1322
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1334
    :catchall_3
    move-exception v9

    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v9
.end method

.method private stopEglLocked()V
    .locals 1

    .prologue
    .line 1154
    iget-boolean v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1156
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mEglHelper:Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1157
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->releaseEglSurfaceLocked(Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;)V

    .line 1159
    :cond_0
    return-void
.end method


# virtual methods
.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1349
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1350
    :try_start_0
    iget v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1389
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1390
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mPaused:Z

    .line 1391
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1392
    monitor-exit v1

    .line 1393
    return-void

    .line 1392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1396
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1397
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mPaused:Z

    .line 1398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1399
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1400
    monitor-exit v1

    .line 1401
    return-void

    .line 1400
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1455
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1456
    :try_start_0
    iput-boolean p1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHasFocus:Z

    .line 1457
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1458
    monitor-exit v1

    .line 1463
    return-void

    .line 1458
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowResize(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1404
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1405
    :try_start_0
    iput p1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mWidth:I

    .line 1406
    iput p2, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHeight:I

    .line 1407
    iget-object v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->this$0:Lcom/firsttouchgames/fts15/GLSurfaceView;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$902(Lcom/firsttouchgames/fts15/GLSurfaceView;Z)Z

    .line 1408
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1409
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1410
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1413
    :goto_0
    iget-boolean v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1418
    :try_start_1
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1419
    :catch_0
    move-exception v0

    .line 1420
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1423
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1424
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1486
    if-nez p1, :cond_0

    .line 1487
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1489
    :cond_0
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1490
    :try_start_0
    iget-object v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1492
    monitor-exit v1

    .line 1493
    return-void

    .line 1492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1468
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1469
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1470
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1471
    :goto_0
    iget-boolean v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1473
    :try_start_1
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1474
    :catch_0
    move-exception v0

    .line 1475
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1478
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1479
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1355
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1356
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1357
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1358
    monitor-exit v1

    .line 1359
    return-void

    .line 1358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1141
    :try_start_0
    invoke-direct {p0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;)V

    .line 1147
    :goto_0
    return-void

    .line 1142
    :catch_0
    move-exception v0

    .line 1145
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1339
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1342
    :cond_1
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1343
    :try_start_0
    iput p1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1344
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1345
    monitor-exit v1

    .line 1346
    return-void

    .line 1345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 2

    .prologue
    .line 1362
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1366
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1367
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1368
    monitor-exit v1

    .line 1369
    return-void

    .line 1368
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1372
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1376
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1377
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1378
    :goto_0
    iget-boolean v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/firsttouchgames/fts15/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1380
    :try_start_1
    invoke-static {}, Lcom/firsttouchgames/fts15/GLSurfaceView;->access$800()Lcom/firsttouchgames/fts15/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1381
    :catch_0
    move-exception v0

    .line 1382
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1385
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1386
    return-void
.end method
