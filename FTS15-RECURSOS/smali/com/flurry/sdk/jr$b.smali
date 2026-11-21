.class abstract Lcom/flurry/sdk/jr$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field final g:Ljava/lang/String;

.field final h:Z

.field final i:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/flurry/sdk/jr$b;->g:Ljava/lang/String;

    .line 150
    iput-boolean p2, p0, Lcom/flurry/sdk/jr$b;->h:Z

    .line 151
    iput-boolean p3, p0, Lcom/flurry/sdk/jr$b;->i:Z

    .line 152
    return-void
.end method


# virtual methods
.method abstract a(Lcom/flurry/sdk/jx;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
