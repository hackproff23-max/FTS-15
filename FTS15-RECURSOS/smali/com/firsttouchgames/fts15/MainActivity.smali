.class public Lcom/firsttouchgames/fts15/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firsttouchgames/fts15/MainActivity$1;,
        Lcom/firsttouchgames/fts15/MainActivity$MyLicenseCheckerCallback;
    }
.end annotation


# static fields
.field private static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlyXuQblpTeRVqeKX/QstKd8cvWOWYE59iA1UypIM2Lt/Ofvg2Nv7xcyXgS0IJnByT/LM8OOhrTxZn9bdaZhxLL/ManPF98JQCjfAxN1EFePvAOqFj6Ib42iBwBf7SPp3yGQLJsS3CjcWfBaRvrY8QxVZ3IZFEMg79fnyuFn9AN3ZWVfMymeL9KceH1BDb30FGMYq1wmenmdyPpTZ8KOElsUEQlpVWTc8jbVtwHQhLrvFKdaEjADH2G8xylAmqWRpxzlCaSmWpM6tM5bepT6alWUZAguwdZMUA3CkxvZbAQUSL2igoaYckHvg9xGBXTIxWuIT0Ng3/sMuwiZiz3jkCwIDAQAB"

.field private static final LOG_TAG:Ljava/lang/String; = "FTGMainActivity"

