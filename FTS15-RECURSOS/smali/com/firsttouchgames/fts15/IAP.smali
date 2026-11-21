.class public Lcom/firsttouchgames/fts15/IAP;
.super Ljava/lang/Object;
.source "IAP.java"


# static fields
.field public static final GPIAP_STATE_INVENTORYFAIL:I = 0xc

.field public static final IAP_STATE_CONSUMECOMPLETE:I = 0x8

.field public static final IAP_STATE_CONSUMEINPROGRESS:I = 0x9

.field public static final IAP_STATE_CONSUMFAILED:I = 0xa

.field public static final IAP_STATE_INITIALISED:I = 0x1

.field public static final IAP_STATE_PURCHASECOMPLETE:I = 0x6

.field public static final IAP_STATE_PURCHASEFAILED:I = 0x7

.field public static final IAP_STATE_PURCHASEINPROGRESS:I = 0x4

.field public static final IAP_STATE_PURCHASEREFRESHINVENTORY:I = 0x5

.field public static final IAP_STATE_PURCHASEREFRESHINVENTORYPROGRESS:I = 0xb

.field public static final IAP_STATE_READY:I = 0x2

.field public static final IAP_STATE_READY2:I = 0x3

.field public static final IAP_STATE_UNINITIALISED:I = 0x0

.field static final RC_REQUEST:I = 0x2711

.field static final TAG:Ljava/lang/String; = "IAP"

.field static base64EncodedPublicKey:Ljava/lang/String;

.field static iStatus:I

.field static mActivity:Landroid/app/Activity;

.field static mConsumeFinishedListener:Lcom/firsttouchgames/util/IabHelper$OnConsumeFinishedListener;

.field static mContext:Landroid/content/Context;

.field static mGotInventoryListener:Lcom/firsttouchgames/util/IabHelper$QueryInventoryFinishedListener;

.field static mHelper:Lcom/firsttouchgames/util/IabHelper;

.field static mInventory:Lcom/firsttouchgames/util/Inventory;

.field static mPurchaseFinishedListener:Lcom/firsttouchgames/util/IabHelper$OnIabPurchaseFinishedListener;

.field static mSkuInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mbSetupFinished:Z

.field static sConsuming:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    .line 195
    new-instance v0, Lcom/firsttouchgames/fts15/IAP$1;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/IAP$1;-><init>()V

    sput-object v0, Lcom/firsttouchgames/fts15/IAP;->mPurchaseFinishedListener:Lcom/firsttouchgames/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 283
    new-instance v0, Lcom/firsttouchgames/fts15/IAP$3;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/IAP$3;-><init>()V

    sput-object v0, Lcom/firsttouchgames/fts15/IAP;->mGotInventoryListener:Lcom/firsttouchgames/util/IabHelper$QueryInventoryFinishedListener;

    .line 326
    new-instance v0, Lcom/firsttouchgames/fts15/IAP$4;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/IAP$4;-><init>()V

    sput-object v0, Lcom/firsttouchgames/fts15/IAP;->mConsumeFinishedListener:Lcom/firsttouchgames/util/IabHelper$OnConsumeFinishedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AcknowledgeResult()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x2

    sput v0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    .line 146
    return-void
.end method

.method public static AddSku(Ljava/lang/String;)V
    .locals 1
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->mSkuInfo:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public static Buy(Ljava/lang/String;)V
    .locals 4
    .param p0, "skuID"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v0, "IAP"

    const-string v1, "Buy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x4

    sput v0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    .line 180
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->mHelper:Lcom/firsttouchgames/util/IabHelper;

    sget-object v1, Lcom/firsttouchgames/fts15/IAP;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x2711

    sget-object v3, Lcom/firsttouchgames/fts15/IAP;->mPurchaseFinishedListener:Lcom/firsttouchgames/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/firsttouchgames/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/firsttouchgames/util/IabHelper$OnIabPurchaseFinishedListener;)V

    .line 181
    return-void
.end method

.method public static Consume(Ljava/lang/String;)V
    .locals 3
    .param p0, "sSku"    # Ljava/lang/String;

    .prologue
    .line 160
    sput-object p0, Lcom/firsttouchgames/fts15/IAP;->sConsuming:Ljava/lang/String;

    .line 161
    const/16 v0, 0x9

    sput v0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    .line 163
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->mHelper:Lcom/firsttouchgames/util/IabHelper;

    sget-object v1, Lcom/firsttouchgames/fts15/IAP;->mInventory:Lcom/firsttouchgames/util/Inventory;

    invoke-virtual {v1, p0}, Lcom/firsttouchgames/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/firsttouchgames/util/Purchase;

    move-result-object v1

    sget-object v2, Lcom/firsttouchgames/fts15/IAP;->mConsumeFinishedListener:Lcom/firsttouchgames/util/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v0, v1, v2}, Lcom/firsttouchgames/util/IabHelper;->consumeAsync(Lcom/firsttouchgames/util/Purchase;Lcom/firsttouchgames/util/IabHelper$OnConsumeFinishedListener;)V

    .line 164
    return-void
