.class public Lcom/firsttouchgames/fts15/ExpansionDownloaderService;
.super Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.source "ExpansionDownloaderService.java"


# static fields
.field private static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlyXuQblpTeRVqeKX/QstKd8cvWOWYE59iA1UypIM2Lt/Ofvg2Nv7xcyXgS0IJnByT/LM8OOhrTxZn9bdaZhxLL/ManPF98JQCjfAxN1EFePvAOqFj6Ib42iBwBf7SPp3yGQLJsS3CjcWfBaRvrY8QxVZ3IZFEMg79fnyuFn9AN3ZWVfMymeL9KceH1BDb30FGMYq1wmenmdyPpTZ8KOElsUEQlpVWTc8jbVtwHQhLrvFKdaEjADH2G8xylAmqWRpxzlCaSmWpM6tM5bepT6alWUZAguwdZMUA3CkxvZbAQUSL2igoaYckHvg9xGBXTIxWuIT0Ng3/sMuwiZiz3jkCwIDAQAB"

.field private static final SALT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/firsttouchgames/fts15/ExpansionDownloaderService;->SALT:[B

    return-void

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
    .line 25
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmReceiverClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/firsttouchgames/fts15/SimpleAlarmReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlyXuQblpTeRVqeKX/QstKd8cvWOWYE59iA1UypIM2Lt/Ofvg2Nv7xcyXgS0IJnByT/LM8OOhrTxZn9bdaZhxLL/ManPF98JQCjfAxN1EFePvAOqFj6Ib42iBwBf7SPp3yGQLJsS3CjcWfBaRvrY8QxVZ3IZFEMg79fnyuFn9AN3ZWVfMymeL9KceH1BDb30FGMYq1wmenmdyPpTZ8KOElsUEQlpVWTc8jbVtwHQhLrvFKdaEjADH2G8xylAmqWRpxzlCaSmWpM6tM5bepT6alWUZAguwdZMUA3CkxvZbAQUSL2igoaYckHvg9xGBXTIxWuIT0Ng3/sMuwiZiz3jkCwIDAQAB"

    return-object v0
.end method

.method public getSALT()[B
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/firsttouchgames/fts15/ExpansionDownloaderService;->SALT:[B

    return-object v0
.end method
