.class public abstract enum Lcom/flurry/sdk/ip;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/ip;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ip;

.field public static final enum b:Lcom/flurry/sdk/ip;

.field private static final synthetic c:[Lcom/flurry/sdk/ip;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/flurry/sdk/ip$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/ip$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ip;->a:Lcom/flurry/sdk/ip;

    .line 45
    new-instance v0, Lcom/flurry/sdk/ip$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/ip$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ip;->b:Lcom/flurry/sdk/ip;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flurry/sdk/ip;

    sget-object v1, Lcom/flurry/sdk/ip;->a:Lcom/flurry/sdk/ip;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/ip;->b:Lcom/flurry/sdk/ip;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flurry/sdk/ip;->c:[Lcom/flurry/sdk/ip;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/flurry/sdk/ip$1;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ip;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ip;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/flurry/sdk/ip;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ip;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/ip;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/flurry/sdk/ip;->c:[Lcom/flurry/sdk/ip;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ip;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ip;

    return-object v0
.end method
