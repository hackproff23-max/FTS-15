.class public Lcom/flurry/sdk/ea;
.super Lcom/flurry/sdk/fx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ea$a;
    }
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/r;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Lcom/flurry/sdk/ea$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "com.flurry.android.impl.ads.views.ActivityEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/fx;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
