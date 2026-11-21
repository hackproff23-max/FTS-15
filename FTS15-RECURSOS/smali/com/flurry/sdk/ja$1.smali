.class Lcom/flurry/sdk/ja$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/jf;
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
.field final synthetic a:Lcom/flurry/sdk/ic;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/flurry/sdk/ja;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ja;Lcom/flurry/sdk/ic;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flurry/sdk/ja$1;->c:Lcom/flurry/sdk/ja;

    iput-object p2, p0, Lcom/flurry/sdk/ja$1;->a:Lcom/flurry/sdk/ic;

    iput-object p3, p0, Lcom/flurry/sdk/ja$1;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flurry/sdk/ja$1;->a:Lcom/flurry/sdk/ic;

    iget-object v1, p0, Lcom/flurry/sdk/ja$1;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/ic;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
