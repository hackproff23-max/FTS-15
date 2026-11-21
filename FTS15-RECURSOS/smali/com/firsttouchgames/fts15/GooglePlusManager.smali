.class public Lcom/firsttouchgames/fts15/GooglePlusManager;
.super Ljava/lang/Object;
.source "GooglePlusManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final RC_SIGN_IN:I = 0x0

.field private static final REQUEST_ACHIEVEMENTS:I = 0x3e9

.field private static final REQUEST_ALL_LEADERBOARDS:I = 0x3eb

.field private static final REQUEST_LEADERBOARD:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "GooglePlusManager"

.field private static mActivity:Lcom/firsttouchgames/fts15/MainActivity;

.field private static mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

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

.field private static mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private static mScores:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

.field private static m_bIntentInProgress:Z

.field private static m_bSignInClicked:Z

.field private static m_strLeaderboardIDs:[Ljava/lang/String;

.field private static mbDisplayAchievements:Z

.field private static mbInSafeMode:Z

.field private static mbLeaderboardPublic:Z

.field private static miDisplayLeaderboards:I

.field private static miLeaderboardForScores:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 51
    sput-boolean v3, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_bIntentInProgress:Z

    .line 52
    sput-boolean v3, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_bSignInClicked:Z

    .line 54
    sput-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendIDs:Ljava/util/List;

    .line 55
    sput-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendNames:Ljava/util/List;

    .line 56
    sput-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendPictureURLs:Ljava/util/List;

    .line 62
    sput-boolean v3, Lcom/firsttouchgames/fts15/GooglePlusManager;->mbInSafeMode:Z

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CgkIlvr757MREAIQAQ"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "CgkIlvr757MREAIQAg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CgkIlvr757MREAIQAw"

    aput-object v2, v0, v1

    sput-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_strLeaderboardIDs:[Ljava/lang/String;

    .line 71
    sput-boolean v3, Lcom/firsttouchgames/fts15/GooglePlusManager;->mbDisplayAchievements:Z

    .line 72
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_strLeaderboardIDs:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->miDisplayLeaderboards:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetNumberOfFriends()I
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendIDs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 325
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public static LoggedIn()Z
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public static Login()V
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x1

    sput-boolean v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_bSignInClicked:Z

    .line 256
    invoke-static {}, Lcom/firsttouchgames/fts15/GooglePlusManager;->resolveSignInError()V

    .line 258
    :cond_0
    return-void
.end method

.method public static Logout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    sget-object v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 266
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    sget-object v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 267
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    sget-object v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->revokeAccessAndDisconnect(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/firsttouchgames/fts15/GooglePlusManager$2;

    invoke-direct {v1}, Lcom/firsttouchgames/fts15/GooglePlusManager$2;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 277
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 278
    sput-object v2, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendIDs:Ljava/util/List;

    .line 279
    sput-object v2, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendNames:Ljava/util/List;

    .line 280
    sput-object v2, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendPictureURLs:Ljava/util/List;

    .line 282
    :cond_0
    return-void
.end method

.method public static Post(Ljava/lang/String;)V
    .locals 3
    .param p0, "sText"    # Ljava/lang/String;

    .prologue
    .line 305
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/firsttouchgames/fts15/GooglePlusManager$3;

    invoke-direct {v2, p0}, Lcom/firsttouchgames/fts15/GooglePlusManager$3;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/fts15/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method

.method public static ShowAchievements()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 340
    sget-object v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    sget-object v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    sget-object v2, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v3, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v1, v2, v3}, Lcom/firsttouchgames/fts15/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 351
    :goto_0
    return v0

    .line 347
    :cond_0
    sput-boolean v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mbDisplayAchievements:Z

    .line 348
    invoke-static {}, Lcom/firsttouchgames/fts15/GooglePlusManager;->Login()V

    .line 351
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ShowLeaderboards(I)Z
    .locals 4
    .param p0, "iTable"    # I

    .prologue
    .line 362
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    if-ltz p0, :cond_0

    .line 365
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v2, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v3, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_strLeaderboardIDs:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Lcom/firsttouchgames/fts15/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 369
    :goto_0
    const/4 v0, 0x1

    .line 377
    :goto_1
    return v0

    .line 367
    :cond_0
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v2, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getAllLeaderboardsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-virtual {v0, v1, v2}, Lcom/firsttouchgames/fts15/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 373
    :cond_1
    sput p0, Lcom/firsttouchgames/fts15/GooglePlusManager;->miDisplayLeaderboards:I

    .line 374
    invoke-static {}, Lcom/firsttouchgames/fts15/GooglePlusManager;->Login()V

    .line 377
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static SubmitScore(II)V
    .locals 6
    .param p0, "iTable"    # I
    .param p1, "iScore"    # I

    .prologue
    .line 356
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v2, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_strLeaderboardIDs:[Ljava/lang/String;

    aget-object v2, v2, p0

    int-to-long v4, p1

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V

    .line 358
    :cond_0
    return-void
.end method

.method public static UnlockAchievement(Ljava/lang/String;)V
    .locals 2
    .param p0, "sAchievementID"    # Ljava/lang/String;

    .prologue
    .line 331
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 336
    :cond_0
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 36
    sput-boolean p0, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_bIntentInProgress:Z

    return p0
.end method

.method static synthetic access$100()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic access$200()Lcom/firsttouchgames/fts15/MainActivity;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public static onStart()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 89
    return-void
.end method

.method public static onStop()V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 95
    :cond_0
    return-void
.end method

.method private static resolveSignInError()V
    .locals 3

    .prologue
    .line 128
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/firsttouchgames/fts15/GooglePlusManager$1;

    invoke-direct {v2}, Lcom/firsttouchgames/fts15/GooglePlusManager$1;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/fts15/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public Init(Lcom/firsttouchgames/fts15/MainActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/firsttouchgames/fts15/MainActivity;

    .prologue
    .line 76
    sput-object p1, Lcom/firsttouchgames/fts15/GooglePlusManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    .line 78
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 84
    return-void
.end method

.method public OnActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 291
    if-nez p1, :cond_1

    .line 293
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 294
    sput-boolean v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_bSignInClicked:Z

    .line 296
    :cond_0
    sput-boolean v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_bIntentInProgress:Z

    .line 298
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 301
    :cond_1
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 100
    const-string v0, "GooglePlusManager"

    const-string v1, "Connected to Google Play Services"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-boolean v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_bSignInClicked:Z

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    const-string v1, "Google Sign-in Complete"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    sput-boolean v3, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_bSignInClicked:Z

    .line 108
    :cond_0
    sget-object v0, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    sget-object v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/gms/plus/People;->loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 112
    invoke-static {}, Lcom/firsttouchgames/fts15/JNI;->areConnectedToGoogle()V

    .line 114
    sget-boolean v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mbDisplayAchievements:Z

    if-eqz v0, :cond_2

    .line 116
    invoke-static {}, Lcom/firsttouchgames/fts15/GooglePlusManager;->ShowAchievements()Z

    .line 117
    sput-boolean v3, Lcom/firsttouchgames/fts15/GooglePlusManager;->mbDisplayAchievements:Z

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    sget v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->miDisplayLeaderboards:I

    sget-object v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_strLeaderboardIDs:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 121
    sget v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->miDisplayLeaderboards:I

    invoke-static {v0}, Lcom/firsttouchgames/fts15/GooglePlusManager;->ShowLeaderboards(I)Z

    .line 122
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_strLeaderboardIDs:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->miDisplayLeaderboards:I

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 154
    const-string v1, "GooglePlusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect to Google Plus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "bResolve":Z
    sget-boolean v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_bIntentInProgress:Z

    if-nez v1, :cond_0

    .line 161
    sput-object p1, Lcom/firsttouchgames/fts15/GooglePlusManager;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 163
    sget-boolean v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_bSignInClicked:Z

    if-eqz v1, :cond_0

    .line 167
    invoke-static {}, Lcom/firsttouchgames/fts15/GooglePlusManager;->resolveSignInError()V

    .line 168
    const/4 v0, 0x1

    .line 172
    :cond_0
    if-nez v0, :cond_1

    .line 174
    const/4 v1, 0x0

    sput-boolean v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->mbDisplayAchievements:Z

    .line 175
    sget-object v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->m_strLeaderboardIDs:[Ljava/lang/String;

    array-length v1, v1

    sput v1, Lcom/firsttouchgames/fts15/GooglePlusManager;->miDisplayLeaderboards:I

    .line 177
    :cond_1
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1
    .param p1, "cause"    # I

    .prologue
    .line 182
    sget-object v0, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 183
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 36
    check-cast p1, Lcom/google/android/gms/plus/People$LoadPeopleResult;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/firsttouchgames/fts15/GooglePlusManager;->onResult(Lcom/google/android/gms/plus/People$LoadPeopleResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/plus/People$LoadPeopleResult;)V
    .locals 9
    .param p1, "peopleData"    # Lcom/google/android/gms/plus/People$LoadPeopleResult;

    .prologue
    .line 188
    invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v6

    if-nez v6, :cond_9

    .line 190
    sget-object v6, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendIDs:Ljava/util/List;

    if-nez v6, :cond_0

    .line 191
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendIDs:Ljava/util/List;

    .line 193
    :cond_0
    sget-object v6, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendNames:Ljava/util/List;

    if-nez v6, :cond_1

    .line 194
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendNames:Ljava/util/List;

    .line 196
    :cond_1
    sget-object v6, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendPictureURLs:Ljava/util/List;

    if-nez v6, :cond_2

    .line 197
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendPictureURLs:Ljava/util/List;

    .line 199
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getPersonBuffer()Lcom/google/android/gms/plus/model/people/PersonBuffer;

    move-result-object v4

    .line 203
    .local v4, "personBuffer":Lcom/google/android/gms/plus/model/people/PersonBuffer;
    :try_start_0
    sget-object v6, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendIDs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 204
    .local v1, "iNextPosition":I
    invoke-virtual {v4}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->getCount()I

    move-result v0

    .line 205
    .local v0, "iCount":I
    const/4 v2, 0x0

    .local v2, "iPerson":I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 207
    invoke-virtual {v4, v2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v3

    .line 208
    .local v3, "person":Lcom/google/android/gms/plus/model/people/Person;
    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person;->getObjectType()I

    move-result v6

    if-nez v6, :cond_6

    .line 211
    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person;->hasId()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 213
    const-string v6, "GooglePlusManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v6, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendIDs:Ljava/util/List;

    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 218
    :cond_3
    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person;->hasDisplayName()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 220
    const-string v6, "GooglePlusManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v6, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendNames:Ljava/util/List;

    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 225
    :cond_4
    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person$Image;->hasUrl()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 227
    const-string v6, "GooglePlusManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/plus/model/people/Person$Image;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v6, Lcom/firsttouchgames/fts15/GooglePlusManager;->mFriendPictureURLs:Ljava/util/List;

    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/plus/model/people/Person$Image;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 205
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 237
    .end local v3    # "person":Lcom/google/android/gms/plus/model/people/Person;
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    .line 240
    invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getNextPageToken()Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "sNextPageToken":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 243
    sget-object v6, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    sget-object v7, Lcom/firsttouchgames/fts15/GooglePlusManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8, v5}, Lcom/google/android/gms/plus/People;->loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v6

    invoke-interface {v6, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 249
    .end local v0    # "iCount":I
    .end local v1    # "iNextPosition":I
    .end local v2    # "iPerson":I
    .end local v4    # "personBuffer":Lcom/google/android/gms/plus/model/people/PersonBuffer;
    .end local v5    # "sNextPageToken":Ljava/lang/String;
    :cond_8
    :goto_1
    return-void

    .line 237
    .restart local v4    # "personBuffer":Lcom/google/android/gms/plus/model/people/PersonBuffer;
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    throw v6

    .line 248
    .end local v4    # "personBuffer":Lcom/google/android/gms/plus/model/people/PersonBuffer;
    :cond_9
    const-string v6, "GooglePlusManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error requesting visible circles: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
