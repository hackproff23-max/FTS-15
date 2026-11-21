.class public Lcom/mopub/common/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/util/DeviceUtils$1;,
        Lcom/mopub/common/util/DeviceUtils$IP;
    }
.end annotation


# static fields
.field private static final MAX_DISK_CACHE_SIZE:I = 0x6400000

.field private static final MAX_MEMORY_CACHE_SIZE:I = 0x1e00000

.field private static final MIN_DISK_CACHE_SIZE:I = 0x1e00000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static diskCacheSizeBytes(Ljava/io/File;)J
    .locals 2
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 157
    const-wide/32 v0, 0x1e00000

    invoke-static {p0, v0, v1}, Lcom/mopub/common/util/DeviceUtils;->diskCacheSizeBytes(Ljava/io/File;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static diskCacheSizeBytes(Ljava/io/File;J)J
    .locals 11
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "minSize"    # J

    .prologue
    .line 143
    move-wide v4, p1

    .line 145
    .local v4, "size":J
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 146
    .local v3, "statFs":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v0, v6, v8

    .line 147
    .local v0, "availableBytes":J
    const-wide/16 v6, 0x32

    div-long v4, v0, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0    # "availableBytes":J
    .end local v3    # "statFs":Landroid/os/StatFs;
    :goto_0
    const-wide/32 v6, 0x6400000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    const-wide/32 v8, 0x1e00000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    return-wide v6

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "Unable to calculate 2% of available disk space, defaulting to minimum"

    invoke-static {v6}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getHashedUdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 89
    :goto_0
    return-object v1

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "udid":Ljava/lang/String;
    invoke-static {v0}, Lcom/mopub/common/util/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getIpAddress(Lcom/mopub/common/util/DeviceUtils$IP;)Ljava/lang/String;
    .locals 7
    .param p0, "ip"    # Lcom/mopub/common/util/DeviceUtils$IP;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 70
    .local v4, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 71
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 72
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "hostAddress":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/mopub/common/util/DeviceUtils$IP;->access$000(Lcom/mopub/common/util/DeviceUtils$IP;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    invoke-static {p0, v1}, Lcom/mopub/common/util/DeviceUtils$IP;->access$100(Lcom/mopub/common/util/DeviceUtils$IP;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "hostAddress":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "networkInterface":Ljava/net/NetworkInterface;
    :goto_0
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getScreenOrientation(Landroid/app/Activity;)I
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 162
    .local v3, "rotation":I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 163
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 165
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 166
    .local v4, "width":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 168
    .local v1, "height":I
    if-eqz v3, :cond_0

    const/4 v9, 0x2

    if-ne v3, v9, :cond_1

    :cond_0
    if-gt v1, v4, :cond_3

    :cond_1
    if-eq v3, v5, :cond_2

    const/4 v9, 0x3

    if-ne v3, v9, :cond_4

    :cond_2
    if-le v4, v1, :cond_4

    :cond_3
    move v2, v5

    .line 174
    .local v2, "isPortrait":Z
    :goto_0
    if-eqz v2, :cond_5

    .line 175
    packed-switch v3, :pswitch_data_0

    .line 185
    const-string v6, "Unknown screen orientation. Defaulting to portrait."

    invoke-static {v6}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 200
    :goto_1
    :pswitch_0
    return v5

    .end local v2    # "isPortrait":Z
    :cond_4
    move v2, v6

    .line 168
    goto :goto_0

    .restart local v2    # "isPortrait":Z
    :pswitch_1
    move v5, v6

    .line 179
    goto :goto_1

    :pswitch_2
    move v5, v7

    .line 181
    goto :goto_1

    :pswitch_3
    move v5, v8

    .line 183
    goto :goto_1

    .line 189
    :cond_5
    packed-switch v3, :pswitch_data_1

    .line 199
    const-string v5, "Unknown screen orientation. Defaulting to landscape."

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    move v5, v6

    .line 200
    goto :goto_1

    :pswitch_4
    move v5, v6

    .line 191
    goto :goto_1

    :pswitch_5
    move v5, v8

    .line 195
    goto :goto_1

    :pswitch_6
    move v5, v7

    .line 197
    goto :goto_1

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 189
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 93
    if-nez p0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v5

    .line 97
    :cond_1
    const-string v6, "android.permission.INTERNET"

    invoke-virtual {p0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 98
    .local v2, "internetPermission":I
    if-eq v2, v7, :cond_0

    .line 107
    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    .line 108
    .local v3, "networkAccessPermission":I
    if-ne v3, v7, :cond_2

    .line 109
    const/4 v5, 0x1

    goto :goto_0

    .line 114
    :cond_2
    :try_start_0
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 116
    .local v0, "connnectionManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 117
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 118
    .end local v0    # "connnectionManager":Landroid/net/ConnectivityManager;
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static memoryCacheSizeBytes(Landroid/content/Context;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v12, 0x400

    .line 124
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 125
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    int-to-long v4, v3

    .line 127
    .local v4, "memoryClass":J
    invoke-static {}, Lcom/mopub/common/util/VersionCode;->currentApiLevel()Lcom/mopub/common/util/VersionCode;

    move-result-object v3

    sget-object v8, Lcom/mopub/common/util/VersionCode;->HONEYCOMB:Lcom/mopub/common/util/VersionCode;

    invoke-virtual {v3, v8}, Lcom/mopub/common/util/VersionCode;->isAtLeast(Lcom/mopub/common/util/VersionCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    :try_start_0
    const-class v3, Landroid/content/pm/ApplicationInfo;

    const-string v8, "FLAG_LARGE_HEAP"

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 130
    .local v2, "flagLargeHeap":I
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v3, v2}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    new-instance v3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v8, "getLargeMemoryClass"

    invoke-direct {v3, v0, v8}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-long v4, v3

    .line 138
    .end local v2    # "flagLargeHeap":I
    :cond_0
    :goto_0
    const-wide/32 v8, 0x1e00000

    const-wide/16 v10, 0x8

    div-long v10, v4, v10

    mul-long/2addr v10, v12

    mul-long/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 139
    .local v6, "result":J
    long-to-int v3, v6

    return v3

    .line 133
    .end local v6    # "result":J
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Unable to reflectively determine large heap size on Honeycomb and above."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