.field private static final SALT:[B

.field static assetManager:Landroid/content/res/AssetManager;

.field private static iExpansionSize:I

.field private static iLastTouchCount:I

.field private static iVersionCode:I

.field static mGooglePlus:Lcom/firsttouchgames/fts15/GooglePlusManager;

.field static mThis:Lcom/firsttouchgames/fts15/MainActivity;

.field static mbEnterSafeMode:Z

.field static started:Z


# instance fields
.field mAdSupport:Lcom/firsttouchgames/fts15/AdSupport;

.field private mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field mParent:Landroid/widget/FrameLayout;

.field private mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

.field mView:Lcom/firsttouchgames/fts15/GLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 66
    const/16 v1, 0x3b

    sput v1, Lcom/firsttouchgames/fts15/MainActivity;->iVersionCode:I

    .line 67
    const v1, 0x6e43000

    sput v1, Lcom/firsttouchgames/fts15/MainActivity;->iExpansionSize:I

    .line 71
    sput v2, Lcom/firsttouchgames/fts15/MainActivity;->iLastTouchCount:I

    .line 75
    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/firsttouchgames/fts15/MainActivity;->SALT:[B

    .line 88
    sput-boolean v2, Lcom/firsttouchgames/fts15/MainActivity;->started:Z

    .line 89
    sput-boolean v2, Lcom/firsttouchgames/fts15/MainActivity;->mbEnterSafeMode:Z

    .line 958
    :try_start_0
    const-string v1, "FTS15"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 961
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 963
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NmgNativeActivity encountered IllegalArgumentException exception. \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    nop

    :array_0
    .array-data 1
        -0x2et
        0x41t
        0x1et
        -0x80t
        -0x67t
        -0x39t
        0x4at
        -0x40t
        0x33t
        0x58t
        -0x5ft
        -0x2dt
        0x4dt
        -0x75t
        -0x24t
        -0x71t
        -0xbt
        0x20t
        -0x40t
        0x59t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 984
    return-void
.end method

.method public static AllowCellularDownload()V
    .locals 2

    .prologue
    .line 166
    sget-object v0, Lcom/firsttouchgames/fts15/MainActivity;->mThis:Lcom/firsttouchgames/fts15/MainActivity;

    iget-object v0, v0, Lcom/firsttouchgames/fts15/MainActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->setDownloadFlags(I)V

    .line 167
    sget-object v0, Lcom/firsttouchgames/fts15/MainActivity;->mThis:Lcom/firsttouchgames/fts15/MainActivity;

    iget-object v0, v0, Lcom/firsttouchgames/fts15/MainActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    .line 168
    return-void
.end method

.method public static BeginDownload()V
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/firsttouchgames/fts15/MainActivity;->mThis:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/MainActivity;->downloaderStart()V

    .line 157
    return-void
.end method

.method public static CheckSpaceForDownload()Z
    .locals 8

    .prologue
    .line 180
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 181
    .local v2, "statFs":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long v0, v4, v6

    .line 182
    .local v0, "lFree":J
    const-string v3, "MEM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Free Memory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget v3, Lcom/firsttouchgames/fts15/MainActivity;->iExpansionSize:I

    div-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static ForceChartboostOnCreate()V
    .locals 3

    .prologue
    .line 507
    sget-object v0, Lcom/firsttouchgames/fts15/MainActivity;->mThis:Lcom/firsttouchgames/fts15/MainActivity;

    const-string v1, "53ec9e7589b0bb33dd25a106"

    const-string v2, "b542d3d9f60023a27f10e856ee80e622b833c3fe"

    invoke-static {v0, v1, v2}, Lcom/firsttouchgames/fts15/ChartboostManager;->OnCreate(Lcom/firsttouchgames/fts15/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public static GetPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 946
    sget-object v0, Lcom/firsttouchgames/fts15/MainActivity;->mThis:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ResumeDownload()V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/firsttouchgames/fts15/MainActivity;->mThis:Lcom/firsttouchgames/fts15/MainActivity;

    iget-object v0, v0, Lcom/firsttouchgames/fts15/MainActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    .line 162
    return-void
.end method

.method public static TerminateApp()V
    .locals 3

    .prologue
    .line 757
    sget-object v1, Lcom/firsttouchgames/fts15/MainActivity;->mThis:Lcom/firsttouchgames/fts15/MainActivity;

    iget-object v1, v1, Lcom/firsttouchgames/fts15/MainActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v1, :cond_0

    .line 759
    sget-object v1, Lcom/firsttouchgames/fts15/MainActivity;->mThis:Lcom/firsttouchgames/fts15/MainActivity;

    iget-object v1, v1, Lcom/firsttouchgames/fts15/MainActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    sget-object v2, Lcom/firsttouchgames/fts15/MainActivity;->mThis:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-interface {v1, v2}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 762
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 763
    .local v0, "pid":I
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 764
    return-void
.end method

.method public static TurnOnWifi()V
    .locals 3

    .prologue
    .line 172
    sget-object v1, Lcom/firsttouchgames/fts15/MainActivity;->mThis:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v1}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 173
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 175
    sget-object v1, Lcom/firsttouchgames/fts15/MainActivity;->mThis:Lcom/firsttouchgames/fts15/MainActivity;

    iget-object v1, v1, Lcom/firsttouchgames/fts15/MainActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    .line 176
    return-void
.end method

.method public static endTimedEvent(Ljava/lang/String;)V
    .locals 0
    .param p0, "sEvent"    # Ljava/lang/String;

    .prologue
    .line 1038
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->endTimedEvent(Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .param p0, "sEvent"    # Ljava/lang/String;
    .param p2, "bTimed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1033
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    .line 1034
    return-void
.end method

.method public static logEvent(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "sEvent"    # Ljava/lang/String;
    .param p1, "bTimed"    # Z

    .prologue
    .line 1028
    invoke-static {p0, p1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    .line 1029
    return-void
.end method

.method public static onEndSession()V
    .locals 1

    .prologue
    .line 1043
    sget-object v0, Lcom/firsttouchgames/fts15/MainActivity;->mThis:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 1044
    return-void
.end method


# virtual methods
.method public EmailAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "sSubject"    # Ljava/lang/String;
    .param p2, "sBody"    # Ljava/lang/String;
    .param p3, "sFileName"    # Ljava/lang/String;

    .prologue
    .line 768
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    .local v2, "emailIntent":Landroid/content/Intent;
    const-string v6, "image/png"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 775
    .local v0, "app":Landroid/app/Application;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 776
    .local v3, "externalDir":Ljava/io/File;
    if-nez v3, :cond_0

    .line 778
    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 782
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 783
    .local v4, "externalDirectory":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 785
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 787
    const-string v6, "android.intent.extra.STREAM"

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 791
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/firsttouchgames/fts15/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :cond_1
    :goto_0
    return-void

    .line 793
    :catch_0
    move-exception v1

    .line 795
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public OpenWebpage(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bChooser"    # Z

    .prologue
    .line 925
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 927
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 928
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 931
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 933
    if-eqz p2, :cond_1

    .line 935
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 936
    .local v1, "chooser":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 941
    .end local v1    # "chooser":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    invoke-virtual {p0, v2}, Lcom/firsttouchgames/fts15/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public downloaderStart()V
    .locals 9

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 116
    .local v4, "launchIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v3, "intentToLaunchThisActivityFromNotification":Landroid/content/Intent;
    const/high16 v7, 0x14000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 122
    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    .local v0, "category":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v0    # "category":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intentToLaunchThisActivityFromNotification":Landroid/content/Intent;
    .end local v4    # "launchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "FTGMainActivity"

    const-string v8, "Cannot find own package! MAYDAY!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 152
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    return-void

    .line 130
    .restart local v3    # "intentToLaunchThisActivityFromNotification":Landroid/content/Intent;
    .restart local v4    # "launchIntent":Landroid/content/Intent;
    :cond_1
    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    :try_start_1
    invoke-static {p0, v7, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 132
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    const-class v7, Lcom/firsttouchgames/fts15/ExpansionDownloaderService;

    invoke-static {p0, v5, v7}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .line 133
    .local v6, "startResult":I
    if-eqz v6, :cond_0

    .line 137
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    goto :goto_1
.end method

.method expansionFilesDelivered()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 422
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v4, Lcom/firsttouchgames/fts15/MainActivity;->iVersionCode:I

    if-ge v1, v4, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v1}, Lcom/firsttouchgames/util/APKExpansionSupport;->removeOldExpansionFile(Landroid/content/Context;II)V

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    :cond_0
    sget v4, Lcom/firsttouchgames/fts15/MainActivity;->iVersionCode:I

    invoke-static {p0, v3, v4}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "fileName":Ljava/lang/String;
    sget v4, Lcom/firsttouchgames/fts15/MainActivity;->iExpansionSize:I

    int-to-long v4, v4

    invoke-static {p0, v0, v4, v5, v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 431
    :goto_1
    return v2

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 279
    if-eqz p3, :cond_0

    invoke-static {p1, p2, p3}, Lcom/firsttouchgames/fts15/IAP;->HandleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 284
    invoke-static {p1, p2, p3}, Lcom/firsttouchgames/fts15/FacebookManager;->OnActivityResult(IILandroid/content/Intent;)V

    .line 285
    sget-object v0, Lcom/firsttouchgames/fts15/MainActivity;->mGooglePlus:Lcom/firsttouchgames/fts15/GooglePlusManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/firsttouchgames/fts15/GooglePlusManager;->OnActivityResult(IILandroid/content/Intent;)V

    .line 287
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 400
    invoke-static {}, Lcom/firsttouchgames/fts15/ChartboostManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-static {}, Lcom/firsttouchgames/fts15/JNI;->backButtonPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 542
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 543
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 439
    invoke-static {}, Lcom/firsttouchgames/fts15/DeviceManager;->GetCPUCores()I

    move-result v1

    .line 441
    .local v1, "iCores":I
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/firsttouchgames/fts15/Fix15;->onCreateHook(Landroid/app/Activity;)V

    .line 446
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 448
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v3, v5, v6

    .line 449
    .local v3, "scaleX":F
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iget v6, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v4, v5, v6

    .line 450
    .local v4, "scaleY":F
    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float v2, v5, v6

    .line 451
    .local v2, "scale":F
    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 452
    invoke-static {v2}, Lcom/firsttouchgames/fts15/JNI;->SetScreenSize(F)V

    .line 455
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/firsttouchgames/fts15/BootManager;->SetContext(Landroid/content/Context;)V

    .line 458
    invoke-static {}, Lcom/firsttouchgames/fts15/BootManager;->ShouldEnterSafeMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 460
    const/4 v5, 0x1

    sput-boolean v5, Lcom/firsttouchgames/fts15/MainActivity;->mbEnterSafeMode:Z

    .line 470
    :cond_0
    const-string v5, "Util"

    sput-object v5, Lcom/firsttouchgames/util/typeUtils;->LOG_TAG:Ljava/lang/String;

    .line 472
    const-class v5, Lcom/firsttouchgames/fts15/ExpansionDownloaderService;

    invoke-static {p0, v5}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v5

    iput-object v5, p0, Lcom/firsttouchgames/fts15/MainActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 474
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->expansionFilesDelivered()Z

    move-result v5

    if-nez v5, :cond_1

    .line 488
    :cond_1
    sput-object p0, Lcom/firsttouchgames/fts15/MainActivity;->mThis:Lcom/firsttouchgames/fts15/MainActivity;

    .line 489
    new-instance v5, Lcom/firsttouchgames/fts15/AdSupport;

    invoke-direct {v5}, Lcom/firsttouchgames/fts15/AdSupport;-><init>()V

    iput-object v5, p0, Lcom/firsttouchgames/fts15/MainActivity;->mAdSupport:Lcom/firsttouchgames/fts15/AdSupport;

    .line 490
    iget-object v5, p0, Lcom/firsttouchgames/fts15/MainActivity;->mAdSupport:Lcom/firsttouchgames/fts15/AdSupport;

    invoke-virtual {v5, p0}, Lcom/firsttouchgames/fts15/AdSupport;->OnCreate(Lcom/firsttouchgames/fts15/MainActivity;)V

    .line 492
    invoke-static {p0}, Lcom/firsttouchgames/fts15/KCStorage;->SetActivity(Landroid/app/Activity;)V

    .line 494
    invoke-static {p0}, Lcom/firsttouchgames/fts15/AppLovinManager;->Initialise(Lcom/firsttouchgames/fts15/MainActivity;)V

    .line 496
    invoke-static {p0}, Lcom/firsttouchgames/fts15/FacebookManager;->Init(Lcom/firsttouchgames/fts15/MainActivity;)V

    .line 498
    new-instance v5, Lcom/firsttouchgames/fts15/GooglePlusManager;

    invoke-direct {v5}, Lcom/firsttouchgames/fts15/GooglePlusManager;-><init>()V

    sput-object v5, Lcom/firsttouchgames/fts15/MainActivity;->mGooglePlus:Lcom/firsttouchgames/fts15/GooglePlusManager;

    .line 499
    sget-object v5, Lcom/firsttouchgames/fts15/MainActivity;->mGooglePlus:Lcom/firsttouchgames/fts15/GooglePlusManager;

    invoke-virtual {v5, p0}, Lcom/firsttouchgames/fts15/GooglePlusManager;->Init(Lcom/firsttouchgames/fts15/MainActivity;)V

    .line 501
    invoke-static {}, Lcom/firsttouchgames/fts15/MainActivity;->ForceChartboostOnCreate()V

    .line 503
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 615
    invoke-static {}, Lcom/firsttouchgames/fts15/JNI;->appDestroyed()V

    .line 618
    invoke-static {}, Lcom/firsttouchgames/fts15/ChartboostManager;->onDestroy()V

    .line 619
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->Destroy()V

    .line 621
    const/4 v0, 0x0

    sput-boolean v0, Lcom/firsttouchgames/fts15/MainActivity;->started:Z

    .line 623
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 627
    return-void
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 4
    .param p1, "progress"    # Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .prologue
    .line 107
    iget-wide v0, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Lcom/firsttouchgames/fts15/JNI;->setExpansionProgress(I)V

    .line 108
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    const/4 v2, -0x1

    .line 189
    packed-switch p1, :pswitch_data_0

    .line 262
    :pswitch_0
    invoke-static {v2}, Lcom/firsttouchgames/fts15/JNI;->setExpansionProgress(I)V

    .line 266
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 213
    :pswitch_2
    invoke-static {v2}, Lcom/firsttouchgames/fts15/JNI;->setExpansionProgress(I)V

    .line 216
    :pswitch_3
    invoke-static {v2}, Lcom/firsttouchgames/fts15/JNI;->setExpansionProgress(I)V

    goto :goto_0

    .line 221
    :pswitch_4
    const/4 v2, -0x2

    invoke-static {v2}, Lcom/firsttouchgames/fts15/JNI;->setExpansionProgress(I)V

    goto :goto_0

    .line 227
    :pswitch_5
    const/4 v2, -0x4

    invoke-static {v2}, Lcom/firsttouchgames/fts15/JNI;->setExpansionProgress(I)V

    goto :goto_0

    .line 238
    :pswitch_6
    const/4 v2, -0x3

    invoke-static {v2}, Lcom/firsttouchgames/fts15/JNI;->setExpansionProgress(I)V

    goto :goto_0

    .line 245
    :pswitch_7
    :try_start_0
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/firsttouchgames/fts15/MainActivity;->iVersionCode:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/firsttouchgames/util/APKExpansionSupport;->getAPKExpansionZipFile(Landroid/content/Context;II)Lcom/firsttouchgames/util/ZipResourceFile;

    move-result-object v0

    .line 247
    .local v0, "expansionFile":Lcom/firsttouchgames/util/ZipResourceFile;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/firsttouchgames/util/ZipResourceFile;->getAllEntries()[Lcom/firsttouchgames/util/ZipResourceFile$ZipEntryRO;

    move-result-object v1

    .line 250
    .local v1, "zip":[Lcom/firsttouchgames/util/ZipResourceFile$ZipEntryRO;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v2, v2, Lcom/firsttouchgames/util/ZipResourceFile$ZipEntryRO;->mZipFileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/firsttouchgames/fts15/JNI;->setExpansionPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    .end local v0    # "expansionFile":Lcom/firsttouchgames/util/ZipResourceFile;
    .end local v1    # "zip":[Lcom/firsttouchgames/util/ZipResourceFile$ZipEntryRO;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 412
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 413
    const/4 v0, 0x1

    .line 415
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 513
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 515
    sget-boolean v0, Lcom/firsttouchgames/fts15/MainActivity;->mbEnterSafeMode:Z

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/firsttouchgames/fts15/MainActivity;->mView:Lcom/firsttouchgames/fts15/GLSurfaceView;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/GLSurfaceView;->onPause()V

    .line 518
    invoke-static {}, Lcom/firsttouchgames/fts15/JNI;->appPaused()V

    .line 520
    invoke-static {}, Lcom/firsttouchgames/fts15/AdSupport;->OnPause()V

    .line 522
    invoke-static {}, Lcom/firsttouchgames/fts15/ChartboostManager;->onPause()V

    .line 524
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 608
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 610
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/firsttouchgames/fts15/MainActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/firsttouchgames/fts15/MainActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    .line 553
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/firsttouchgames/fts15/Fix15;->applyScreen(Landroid/app/Activity;)V

    .line 555
    sget-boolean v0, Lcom/firsttouchgames/fts15/MainActivity;->mbEnterSafeMode:Z

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/firsttouchgames/fts15/MainActivity;->mView:Lcom/firsttouchgames/fts15/GLSurfaceView;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/GLSurfaceView;->onResume()V

    .line 559
    invoke-static {p0}, Lcom/firsttouchgames/fts15/AdSupport;->OnResume(Landroid/app/Activity;)V

    .line 561
    sput-object p0, Lcom/firsttouchgames/fts15/MainActivity;->mThis:Lcom/firsttouchgames/fts15/MainActivity;

    .line 562
    invoke-static {}, Lcom/firsttouchgames/fts15/ChartboostManager;->onResume()V

    .line 564
    invoke-static {}, Lcom/firsttouchgames/fts15/MoPubManager;->UnloadAd()V

    .line 566
    invoke-static {}, Lcom/firsttouchgames/fts15/JNI;->appResumed()V

    .line 570
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 294
    invoke-static {p1}, Lcom/firsttouchgames/fts15/FacebookManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 295
    return-void
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 271
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    iput-object v0, p0, Lcom/firsttouchgames/fts15/MainActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 272
    iget-object v0, p0, Lcom/firsttouchgames/fts15/MainActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    iget-object v1, p0, Lcom/firsttouchgames/fts15/MainActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    .line 273
    return-void
.end method

.method public onStart()V
    .locals 14

    .prologue
    .line 633
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 635
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    sput-object v9, Lcom/firsttouchgames/fts15/MainActivity;->assetManager:Landroid/content/res/AssetManager;

    .line 636
    sget-object v9, Lcom/firsttouchgames/fts15/MainActivity;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {v9}, Lcom/firsttouchgames/fts15/JNI;->getAssetManager(Landroid/content/res/AssetManager;)V

    .line 638
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 639
    .local v0, "app":Landroid/app/Application;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 640
    .local v3, "f":Ljava/io/File;
    if-nez v3, :cond_0

    .line 642
    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 644
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/firsttouchgames/fts15/JNI;->setExternalFilesDir(Ljava/lang/String;)V

    .line 646
    invoke-static {p0}, Lcom/firsttouchgames/fts15/DeviceManager;->SetActivity(Lcom/firsttouchgames/fts15/MainActivity;)V

    .line 648
    sget-boolean v9, Lcom/firsttouchgames/fts15/MainActivity;->mbEnterSafeMode:Z

    if-eqz v9, :cond_1

    .line 650
    new-instance v4, Landroid/content/Intent;

    const-class v9, Lcom/firsttouchgames/fts15/SafeModeActivity;

    invoke-direct {v4, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 651
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/firsttouchgames/fts15/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 659
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v9, "JPV4SW97QXHQY6GW3GWZ"

    invoke-static {p0, v9}, Lcom/flurry/android/FlurryAgent;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 660
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;)V

    .line 661
    invoke-static {}, Lcom/firsttouchgames/fts15/AdSupport;->OnStart()V

    .line 663
    sget-boolean v9, Lcom/firsttouchgames/fts15/MainActivity;->started:Z

    if-eqz v9, :cond_3

    .line 753
    :cond_2
    :goto_0
    return-void

    .line 665
    :cond_3
    invoke-static {}, Lcom/firsttouchgames/fts15/ChartboostManager;->onStart()V

    .line 666
    invoke-static {}, Lcom/firsttouchgames/fts15/GooglePlusManager;->onStart()V

    .line 668
    const v9, 0x7f030003

    invoke-virtual {p0, v9}, Lcom/firsttouchgames/fts15/MainActivity;->setContentView(I)V

    .line 670
    const/4 v9, 0x1

    sput-boolean v9, Lcom/firsttouchgames/fts15/MainActivity;->started:Z

    .line 676
    const v9, 0x7f0a002f

    invoke-virtual {p0, v9}, Lcom/firsttouchgames/fts15/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/firsttouchgames/fts15/GLSurfaceView;

    iput-object v9, p0, Lcom/firsttouchgames/fts15/MainActivity;->mView:Lcom/firsttouchgames/fts15/GLSurfaceView;

    .line 677
    iget-object v9, p0, Lcom/firsttouchgames/fts15/MainActivity;->mView:Lcom/firsttouchgames/fts15/GLSurfaceView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/firsttouchgames/fts15/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 678
    iget-object v9, p0, Lcom/firsttouchgames/fts15/MainActivity;->mView:Lcom/firsttouchgames/fts15/GLSurfaceView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/firsttouchgames/fts15/GLSurfaceView;->setEGLConfigChooser(Z)V

    .line 683
    iget-object v9, p0, Lcom/firsttouchgames/fts15/MainActivity;->mView:Lcom/firsttouchgames/fts15/GLSurfaceView;

    new-instance v10, Lcom/firsttouchgames/fts15/GLRender;

    invoke-direct {v10}, Lcom/firsttouchgames/fts15/GLRender;-><init>()V

    invoke-virtual {v9, v10}, Lcom/firsttouchgames/fts15/GLSurfaceView;->setRenderer(Lcom/firsttouchgames/fts15/GLSurfaceView$Renderer;)V

    .line 689
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/firsttouchgames/fts15/JNI;->getJNIEnv(Landroid/content/Context;)V

    .line 691
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v9}, Lcom/firsttouchgames/fts15/JNI;->setDeviceModel(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 694
    .local v5, "packageName":Ljava/lang/String;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 696
    .local v6, "ret":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 699
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 705
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/firsttouchgames/fts15/MainActivity;->iVersionCode:I

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/firsttouchgames/util/APKExpansionSupport;->getAPKExpansionZipFile(Landroid/content/Context;II)Lcom/firsttouchgames/util/ZipResourceFile;

    move-result-object v2

    .line 707
    .local v2, "expansionFile":Lcom/firsttouchgames/util/ZipResourceFile;
    if-eqz v2, :cond_5

    .line 709
    invoke-virtual {v2}, Lcom/firsttouchgames/util/ZipResourceFile;->getAllEntries()[Lcom/firsttouchgames/util/ZipResourceFile$ZipEntryRO;

    move-result-object v8

    .line 710
    .local v8, "zip":[Lcom/firsttouchgames/util/ZipResourceFile$ZipEntryRO;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    iget-object v9, v9, Lcom/firsttouchgames/util/ZipResourceFile$ZipEntryRO;->mZipFileName:Ljava/lang/String;

    invoke-static {v9}, Lcom/firsttouchgames/fts15/JNI;->setExpansionPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .end local v2    # "expansionFile":Lcom/firsttouchgames/util/ZipResourceFile;
    .end local v8    # "zip":[Lcom/firsttouchgames/util/ZipResourceFile$ZipEntryRO;
    :cond_5
    :goto_1
    invoke-static {p0}, Lcom/firsttouchgames/fts15/IAP;->SetActivity(Landroid/app/Activity;)V

    .line 722
    invoke-static {p0}, Lcom/firsttouchgames/fts15/URLManager;->SetActivity(Lcom/firsttouchgames/fts15/MainActivity;)V

    .line 723
    invoke-static {p0}, Lcom/firsttouchgames/fts15/EmailManager;->SetActivity(Lcom/firsttouchgames/fts15/MainActivity;)V

    .line 725
    invoke-static {}, Lcom/firsttouchgames/fts15/AdSupport;->InitialiseAppLovin()V

    .line 726
    invoke-static {}, Lcom/firsttouchgames/fts15/AdSupport;->InitialiseChartboost()V

    .line 727
    invoke-static {}, Lcom/firsttouchgames/fts15/ChartboostManager;->CacheInterstitial()V

    .line 729
    const v9, 0x7f0a0032

    invoke-virtual {p0, v9}, Lcom/firsttouchgames/fts15/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/mopub/mobileads/MoPubView;

    invoke-static {v9, p0}, Lcom/firsttouchgames/fts15/MoPubManager;->Setup(Lcom/mopub/mobileads/MoPubView;Lcom/firsttouchgames/fts15/MainActivity;)V

    .line 732
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android_id"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, "deviceId":Ljava/lang/String;
    new-instance v9, Lcom/firsttouchgames/fts15/MainActivity$MyLicenseCheckerCallback;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/firsttouchgames/fts15/MainActivity$MyLicenseCheckerCallback;-><init>(Lcom/firsttouchgames/fts15/MainActivity;Lcom/firsttouchgames/fts15/MainActivity$1;)V

    iput-object v9, p0, Lcom/firsttouchgames/fts15/MainActivity;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 735
    new-instance v9, Lcom/google/android/vending/licensing/LicenseChecker;

    new-instance v10, Lcom/google/android/vending/licensing/ServerManagedPolicy;

    new-instance v11, Lcom/google/android/vending/licensing/AESObfuscator;

    sget-object v12, Lcom/firsttouchgames/fts15/MainActivity;->SALT:[B

    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13, v1}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, p0, v11}, Lcom/google/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    const-string v11, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlyXuQblpTeRVqeKX/QstKd8cvWOWYE59iA1UypIM2Lt/Ofvg2Nv7xcyXgS0IJnByT/LM8OOhrTxZn9bdaZhxLL/ManPF98JQCjfAxN1EFePvAOqFj6Ib42iBwBf7SPp3yGQLJsS3CjcWfBaRvrY8QxVZ3IZFEMg79fnyuFn9AN3ZWVfMymeL9KceH1BDb30FGMYq1wmenmdyPpTZ8KOElsUEQlpVWTc8jbVtwHQhLrvFKdaEjADH2G8xylAmqWRpxzlCaSmWpM6tM5bepT6alWUZAguwdZMUA3CkxvZbAQUSL2igoaYckHvg9xGBXTIxWuIT0Ng3/sMuwiZiz3jkCwIDAQAB"

    invoke-direct {v9, p0, v10, v11}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/firsttouchgames/fts15/MainActivity;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    .line 740
    iget-object v9, p0, Lcom/firsttouchgames/fts15/MainActivity;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v10, p0, Lcom/firsttouchgames/fts15/MainActivity;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v9, v10}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    .line 742
    invoke-static {p0}, Lcom/firsttouchgames/fts15/FileManager;->Initialise(Landroid/app/Activity;)V

    .line 743
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/firsttouchgames/fts15/ClipboardMngr;->onStart(Landroid/content/Context;)V

    .line 745
    invoke-static {p0}, Lcom/firsttouchgames/fts15/PushNotifications;->Initialise(Lcom/firsttouchgames/fts15/MainActivity;)V

    .line 747
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/firsttouchgames/fts15/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 748
    .local v7, "sharedPref":Landroid/content/SharedPreferences;
    const v9, 0x7f05004e

    invoke-virtual {p0, v9}, Lcom/firsttouchgames/fts15/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 750
    invoke-static {}, Lcom/firsttouchgames/fts15/PushNotifications;->Setup()V

    goto/16 :goto_0

    .line 716
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v7    # "sharedPref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/firsttouchgames/fts15/MainActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/firsttouchgames/fts15/MainActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 581
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 587
    sget-boolean v0, Lcom/firsttouchgames/fts15/MainActivity;->mbEnterSafeMode:Z

    if-nez v0, :cond_1

    .line 589
    invoke-static {}, Lcom/firsttouchgames/fts15/PushNotifications;->SendAllTimedNotifications()V

    .line 591
    invoke-static {}, Lcom/firsttouchgames/fts15/AdSupport;->OnStop()V

    .line 592
    invoke-static {}, Lcom/firsttouchgames/fts15/GooglePlusManager;->onStop()V

    .line 593
    invoke-static {}, Lcom/firsttouchgames/fts15/ChartboostManager;->onStop()V

    .line 595
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 603
    :goto_0
    return-void

    .line 599
    :cond_1
    invoke-static {}, Lcom/firsttouchgames/fts15/JNI;->appPaused()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 300
    const/4 v3, -0x1

    .line 302
    .local v3, "ptrId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 303
    .local v6, "touched_x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 304
    .local v7, "touched_y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 309
    .local v0, "action":I
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    move v8, v9

    .line 390
    :goto_0
    return v8

    .line 313
    :pswitch_0
    const/4 v5, 0x1

    .line 314
    .local v5, "touched":Z
    sget v9, Lcom/firsttouchgames/fts15/MainActivity;->iLastTouchCount:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/firsttouchgames/fts15/MainActivity;->iLastTouchCount:I

    .line 388
    :goto_1
    invoke-static {v6, v7, v0}, Lcom/firsttouchgames/fts15/JNI;->AddTouch(FFI)V

    goto :goto_0

    .line 318
    .end local v5    # "touched":Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 322
    .local v2, "iMax":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 325
    move v4, v1

    .line 328
    .local v4, "ptrIdx":I
    if-ltz v4, :cond_0

    .line 331
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 332
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 338
    const/4 v9, 0x2

    invoke-static {v6, v7, v9}, Lcom/firsttouchgames/fts15/JNI;->AddTouch(FFI)V

    .line 322
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 342
    .end local v4    # "ptrIdx":I
    :cond_1
    const/4 v5, 0x1

    .line 343
    .restart local v5    # "touched":Z
    goto :goto_0

    .line 346
    .end local v1    # "i":I
    .end local v2    # "iMax":I
    .end local v5    # "touched":Z
    :pswitch_2
    const/4 v5, 0x0

    .line 348
    .restart local v5    # "touched":Z
    sget v9, Lcom/firsttouchgames/fts15/MainActivity;->iLastTouchCount:I

    add-int/lit8 v9, v9, -0x1

    sput v9, Lcom/firsttouchgames/fts15/MainActivity;->iLastTouchCount:I

    goto :goto_1

    .line 351
    .end local v5    # "touched":Z
    :pswitch_3
    const/4 v5, 0x0

    .line 352
    .restart local v5    # "touched":Z
    goto :goto_0

    .line 354
    .end local v5    # "touched":Z
    :pswitch_4
    const/4 v5, 0x0

    .restart local v5    # "touched":Z
    move v8, v9

    .line 355
    goto :goto_0

    .line 358
    .end local v5    # "touched":Z
    :pswitch_5
    shr-int/lit8 v3, v0, 0x8

    .line 359
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 363
    .restart local v4    # "ptrIdx":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 364
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 365
    invoke-static {v6, v7, v9}, Lcom/firsttouchgames/fts15/JNI;->AddTouch(FFI)V

    .line 367
    sget v9, Lcom/firsttouchgames/fts15/MainActivity;->iLastTouchCount:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/firsttouchgames/fts15/MainActivity;->iLastTouchCount:I

    .line 368
    const/4 v5, 0x1

    .line 369
    .restart local v5    # "touched":Z
    goto :goto_0

    .line 371
    .end local v4    # "ptrIdx":I
    .end local v5    # "touched":Z
    :pswitch_6
    shr-int/lit8 v3, v0, 0x8

    .line 372
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 376
    .restart local v4    # "ptrIdx":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 377
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 378
    invoke-static {v6, v7, v8}, Lcom/firsttouchgames/fts15/JNI;->AddTouch(FFI)V

    .line 380
    sget v9, Lcom/firsttouchgames/fts15/MainActivity;->iLastTouchCount:I

    add-int/lit8 v9, v9, -0x1

    sput v9, Lcom/firsttouchgames/fts15/MainActivity;->iLastTouchCount:I

    .line 381
    const/4 v5, 0x1

    .line 382
    .restart local v5    # "touched":Z
    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 529
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/firsttouchgames/fts15/MainActivity;->mView:Lcom/firsttouchgames/fts15/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firsttouchgames/fts15/MainActivity;->mView:Lcom/firsttouchgames/fts15/GLSurfaceView;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/GLSurfaceView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 535
    :cond_0
    invoke-static {p0}, Lcom/firsttouchgames/fts15/Fix15;->applyScreen(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 536
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {p0}, Lcom/firsttouchgames/fts15/Fix15;->refresh(Landroid/app/Activity;)V

    return-void
.end method
