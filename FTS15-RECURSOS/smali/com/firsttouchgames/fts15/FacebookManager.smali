.class public Lcom/firsttouchgames/fts15/FacebookManager;
.super Ljava/lang/Object;
.source "FacebookManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FacebookManager"

.field private static mActivity:Lcom/firsttouchgames/fts15/MainActivity;

.field private static mFriendIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mFriendNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mFriendPictureURLs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_callbackManager:Lcom/facebook/CallbackManager;

.field private static mbInviteCancelled:Z

.field private static mbInviteSending:Z

.field private static mbInviteSuccess:Z

.field private static mbLoggingIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    sput-object v1, Lcom/firsttouchgames/fts15/FacebookManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    .line 54
    sput-object v1, Lcom/firsttouchgames/fts15/FacebookManager;->mFriendIDs:Ljava/util/List;

    .line 55
    sput-object v1, Lcom/firsttouchgames/fts15/FacebookManager;->mFriendNames:Ljava/util/List;

    .line 56
    sput-object v1, Lcom/firsttouchgames/fts15/FacebookManager;->mFriendPictureURLs:Ljava/util/List;

    .line 58
    sput-boolean v0, Lcom/firsttouchgames/fts15/FacebookManager;->mbInviteSending:Z

    .line 59
    sput-boolean v0, Lcom/firsttouchgames/fts15/FacebookManager;->mbInviteSuccess:Z

    .line 60
    sput-boolean v0, Lcom/firsttouchgames/fts15/FacebookManager;->mbInviteCancelled:Z

    .line 62
    sput-boolean v0, Lcom/firsttouchgames/fts15/FacebookManager;->mbLoggingIn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddLikeButton(Ljava/lang/String;ZII)V
    .locals 3
    .param p0, "sObjectID"    # Ljava/lang/String;
    .param p1, "bPage"    # Z
    .param p2, "iXPos"    # I
    .param p3, "iYPos"    # I

    .prologue
    .line 262
    sget-object v0, Lcom/firsttouchgames/fts15/FacebookManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/firsttouchgames/fts15/FacebookManager$4;

    invoke-direct {v2}, Lcom/firsttouchgames/fts15/FacebookManager$4;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/fts15/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public static GetFacebookID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    .line 245
    .local v0, "profile":Lcom/facebook/Profile;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v1

    .line 248
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static GetFacebookName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    .line 254
    .local v0, "profile":Lcom/facebook/Profile;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    .line 257
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static GetKeyHash()Ljava/lang/String;
    .locals 10

    .prologue
    .line 151
    :try_start_0
    sget-object v7, Lcom/firsttouchgames/fts15/FacebookManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v7}, Lcom/firsttouchgames/fts15/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.firsttouchgames.fts15"

    const/16 v9, 0x40

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 154
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 156
    .local v5, "signature":Landroid/content/pm/Signature;
    const-string v7, "SHA"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 157
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 158
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 169
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "signature":Landroid/content/pm/Signature;
    :goto_0
    return-object v6

    .line 165
    :catch_0
    move-exception v7

    .line 169
    :cond_0
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 163
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public static Init(Lcom/firsttouchgames/fts15/MainActivity;)V
    .locals 1
    .param p0, "activity"    # Lcom/firsttouchgames/fts15/MainActivity;

    .prologue
    .line 70
    sput-object p0, Lcom/firsttouchgames/fts15/FacebookManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    .line 71
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/fts15/FacebookManager;->m_callbackManager:Lcom/facebook/CallbackManager;

    .line 74
    invoke-static {}, Lcom/firsttouchgames/fts15/FacebookManager;->GetKeyHash()Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static LoggedIn()Z
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static LoggedOrLoggingIn()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/firsttouchgames/fts15/FacebookManager;->mbLoggingIn:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/firsttouchgames/fts15/FacebookManager;->LoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Login(Z)V
    .locals 3
    .param p0, "bInSafeMode"    # Z

    .prologue
    .line 93
    sget-boolean v0, Lcom/firsttouchgames/fts15/FacebookManager;->mbLoggingIn:Z

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/firsttouchgames/fts15/FacebookManager;->mbLoggingIn:Z

    .line 98
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    sget-object v1, Lcom/firsttouchgames/fts15/FacebookManager;->m_callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/firsttouchgames/fts15/FacebookManager$1;

    invoke-direct {v2}, Lcom/firsttouchgames/fts15/FacebookManager$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 126
    sget-object v0, Lcom/firsttouchgames/fts15/FacebookManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/firsttouchgames/fts15/FacebookManager$2;

    invoke-direct {v2}, Lcom/firsttouchgames/fts15/FacebookManager$2;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/fts15/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static Logout()V
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/firsttouchgames/fts15/FacebookManager;->LoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 139
    :cond_0
    return-void
.end method

.method public static OnActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 174
    invoke-static {}, Lcom/firsttouchgames/fts15/FacebookManager;->LoggedOrLoggingIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/firsttouchgames/fts15/FacebookManager;->m_callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 178
    :cond_0
    return-void
.end method

.method public static Post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "sMessage"    # Ljava/lang/String;
    .param p1, "sImageURL"    # Ljava/lang/String;
    .param p2, "sURL"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {}, Lcom/firsttouchgames/fts15/FacebookManager;->LoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/firsttouchgames/fts15/FacebookManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/firsttouchgames/fts15/FacebookManager$3;

    invoke-direct {v2, p0, p2}, Lcom/firsttouchgames/fts15/FacebookManager$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/fts15/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 240
    :cond_0
    return-void
.end method

.method public static RemoveLikeButton()V
    .locals 3

    .prologue
    .line 278
    sget-object v0, Lcom/firsttouchgames/fts15/FacebookManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/firsttouchgames/fts15/FacebookManager$5;

    invoke-direct {v2}, Lcom/firsttouchgames/fts15/FacebookManager$5;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/fts15/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method public static Shutdown()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 48
    sput-boolean p0, Lcom/firsttouchgames/fts15/FacebookManager;->mbLoggingIn:Z

    return p0
.end method

.method static synthetic access$100()Lcom/firsttouchgames/fts15/MainActivity;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/firsttouchgames/fts15/FacebookManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    return-object v0
.end method

.method static synthetic access$200()Lcom/facebook/CallbackManager;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/firsttouchgames/fts15/FacebookManager;->m_callbackManager:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method private static isSubsetOf(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "subset":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p1, "superset":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    .local v1, "string":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    const/4 v2, 0x0

    .line 189
    .end local v1    # "string":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 195
    return-void
.end method
