.class final Lcom/firsttouchgames/fts15/PushNotifications$1;
.super Landroid/os/AsyncTask;
.source "PushNotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firsttouchgames/fts15/PushNotifications;->Register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    .line 61
    :try_start_0
    invoke-static {}, Lcom/firsttouchgames/fts15/PushNotifications;->access$000()Lcom/firsttouchgames/fts15/MainActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/firsttouchgames/fts15/PushNotifications;->access$100()Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const v8, 0x7f05004d

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "token":Ljava/lang/String;
    const-string v5, "registrationId"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/firsttouchgames/fts15/PushNotifications;->access$000()Lcom/firsttouchgames/fts15/MainActivity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/firsttouchgames/fts15/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 66
    .local v3, "sharedPref":Landroid/content/SharedPreferences;
    const v5, 0x7f05004e

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 69
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const v5, 0x7f05004e

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v4    # "token":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 73
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "Registration Error"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
