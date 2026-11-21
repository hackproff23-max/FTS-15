.class public Lcom/firsttouchgames/fts15/JNI;
.super Ljava/lang/Object;
.source "JNI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AddTouch(FFI)V
.end method

.method public static native SafeModeResetCurrentSeason()V
.end method

.method public static native SafeModeResetCustomData()V
.end method

.method public static native SafeModeSoccerInit()V
.end method

.method public static native SafeModeSupportRestore(Ljava/lang/String;)V
.end method

.method public static native SetScreen(II)V
.end method

.method public static native SetScreenSize(F)V
.end method

.method public static native appDestroyed()V
.end method

.method public static native appPaused()V
.end method

.method public static native appResumed()V
.end method

.method public static native areConnectedToFacebook()V
.end method

.method public static native areConnectedToGoogle()V
.end method

.method public static native backButtonPressed()V
.end method

.method public static native getAssetManager(Landroid/content/res/AssetManager;)V
.end method

.method public static native getJNIEnv(Landroid/content/Context;)V
.end method

.method public static native rewardUser(I)V
.end method

.method public static native setDeviceModel(Ljava/lang/String;)V
.end method

.method public static native setExpansionPath(Ljava/lang/String;)V
.end method

.method public static native setExpansionProgress(I)V
.end method

.method public static native setExpansionRequired(Z)V
.end method

.method public static native setExternalFilesDir(Ljava/lang/String;)V
.end method

.method public static native step()V
.end method
