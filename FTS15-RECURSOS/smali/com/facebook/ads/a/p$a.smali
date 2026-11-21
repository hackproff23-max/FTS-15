.class public Lcom/facebook/ads/a/p$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/a/p$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/a/p$a;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/facebook/ads/a/p$a;->c:Z

    return-void
.end method
