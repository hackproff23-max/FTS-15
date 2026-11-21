.class public Lcom/firsttouchgames/fts15/ChartboostManager;
.super Ljava/lang/Object;
.source "ChartboostManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "Chartboost"

.field private static chartBoostDelegate:Lcom/chartboost/sdk/ChartboostDelegate;

.field private static mActivity:Lcom/firsttouchgames/fts15/MainActivity;

.field private static mbIsAvailable:Z

.field private static mbIsDisplayed:Z

.field private static mbIsInitialised:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/firsttouchgames/fts15/ChartboostManager$1;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/ChartboostManager$1;-><init>()V

    sput-object v0, Lcom/firsttouchgames/fts15/ChartboostManager;->chartBoostDelegate:Lcom/chartboost/sdk/ChartboostDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CacheInterstitial()V
    .locals 1

    .prologue
    .line 172
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public static IsAvailable()Z
    .locals 1

    .prologue
    .line 227
    sget-boolean v0, Lcom/firsttouchgames/fts15/ChartboostManager;->mbIsAvailable:Z

    return v0
.end method

.method public static IsDisplayed()Z
    .locals 1

    .prologue
    .line 222
    sget-boolean v0, Lcom/firsttouchgames/fts15/ChartboostManager;->mbIsDisplayed:Z

    return v0
.end method

.method public static IsInitialised()Z
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lcom/firsttouchgames/fts15/ChartboostManager;->mbIsInitialised:Z

    return v0
.end method

.method public static OnCreate(Lcom/firsttouchgames/fts15/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Lcom/firsttouchgames/fts15/MainActivity;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 149
    sput-object p0, Lcom/firsttouchgames/fts15/ChartboostManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    .line 152
    sget-object v1, Lcom/firsttouchgames/fts15/ChartboostManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-static {v1, p1, p2}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v1, Lcom/firsttouchgames/fts15/ChartboostManager;->chartBoostDelegate:Lcom/chartboost/sdk/ChartboostDelegate;

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 154
    sget-object v1, Lcom/firsttouchgames/fts15/ChartboostManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 156
    sput-boolean v2, Lcom/firsttouchgames/fts15/ChartboostManager;->mbIsDisplayed:Z

    .line 157
    sput-boolean v2, Lcom/firsttouchgames/fts15/ChartboostManager;->mbIsAvailable:Z

    .line 158
    const/4 v1, 0x1

    sput-boolean v1, Lcom/firsttouchgames/fts15/ChartboostManager;->mbIsInitialised:Z

    .line 161
    sget-object v1, Lcom/firsttouchgames/fts15/ChartboostManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v1}, Lcom/firsttouchgames/fts15/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "android_id":Ljava/lang/String;
    const-string v1, "Chartboost"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method public static ShowInterstitial()Z
    .locals 1

    .prologue
    .line 177
    sget-boolean v0, Lcom/firsttouchgames/fts15/ChartboostManager;->mbIsAvailable:Z

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "Default"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    .line 184
    :cond_0
    invoke-static {}, Lcom/firsttouchgames/fts15/ChartboostManager;->CacheInterstitial()V

    .line 186
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 10
    sput-boolean p0, Lcom/firsttouchgames/fts15/ChartboostManager;->mbIsAvailable:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 10
    sput-boolean p0, Lcom/firsttouchgames/fts15/ChartboostManager;->mbIsDisplayed:Z

    return p0
.end method

.method public static onBackPressed()Z
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/firsttouchgames/fts15/ChartboostManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onDestroy(Landroid/app/Activity;)V

    .line 212
    const/4 v0, 0x0

    sput-boolean v0, Lcom/firsttouchgames/fts15/ChartboostManager;->mbIsInitialised:Z

    .line 213
    return-void
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/firsttouchgames/fts15/ChartboostManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onPause(Landroid/app/Activity;)V

    .line 202
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/firsttouchgames/fts15/ChartboostManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V

    .line 197
    return-void
.end method

.method public static onStart()V
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/firsttouchgames/fts15/ChartboostManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 192
    return-void
.end method

.method public static onStop()V
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/firsttouchgames/fts15/ChartboostManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onStop(Landroid/app/Activity;)V

    .line 207
    return-void
.end method
