.class public Lcom/flurry/sdk/fs;
.super Lcom/flurry/sdk/fx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/fs$a;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/flurry/sdk/fs$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "com.flurry.android.sdk.ActivityLifecycleEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/fx;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method
