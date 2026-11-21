.class public final enum Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

.field public static final enum BANNER:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

.field public static final enum INTERSTITIAL:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

.field public static final enum LEGACY:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

.field public static final enum NATIVE:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

.field public static final enum STREAM:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->LEGACY:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    new-instance v0, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->BANNER:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    new-instance v0, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->INTERSTITIAL:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    new-instance v0, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    const-string v1, "STREAM"

    invoke-direct {v0, v1, v5}, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->STREAM:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    new-instance v0, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v6}, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->NATIVE:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    sget-object v1, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->LEGACY:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->BANNER:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->INTERSTITIAL:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->STREAM:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->NATIVE:Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->$VALUES:[Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->$VALUES:[Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    invoke-virtual {v0}, [Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/impl/ads/protocol/v13/AdViewType;

    return-object v0
.end method
