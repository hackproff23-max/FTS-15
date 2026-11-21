.class Lcom/facebook/AccessTokenManager$TokenRefreshRequest;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TokenRefreshRequest"
.end annotation


# instance fields
.field final messageReceiver:Landroid/os/Messenger;

.field messageSender:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/facebook/AccessTokenManager;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken;)V
    .locals 2
    .param p2, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    .line 164
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/facebook/AccessTokenManager$TokenRefreshRequestHandler;

    invoke-direct {v1, p2, p0}, Lcom/facebook/AccessTokenManager$TokenRefreshRequestHandler;-><init>(Lcom/facebook/AccessToken;Lcom/facebook/AccessTokenManager$TokenRefreshRequest;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->messageReceiver:Landroid/os/Messenger;

    .line 166
    return-void
.end method

.method static synthetic access$200(Lcom/facebook/AccessTokenManager$TokenRefreshRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/AccessTokenManager$TokenRefreshRequest;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v0}, Lcom/facebook/AccessTokenManager;->access$100(Lcom/facebook/AccessTokenManager;)Lcom/facebook/AccessTokenManager$TokenRefreshRequest;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->this$0:Lcom/facebook/AccessTokenManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/AccessTokenManager;->access$102(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessTokenManager$TokenRefreshRequest;)Lcom/facebook/AccessTokenManager$TokenRefreshRequest;

    .line 200
    :cond_0
    return-void
.end method

.method private refreshToken()V
    .locals 5

    .prologue
    .line 203
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 204
    .local v2, "requestData":Landroid/os/Bundle;
    const-string v3, "access_token"

    iget-object v4, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-virtual {v4}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 207
    .local v1, "request":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 208
    iget-object v3, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->messageReceiver:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 211
    :try_start_0
    iget-object v3, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->cleanup()V

    goto :goto_0
.end method


# virtual methods
.method public bind()V
    .locals 4

    .prologue
    .line 169
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->createTokenRefreshIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->this$0:Lcom/facebook/AccessTokenManager;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v3}, Lcom/facebook/AccessTokenManager;->access$002(Lcom/facebook/AccessTokenManager;Ljava/util/Date;)Ljava/util/Date;

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->cleanup()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 180
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    .line 181
    invoke-direct {p0}, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->refreshToken()V

    .line 182
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "arg"    # Landroid/content/ComponentName;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/facebook/AccessTokenManager$TokenRefreshRequest;->cleanup()V

    .line 190
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    goto :goto_0
.end method
