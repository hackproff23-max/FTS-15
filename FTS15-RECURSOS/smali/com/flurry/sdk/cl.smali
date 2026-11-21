.class public Lcom/flurry/sdk/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/gx",
        "<TObjectType;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TObjectType;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/flurry/sdk/ia;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/cl;-><init>(Ljava/lang/Class;Z)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TObjectType;>;Z)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/flurry/sdk/cl;->a:Ljava/lang/Class;

    .line 39
    new-instance v0, Lcom/flurry/sdk/ib;

    invoke-direct {v0}, Lcom/flurry/sdk/ib;-><init>()V

    .line 40
    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/flurry/sdk/ib;->a()Lcom/flurry/sdk/ib;

    .line 43
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/sdk/ib;->b()Lcom/flurry/sdk/ia;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cl;->b:Lcom/flurry/sdk/ia;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "TObjectType;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 54
    iget-object v1, p0, Lcom/flurry/sdk/cl;->b:Lcom/flurry/sdk/ia;

    invoke-virtual {v1, p2, v0}, Lcom/flurry/sdk/ia;->a(Ljava/lang/Object;Ljava/lang/Appendable;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    goto :goto_0
.end method

.method public b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TObjectType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/cl;->b:Lcom/flurry/sdk/ia;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iget-object v2, p0, Lcom/flurry/sdk/cl;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ia;->a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
