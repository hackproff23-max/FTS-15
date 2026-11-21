.class public Lcom/flurry/sdk/fe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/fe$3;,
        Lcom/flurry/sdk/fe$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/flurry/sdk/fe;


# instance fields
.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/fl;",
            "[B>;"
        }
    .end annotation
.end field

.field private e:Lcom/flurry/sdk/fe$a;

.field private f:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private g:Ljava/lang/String;

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/flurry/sdk/fe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/fe;->v()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/fe;->c:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/fe;->d:Ljava/util/Map;

    .line 74
    sget-object v0, Lcom/flurry/sdk/fe$a;->a:Lcom/flurry/sdk/fe$a;

    iput-object v0, p0, Lcom/flurry/sdk/fe;->e:Lcom/flurry/sdk/fe$a;

    .line 80
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/fe$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/fe$1;-><init>(Lcom/flurry/sdk/fe;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->b(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/fe;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/flurry/sdk/fe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/fe;->b:Lcom/flurry/sdk/fe;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/flurry/sdk/fe;

    invoke-direct {v0}, Lcom/flurry/sdk/fe;-><init>()V

    sput-object v0, Lcom/flurry/sdk/fe;->b:Lcom/flurry/sdk/fe;

    .line 49
    :cond_0
    sget-object v0, Lcom/flurry/sdk/fe;->b:Lcom/flurry/sdk/fe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 388
    const/4 v0, 0x0

    .line 390
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/fe;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/flurry/sdk/fe;->i()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 383
    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 313
    const/4 v2, 0x0

    .line 315
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/flurry/sdk/fe;->a(Ljava/lang/String;Ljava/io/DataOutput;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 320
    invoke-static {v1}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    .line 323
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 318
    :goto_1
    const/4 v2, 0x6

    :try_start_2
    sget-object v3, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    const-string v4, "Error when saving deviceId"

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 320
    invoke-static {v1}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 317
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flurry/sdk/fe;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 394
    const v1, 0xb5fa

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-object v0

    .line 398
    :cond_1
    const/4 v1, 0x2

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 402
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 404
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/fe;->b:Lcom/flurry/sdk/fe;

    .line 54
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fp;->c()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/flurry/sdk/fe;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 305
    invoke-static {v0}, Lcom/flurry/sdk/ho;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/fe;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/flurry/sdk/fe;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 122
    :goto_0
    sget-object v0, Lcom/flurry/sdk/fe$a;->f:Lcom/flurry/sdk/fe$a;

    iget-object v1, p0, Lcom/flurry/sdk/fe;->e:Lcom/flurry/sdk/fe$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fe$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/flurry/sdk/fe$3;->a:[I

    iget-object v1, p0, Lcom/flurry/sdk/fe;->e:Lcom/flurry/sdk/fe$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/fe$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_1
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/fe$3;->a:[I

    iget-object v1, p0, Lcom/flurry/sdk/fe;->e:Lcom/flurry/sdk/fe$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/fe$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 154
    :pswitch_0
    invoke-direct {p0}, Lcom/flurry/sdk/fe;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during id fetch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/fe;->e:Lcom/flurry/sdk/fe$a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/fe$a;->b:Lcom/flurry/sdk/fe$a;

    iput-object v0, p0, Lcom/flurry/sdk/fe;->e:Lcom/flurry/sdk/fe$a;

    goto :goto_1

    .line 130
    :pswitch_2
    sget-object v0, Lcom/flurry/sdk/fe$a;->c:Lcom/flurry/sdk/fe$a;

    iput-object v0, p0, Lcom/flurry/sdk/fe;->e:Lcom/flurry/sdk/fe$a;

    goto :goto_1

    .line 134
    :pswitch_3
    sget-object v0, Lcom/flurry/sdk/fe$a;->d:Lcom/flurry/sdk/fe$a;

    iput-object v0, p0, Lcom/flurry/sdk/fe;->e:Lcom/flurry/sdk/fe$a;

    goto :goto_1

    .line 138
    :pswitch_4
    sget-object v0, Lcom/flurry/sdk/fe$a;->e:Lcom/flurry/sdk/fe$a;

    iput-object v0, p0, Lcom/flurry/sdk/fe;->e:Lcom/flurry/sdk/fe$a;

    goto :goto_1

    .line 142
    :pswitch_5
    sget-object v0, Lcom/flurry/sdk/fe$a;->f:Lcom/flurry/sdk/fe$a;

    iput-object v0, p0, Lcom/flurry/sdk/fe;->e:Lcom/flurry/sdk/fe$a;

    goto :goto_1

    .line 158
    :pswitch_6
    :try_start_1
    invoke-direct {p0}, Lcom/flurry/sdk/fe;->k()V

    goto :goto_0

    .line 162
    :pswitch_7
    invoke-direct {p0}, Lcom/flurry/sdk/fe;->l()V

    goto :goto_0

    .line 166
    :pswitch_8
    invoke-direct {p0}, Lcom/flurry/sdk/fe;->x()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Lcom/flurry/sdk/ff;

    invoke-direct {v0}, Lcom/flurry/sdk/ff;-><init>()V

    .line 180
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/fz;->a(Lcom/flurry/sdk/fx;)V

    .line 181
    return-void

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 152
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private j()V
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/flurry/sdk/hp;->b()V

    .line 187
    invoke-direct {p0}, Lcom/flurry/sdk/fe;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/fe;->n()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/fe;->f:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    goto :goto_0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lcom/flurry/sdk/hp;->b()V

    .line 205
    invoke-direct {p0}, Lcom/flurry/sdk/fe;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/fe;->g:Ljava/lang/String;

    .line 206
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 209
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fp;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/fe;->w()V

    goto :goto_0
.end method

.method private m()Z
    .locals 5

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 219
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/fp;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 220
    if-nez v1, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    .line 223
    :cond_0
    sget-object v2, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Google Play Services not available - connection result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/sdk/gd;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    sget-object v1, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    const-string v2, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v1, v2}, Lcom/flurry/sdk/gd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :catch_1
    move-exception v1

    .line 229
    sget-object v2, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GOOGLE PLAY SERVICES EXCEPTION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/sdk/gd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v1, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    const-string v2, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v1, v2}, Lcom/flurry/sdk/gd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private n()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 5

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 239
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/fp;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    .line 240
    :catch_0
    move-exception v1

    .line 242
    sget-object v2, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GOOGLE PLAY SERVICES ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/sdk/gd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v1, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    const-string v2, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v1, v2}, Lcom/flurry/sdk/gd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/flurry/sdk/fe;->p()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/fe;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fp;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-direct {p0, v0}, Lcom/flurry/sdk/fe;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/flurry/sdk/fe;->s()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/flurry/sdk/fe;->t()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/flurry/sdk/fe;->r()Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_0
    invoke-direct {p0, v0}, Lcom/flurry/sdk/fe;->b(Ljava/lang/String;)V

    .line 277
    :cond_1
    return-object v0
.end method

.method private r()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x25

    .line 293
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/fp;->c()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/flurry/sdk/hm;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/flurry/sdk/hp;->i(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private s()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/fp;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/flurry/sdk/fe;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-object v0

    .line 334
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :try_start_1
    invoke-direct {p0, v2}, Lcom/flurry/sdk/fe;->a(Ljava/io/DataInput;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 339
    invoke-static {v2}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 336
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 337
    :goto_1
    const/4 v3, 0x6

    :try_start_2
    sget-object v4, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    const-string v5, "Error when loading deviceId"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 339
    invoke-static {v2}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 336
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private t()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 345
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/fp;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 346
    if-nez v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    new-instance v2, Lcom/flurry/sdk/fe$2;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/fe$2;-><init>(Lcom/flurry/sdk/fe;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 361
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 363
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/fp;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :try_start_1
    invoke-direct {p0, v2}, Lcom/flurry/sdk/fe;->b(Ljava/io/DataInput;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 376
    invoke-static {v2}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 373
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 374
    :goto_1
    const/4 v3, 0x6

    :try_start_2
    sget-object v4, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    const-string v5, "Error when loading deviceId"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 376
    invoke-static {v2}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/flurry/sdk/hp;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 373
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    const-string v0, ".flurryb."

    return-object v0
.end method

.method private v()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 417
    const-string v1, "null"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    const-string v1, "9774d56d682e549c"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    const-string v1, "dead00beef"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private w()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 424
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fp;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 425
    if-nez v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 433
    :try_start_0
    invoke-static {v0}, Lcom/flurry/sdk/hp;->f(Ljava/lang/String;)[B

    move-result-object v0

    .line 435
    const/16 v1, 0x14

    .line 436
    if-eqz v0, :cond_2

    array-length v2, v0

    if-ne v2, v1, :cond_2

    .line 437
    iput-object v0, p0, Lcom/flurry/sdk/fe;->h:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    sget-object v0, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    const-string v1, "Exception in generateHashedImei()"

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_2
    const/4 v2, 0x6

    :try_start_1
    sget-object v3, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sha1 is not "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes long: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private x()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 449
    invoke-virtual {p0}, Lcom/flurry/sdk/fe;->d()Ljava/lang/String;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_0

    .line 451
    sget-object v1, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    const-string v2, "Fetched advertising id"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/flurry/sdk/fe;->d:Ljava/util/Map;

    sget-object v2, Lcom/flurry/sdk/fl;->c:Lcom/flurry/sdk/fl;

    invoke-static {v0}, Lcom/flurry/sdk/hp;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/fe;->f()Ljava/lang/String;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_1

    .line 457
    sget-object v1, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    const-string v2, "Fetched device id"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/flurry/sdk/fe;->d:Ljava/util/Map;

    sget-object v2, Lcom/flurry/sdk/fl;->a:Lcom/flurry/sdk/fl;

    invoke-static {v0}, Lcom/flurry/sdk/hp;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/fe;->g()[B

    move-result-object v0

    .line 462
    if-eqz v0, :cond_2

    .line 463
    sget-object v1, Lcom/flurry/sdk/fe;->a:Ljava/lang/String;

    const-string v2, "Fetched hashed IMEI"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/flurry/sdk/fe;->d:Ljava/util/Map;

    sget-object v2, Lcom/flurry/sdk/fl;->b:Lcom/flurry/sdk/fl;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_2
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/flurry/sdk/fe$a;->f:Lcom/flurry/sdk/fe$a;

    iget-object v1, p0, Lcom/flurry/sdk/fe;->e:Lcom/flurry/sdk/fe$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fe$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/flurry/sdk/fe;->f:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/fe;->f:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 101
    iget-object v1, p0, Lcom/flurry/sdk/fe;->f:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/fe;->f:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flurry/sdk/fe;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()[B
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/flurry/sdk/fe;->h:[B

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/fl;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/flurry/sdk/fe;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
