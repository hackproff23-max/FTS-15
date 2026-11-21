.class Lcom/flurry/sdk/ja$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ja;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/flurry/sdk/jf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/jf",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ja;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ja;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/flurry/sdk/ja$12;->a:Lcom/flurry/sdk/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method
