.class public final enum Lcom/flurry/sdk/dc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/dc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/dc;

.field public static final enum b:Lcom/flurry/sdk/dc;

.field public static final enum c:Lcom/flurry/sdk/dc;

.field public static final enum d:Lcom/flurry/sdk/dc;

.field private static final synthetic f:[Lcom/flurry/sdk/dc;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/flurry/sdk/dc;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/dc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/dc;->a:Lcom/flurry/sdk/dc;

    new-instance v0, Lcom/flurry/sdk/dc;

    const-string v1, "Linear"

    invoke-direct {v0, v1, v3, v3}, Lcom/flurry/sdk/dc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/dc;->b:Lcom/flurry/sdk/dc;

    new-instance v0, Lcom/flurry/sdk/dc;

    const-string v1, "NonLinearAds"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/dc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/dc;->c:Lcom/flurry/sdk/dc;

    new-instance v0, Lcom/flurry/sdk/dc;

    const-string v1, "CompanionAds"

    invoke-direct {v0, v1, v5, v5}, Lcom/flurry/sdk/dc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/dc;->d:Lcom/flurry/sdk/dc;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flurry/sdk/dc;

    sget-object v1, Lcom/flurry/sdk/dc;->a:Lcom/flurry/sdk/dc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/dc;->b:Lcom/flurry/sdk/dc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/dc;->c:Lcom/flurry/sdk/dc;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/dc;->d:Lcom/flurry/sdk/dc;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/dc;->f:[Lcom/flurry/sdk/dc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/flurry/sdk/dc;->e:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/dc;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/flurry/sdk/dc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dc;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/dc;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/flurry/sdk/dc;->f:[Lcom/flurry/sdk/dc;

    invoke-virtual {v0}, [Lcom/flurry/sdk/dc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/dc;

    return-object v0
.end method
