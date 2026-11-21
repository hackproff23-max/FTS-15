.class public Lcom/flurry/sdk/ed;
.super Lcom/flurry/sdk/fx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ed$a;
    }
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/ed$a;

.field public b:Lcom/flurry/sdk/a;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "com.flurry.android.impl.ads.views.AdViewEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/fx;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method
