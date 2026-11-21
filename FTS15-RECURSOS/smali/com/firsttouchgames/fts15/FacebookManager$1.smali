.class final Lcom/firsttouchgames/fts15/FacebookManager$1;
.super Ljava/lang/Object;
.source "FacebookManager.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firsttouchgames/fts15/FacebookManager;->Login(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/firsttouchgames/fts15/FacebookManager;->access$002(Z)Z

    .line 116
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/firsttouchgames/fts15/FacebookManager;->access$002(Z)Z

    .line 122
    invoke-static {}, Lcom/firsttouchgames/fts15/FacebookManager;->access$100()Lcom/firsttouchgames/fts15/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to log into Facebook: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 3
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/firsttouchgames/fts15/FacebookManager;->access$002(Z)Z

    .line 105
    invoke-static {}, Lcom/firsttouchgames/fts15/JNI;->areConnectedToFacebook()V

    .line 106
    invoke-static {}, Lcom/firsttouchgames/fts15/FacebookManager;->access$100()Lcom/firsttouchgames/fts15/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Facebook Sign-in Complete"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    invoke-static {}, Lcom/firsttouchgames/fts15/FacebookManager;->LoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 110
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 99
    check-cast p1, Lcom/facebook/login/LoginResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/firsttouchgames/fts15/FacebookManager$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