.end method

.method public static Exit()V
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->mHelper:Lcom/firsttouchgames/util/IabHelper;

    invoke-virtual {v0}, Lcom/firsttouchgames/util/IabHelper;->dispose()V

    .line 366
    return-void
.end method

.method public static GetConsumed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->sConsuming:Ljava/lang/String;

    return-object v0
.end method

.method public static GetPrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "skuID"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-object v1, Lcom/firsttouchgames/fts15/IAP;->mInventory:Lcom/firsttouchgames/util/Inventory;

    invoke-virtual {v1, p0}, Lcom/firsttouchgames/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/firsttouchgames/util/SkuDetails;

    move-result-object v0

    .line 189
    .local v0, "details":Lcom/firsttouchgames/util/SkuDetails;
    invoke-virtual {v0}, Lcom/firsttouchgames/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetStatus()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    return v0
.end method

.method public static HandleActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 316
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->mHelper:Lcom/firsttouchgames/util/IabHelper;

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->mHelper:Lcom/firsttouchgames/util/IabHelper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/firsttouchgames/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    .line 319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static HasBeenSetup()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/firsttouchgames/fts15/IAP;->mbSetupFinished:Z

    return v0
.end method

.method public static HasPurchased(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sSku"    # Ljava/lang/String;

    .prologue
    .line 151
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->mInventory:Lcom/firsttouchgames/util/Inventory;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->mInventory:Lcom/firsttouchgames/util/Inventory;

    invoke-virtual {v0, p0}, Lcom/firsttouchgames/util/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    sput-boolean v3, Lcom/firsttouchgames/fts15/IAP;->mbSetupFinished:Z

    .line 243
    new-instance v0, Lcom/firsttouchgames/util/IabHelper;

    sget-object v1, Lcom/firsttouchgames/fts15/IAP;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/firsttouchgames/fts15/IAP;->base64EncodedPublicKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/firsttouchgames/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/firsttouchgames/fts15/IAP;->mHelper:Lcom/firsttouchgames/util/IabHelper;

    .line 246
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->mHelper:Lcom/firsttouchgames/util/IabHelper;

    invoke-virtual {v0, v3}, Lcom/firsttouchgames/util/IabHelper;->enableDebugLogging(Z)V

    .line 254
    const/4 v0, 0x1

    sput v0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    .line 258
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->mHelper:Lcom/firsttouchgames/util/IabHelper;

    new-instance v1, Lcom/firsttouchgames/fts15/IAP$2;

    invoke-direct {v1}, Lcom/firsttouchgames/fts15/IAP$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/util/IabHelper;->startSetup(Lcom/firsttouchgames/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 278
    return-void
.end method

.method public static QueryInventoryAsync()V
    .locals 4

    .prologue
    .line 119
    sget-object v0, Lcom/firsttouchgames/fts15/IAP;->mHelper:Lcom/firsttouchgames/util/IabHelper;

    const/4 v1, 0x1

    sget-object v2, Lcom/firsttouchgames/fts15/IAP;->mSkuInfo:Ljava/util/List;

    sget-object v3, Lcom/firsttouchgames/fts15/IAP;->mGotInventoryListener:Lcom/firsttouchgames/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/firsttouchgames/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/firsttouchgames/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 120
    return-void
.end method

.method public static SetActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 90
    sput-object p0, Lcom/firsttouchgames/fts15/IAP;->mActivity:Landroid/app/Activity;

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/fts15/IAP;->mContext:Landroid/content/Context;

    .line 93
    const/4 v0, 0x0

    sput v0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    .line 94
    return-void
.end method

.method public static SetPublicKeyAndSkuCount(Ljava/lang/String;I)V
    .locals 1
    .param p0, "base64PublicKey"    # Ljava/lang/String;
    .param p1, "iMaxSkus"    # I

    .prologue
    .line 98
    sput-object p0, Lcom/firsttouchgames/fts15/IAP;->base64EncodedPublicKey:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/firsttouchgames/fts15/IAP;->mSkuInfo:Ljava/util/List;

    .line 104
    return-void
.end method

.method public static SetStatus(I)V
    .locals 0
    .param p0, "iNewStatus"    # I

    .prologue
    .line 139
    sput p0, Lcom/firsttouchgames/fts15/IAP;->iStatus:I

    .line 140
    return-void
.end method

.method static complain(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 355
    return-void
.end method

.method public static temp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "IAP"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method
