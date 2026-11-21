.class public Lcom/flurry/sdk/cf;
.super Lcom/flurry/sdk/gp;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/gh",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/flurry/sdk/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/gh",
            "<",
            "Lcom/flurry/android/impl/ads/protocol/v13/SdkLogResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/flurry/sdk/cf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/cf;-><init>(Lcom/flurry/sdk/gp$a;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/gp$a;)V
    .locals 4

    .prologue
    .line 48
    const-string v0, "Ads"

    const-class v1, Lcom/flurry/sdk/cf;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/gp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/flurry/sdk/gh;

    const-string v1, "sdk log request"

    new-instance v2, Lcom/flurry/sdk/cl;

    const-class v3, Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;

    invoke-direct {v2, v3}, Lcom/flurry/sdk/cl;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/gh;-><init>(Ljava/lang/String;Lcom/flurry/sdk/gx;)V

    iput-object v0, p0, Lcom/flurry/sdk/cf;->b:Lcom/flurry/sdk/gh;

    .line 41
    new-instance v0, Lcom/flurry/sdk/gh;

    const-string v1, "sdk log response"

    new-instance v2, Lcom/flurry/sdk/cl;

    const-class v3, Lcom/flurry/android/impl/ads/protocol/v13/SdkLogResponse;

    invoke-direct {v2, v3}, Lcom/flurry/sdk/cl;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/gh;-><init>(Ljava/lang/String;Lcom/flurry/sdk/gx;)V

    iput-object v0, p0, Lcom/flurry/sdk/cf;->g:Lcom/flurry/sdk/gh;

    .line 49
    const-string v0, "AdData_"

    iput-object v0, p0, Lcom/flurry/sdk/cf;->f:Ljava/lang/String;

    .line 50
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/cf;->a(Lcom/flurry/sdk/gp$a;)V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/cf;)Lcom/flurry/sdk/gh;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/flurry/sdk/cf;->g:Lcom/flurry/sdk/gh;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/cf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/cf;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/cf;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/cf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/flurry/sdk/cf;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/cf;)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/flurry/sdk/cf;->e()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/cf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/flurry/sdk/cf;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a([B)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 98
    new-array v2, v6, [B

    .line 99
    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    new-array v3, v0, [B

    move v0, v1

    .line 100
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 101
    if-ge v0, v6, :cond_0

    .line 102
    aget-byte v4, p1, v0

    aput-byte v4, v2, v0

    .line 100
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    add-int/lit8 v4, v0, -0x4

    aget-byte v5, p1, v0

    aput-byte v5, v3, v4

    goto :goto_1

    .line 109
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 112
    new-array v2, v0, [B

    .line 113
    array-length v4, v3

    sub-int/2addr v4, v0

    new-array v4, v4, [B

    .line 114
    :goto_2
    array-length v5, v3

    if-ge v1, v5, :cond_3

    .line 115
    if-ge v1, v0, :cond_2

    .line 116
    aget-byte v5, v3, v1

    aput-byte v5, v2, v1

    .line 114
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 119
    :cond_2
    sub-int v5, v1, v0

    aget-byte v6, v3, v1

    aput-byte v6, v4, v5

    goto :goto_3

    .line 124
    :cond_3
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Lcom/flurry/android/impl/ads/protocol/v13/SdkLogRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 54
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    :cond_0
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/flurry/sdk/cf;->c:Ljava/lang/String;

    const-string v2, "Ad log that has to be sent is EMPTY or NULL"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/cf;->b:Lcom/flurry/sdk/gh;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/gh;->a(Ljava/lang/Object;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :goto_1
    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0, v0, p2}, Lcom/flurry/sdk/cf;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0, p3, p4}, Lcom/flurry/sdk/cf;->b([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/flurry/sdk/cf;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to encode sdk log request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method protected a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/cf;->a([B)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 139
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    .line 141
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/flurry/sdk/cf;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FlurryAdLogsManager: start upload data with id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v2, Lcom/flurry/sdk/gk;

    invoke-direct {v2}, Lcom/flurry/sdk/gk;-><init>()V

    .line 144
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/gk;->a(Ljava/lang/String;)V

    .line 145
    const v0, 0x186a0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/gk;->a(I)V

    .line 146
    sget-object v0, Lcom/flurry/sdk/gl$a;->c:Lcom/flurry/sdk/gl$a;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/gk;->a(Lcom/flurry/sdk/gl$a;)V

    .line 147
    const-string v0, "Content-Type"

    const-string v3, "application/x-flurry"

    invoke-virtual {v2, v0, v3}, Lcom/flurry/sdk/gk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "Accept"

    const-string v3, "application/x-flurry"

    invoke-virtual {v2, v0, v3}, Lcom/flurry/sdk/gk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "FM-Checksum"

    invoke-static {v1}, Lcom/flurry/sdk/gh;->c([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/flurry/sdk/gk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v0, Lcom/flurry/sdk/gt;

    invoke-direct {v0}, Lcom/flurry/sdk/gt;-><init>()V

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/gk;->a(Lcom/flurry/sdk/gx;)V

    .line 151
    new-instance v0, Lcom/flurry/sdk/gt;

    invoke-direct {v0}, Lcom/flurry/sdk/gt;-><init>()V

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/gk;->b(Lcom/flurry/sdk/gx;)V

    .line 152
    invoke-virtual {v2, v1}, Lcom/flurry/sdk/gk;->a(Ljava/lang/Object;)V

    .line 153
    new-instance v0, Lcom/flurry/sdk/cf$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/flurry/sdk/cf$1;-><init>(Lcom/flurry/sdk/cf;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/gk;->a(Lcom/flurry/sdk/gk$a;)V

    .line 193
    invoke-static {}, Lcom/flurry/sdk/fn;->a()Lcom/flurry/sdk/fn;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/flurry/sdk/fn;->a(Ljava/lang/Object;Lcom/flurry/sdk/hr;)V

    .line 194
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/flurry/sdk/cf;->c:Ljava/lang/String;

    const-string v2, "Internal ERROR! Report is corrupt!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, p2, p3}, Lcom/flurry/sdk/cf;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a([BLjava/lang/String;)[B
    .locals 6

    .prologue
    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 75
    array-length v0, v1

    .line 76
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 78
    array-length v0, v2

    array-length v3, v1

    add-int/2addr v0, v3

    array-length v3, p1

    add-int/2addr v0, v3

    new-array v3, v0, [B

    .line 80
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 83
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 84
    aget-byte v4, v2, v0

    aput-byte v4, v3, v0

    .line 80
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    array-length v4, v2

    if-lt v0, v4, :cond_1

    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_1

    .line 87
    add-int/lit8 v4, v0, -0x4

    aget-byte v4, v1, v4

    aput-byte v4, v3, v0

    goto :goto_1

    .line 90
    :cond_1
    add-int/lit8 v4, v0, -0x4

    array-length v5, v1

    sub-int/2addr v4, v5

    aget-byte v4, p1, v4

    aput-byte v4, v3, v0

    goto :goto_1

    .line 94
    :cond_2
    return-object v3
.end method
