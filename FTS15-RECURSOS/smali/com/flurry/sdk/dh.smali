.class public Lcom/flurry/sdk/dh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/dh$1;,
        Lcom/flurry/sdk/dh$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/dh$1;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/flurry/sdk/dh;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 3
    iput-object p1, p0, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/dh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 3
    iput-object p1, p0, Lcom/flurry/sdk/dh;->b:Ljava/lang/String;

    return-object p1
.end method
