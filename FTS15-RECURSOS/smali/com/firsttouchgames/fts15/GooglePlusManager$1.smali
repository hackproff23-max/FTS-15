.class final Lcom/firsttouchgames/fts15/GooglePlusManager$1;
.super Ljava/lang/Object;
.source "GooglePlusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firsttouchgames/fts15/GooglePlusManager;->resolveSignInError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 136
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/firsttouchgames/fts15/GooglePlusManager;->access$002(Z)Z

    .line 137
    invoke-static {}, Lcom/firsttouchgames/fts15/GooglePlusManager;->access$200()Lcom/firsttouchgames/fts15/MainActivity;

    move-result-object v0

    invoke-static {}, Lcom/firsttouchgames/fts15/GooglePlusManager;->access$100()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/firsttouchgames/fts15/MainActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v7

    .line 143
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    invoke-static {v8}, Lcom/firsttouchgames/fts15/GooglePlusManager;->access$002(Z)Z

    .line 144
    invoke-static {}, Lcom/firsttouchgames/fts15/GooglePlusManager;->access$300()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method
