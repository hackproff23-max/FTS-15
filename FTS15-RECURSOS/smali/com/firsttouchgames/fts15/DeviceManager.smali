.class public Lcom/firsttouchgames/fts15/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field static bControllerConnected:Z

.field public static batteryStatus:Landroid/content/Intent;

.field static fCtrollerAxisX:F

.field static fCtrollerAxisY:F

.field static iControllerButtons:I

.field public static mActivity:Lcom/firsttouchgames/fts15/MainActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    sput-object v2, Lcom/firsttouchgames/fts15/DeviceManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    .line 36
    sput-object v2, Lcom/firsttouchgames/fts15/DeviceManager;->batteryStatus:Landroid/content/Intent;

    .line 215
    sput-boolean v1, Lcom/firsttouchgames/fts15/DeviceManager;->bControllerConnected:Z

    .line 217
    sput v1, Lcom/firsttouchgames/fts15/DeviceManager;->iControllerButtons:I

    .line 218
    sput v0, Lcom/firsttouchgames/fts15/DeviceManager;->fCtrollerAxisX:F

    .line 219
    sput v0, Lcom/firsttouchgames/fts15/DeviceManager;->fCtrollerAxisY:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckControllerConnected()V
    .locals 6

    .prologue
    .line 223
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 225
    .local v2, "iDevices":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 227
    aget v4, v2, v1

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 228
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v3

    .line 232
    .local v3, "iSrouce":I
    and-int/lit16 v4, v3, 0x401

    const/16 v5, 0x401

    if-ne v4, v5, :cond_0

    .line 234
    const-string v4, ""

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    and-int/lit8 v4, v3, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_1

    .line 238
    const-string v4, ""

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v3    # "iSrouce":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "device":Landroid/view/InputDevice;
    :cond_2
    return-void
.end method

.method public static ClearControllerButtons(I)V
    .locals 2
    .param p0, "iButtons"    # I

    .prologue
    .line 254
    sget v0, Lcom/firsttouchgames/fts15/DeviceManager;->iControllerButtons:I

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/firsttouchgames/fts15/DeviceManager;->iControllerButtons:I

    .line 255
    return-void
.end method

.method public static ConversionDPtoPX(I)F
    .locals 3
    .param p0, "dp"    # I

    .prologue
    .line 209
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 210
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    sget-object v1, Lcom/firsttouchgames/fts15/DeviceManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v1}, Lcom/firsttouchgames/fts15/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 212
    int-to-float v1, p0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    return v1
.end method

.method public static GetAccountUsername()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    sget-object v2, Lcom/firsttouchgames/fts15/DeviceManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v2}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 154
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 157
    .local v1, "accounts":[Landroid/accounts/Account;
    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 158
    aget-object v2, v1, v3

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 160
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static GetAvailableMemory()I
    .locals 8

    .prologue
    .line 189
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 190
    .local v2, "statFs":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x100000

    div-long v0, v4, v6

    .line 191
    .local v0, "lFreeMB":J
    const-string v3, "MEM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Free Memory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    long-to-int v3, v0

    return v3
.end method

.method public static GetBoard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public static GetCPUCores()I
    .locals 4

    .prologue
    .line 305
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "dir":Ljava/io/File;
    new-instance v3, Lcom/firsttouchgames/fts15/DeviceManager$1CpuFilter;

    invoke-direct {v3}, Lcom/firsttouchgames/fts15/DeviceManager$1CpuFilter;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 309
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v2    # "files":[Ljava/io/File;
    :goto_0
    return v3

    .line 310
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static GetControllerAxisX()F
    .locals 1

    .prologue
    .line 278
    sget v0, Lcom/firsttouchgames/fts15/DeviceManager;->fCtrollerAxisX:F

    return v0
.end method

.method public static GetControllerAxisY()F
    .locals 1

    .prologue
    .line 283
    sget v0, Lcom/firsttouchgames/fts15/DeviceManager;->fCtrollerAxisY:F

    return v0
.end method

.method public static GetControllerButtons()I
    .locals 1

    .prologue
    .line 273
    sget v0, Lcom/firsttouchgames/fts15/DeviceManager;->iControllerButtons:I

    return v0
.end method

.method public static GetControllerConnected()Z
    .locals 1

    .prologue
    .line 268
    sget-boolean v0, Lcom/firsttouchgames/fts15/DeviceManager;->bControllerConnected:Z

    return v0
.end method

.method public static GetCurrencyCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    sget-object v2, Lcom/firsttouchgames/fts15/DeviceManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v2}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 183
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    .line 184
    .local v0, "currency":Ljava/util/Currency;
    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static GetDefaultLanguageISO3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/firsttouchgames/fts15/DeviceManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetDeviceBatteryLevel()F
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 172
    sget-object v3, Lcom/firsttouchgames/fts15/DeviceManager;->batteryStatus:Landroid/content/Intent;

    const-string v4, "level"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 173
    .local v2, "level":I
    sget-object v3, Lcom/firsttouchgames/fts15/DeviceManager;->batteryStatus:Landroid/content/Intent;

    const-string v4, "scale"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 175
    .local v1, "iscale":I
    int-to-float v3, v2

    int-to-float v4, v1

    div-float v0, v3, v4

    .line 177
    .local v0, "batteryPct":F
    return v0
.end method

.method public static GetDeviceID()Ljava/lang/String;
    .locals 8

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "iPath":I
    sget-object v5, Lcom/firsttouchgames/fts15/DeviceManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    if-nez v5, :cond_0

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "sRet":Ljava/lang/String;
    const/4 v0, 0x1

    .line 110
    :goto_0
    const-string v5, "EB:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-object v1

    .line 80
    .end local v1    # "sRet":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/firsttouchgames/fts15/DeviceManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v5}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "strDeviceID":Ljava/lang/String;
    const-string v5, "9774d56d682e549c"

    if-ne v2, v5, :cond_2

    .line 87
    sget-object v5, Lcom/firsttouchgames/fts15/DeviceManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Lcom/firsttouchgames/fts15/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 88
    .local v4, "tManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "strSerial":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 94
    const/4 v1, 0x0

    .line 95
    .restart local v1    # "sRet":Ljava/lang/String;
    const/4 v0, 0x2

    goto :goto_0

    .line 99
    .end local v1    # "sRet":Ljava/lang/String;
    :cond_1
    move-object v1, v3

    .line 100
    .restart local v1    # "sRet":Ljava/lang/String;
    const/4 v0, 0x3

    goto :goto_0

    .line 105
    .end local v1    # "sRet":Ljava/lang/String;
    .end local v3    # "strSerial":Ljava/lang/String;
    .end local v4    # "tManager":Landroid/telephony/TelephonyManager;
    :cond_2
    move-object v1, v2

    .line 106
    .restart local v1    # "sRet":Ljava/lang/String;
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static GetDeviceInformationString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/firsttouchgames/fts15/DeviceManager;->GetDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Device Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/firsttouchgames/fts15/DeviceManager;->GetDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", OS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/firsttouchgames/fts15/DeviceManager;->GetOS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Board: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/firsttouchgames/fts15/DeviceManager;->GetBoard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/firsttouchgames/fts15/DeviceManager;->GetDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Hardware: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/firsttouchgames/fts15/DeviceManager;->GetHardware()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "sInfo":Ljava/lang/String;
    return-object v0
.end method

.method public static GetDeviceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetDeviceTypeAndOS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static GetElapsedRealtime()J
    .locals 4

    .prologue
    .line 198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static GetHardware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public static GetOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static GetinternetConnectivity()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 49
    sget-object v6, Lcom/firsttouchgames/fts15/DeviceManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v6}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 51
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 52
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v5

    .line 54
    .local v2, "isConnected":Z
    :goto_0
    if-nez v2, :cond_1

    .line 65
    :goto_1
    return v4

    .end local v2    # "isConnected":Z
    :cond_0
    move v2, v4

    .line 52
    goto :goto_0

    .line 60
    .restart local v2    # "isConnected":Z
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v5, :cond_2

    move v3, v5

    .line 62
    .local v3, "isWiFi":Z
    :goto_2
    if-eqz v3, :cond_3

    move v4, v5

    .line 63
    goto :goto_1

    .end local v3    # "isWiFi":Z
    :cond_2
    move v3, v4

    .line 60
    goto :goto_2

    .line 65
    .restart local v3    # "isWiFi":Z
    :cond_3
    const/4 v4, 0x2

    goto :goto_1
.end method

.method public static SetActivity(Lcom/firsttouchgames/fts15/MainActivity;)V
    .locals 3
    .param p0, "activity"    # Lcom/firsttouchgames/fts15/MainActivity;

    .prologue
    .line 40
    sput-object p0, Lcom/firsttouchgames/fts15/DeviceManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "ifilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    sput-object v1, Lcom/firsttouchgames/fts15/DeviceManager;->batteryStatus:Landroid/content/Intent;

    .line 44
    return-void
.end method

.method public static SetControllerAxisX(F)V
    .locals 0
    .param p0, "fVal"    # F

    .prologue
    .line 258
    sput p0, Lcom/firsttouchgames/fts15/DeviceManager;->fCtrollerAxisX:F

    .line 259
    return-void
.end method

.method public static SetControllerAxisY(F)V
    .locals 0
    .param p0, "fVal"    # F

    .prologue
    .line 263
    sput p0, Lcom/firsttouchgames/fts15/DeviceManager;->fCtrollerAxisY:F

    .line 264
    return-void
.end method

.method public static SetControllerButtons(I)V
    .locals 1
    .param p0, "iButtons"    # I

    .prologue
    .line 250
    sget v0, Lcom/firsttouchgames/fts15/DeviceManager;->iControllerButtons:I

    or-int/2addr v0, p0

    sput v0, Lcom/firsttouchgames/fts15/DeviceManager;->iControllerButtons:I

    .line 251
    return-void
.end method

.method public static SetControllerConnected(Z)V
    .locals 0
    .param p0, "bConected"    # Z

    .prologue
    .line 246
    sput-boolean p0, Lcom/firsttouchgames/fts15/DeviceManager;->bControllerConnected:Z

    .line 247
    return-void
.end method

.method public static Vibrate(I)V
    .locals 4
    .param p0, "iMilliSeconds"    # I

    .prologue
    .line 203
    sget-object v1, Lcom/firsttouchgames/fts15/DeviceManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lcom/firsttouchgames/fts15/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 204
    .local v0, "v":Landroid/os/Vibrator;
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 205
    return-void
.end method
