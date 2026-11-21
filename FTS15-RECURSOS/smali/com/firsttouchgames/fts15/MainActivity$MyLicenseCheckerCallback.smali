.class Lcom/firsttouchgames/fts15/MainActivity$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/fts15/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firsttouchgames/fts15/MainActivity;


# direct methods
.method private constructor <init>(Lcom/firsttouchgames/fts15/MainActivity;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lcom/firsttouchgames/fts15/MainActivity$MyLicenseCheckerCallback;->this$0:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/firsttouchgames/fts15/MainActivity;Lcom/firsttouchgames/fts15/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/firsttouchgames/fts15/MainActivity;
    .param p2, "x1"    # Lcom/firsttouchgames/fts15/MainActivity$1;

    .prologue
    .line 984
    invoke-direct {p0, p1}, Lcom/firsttouchgames/fts15/MainActivity$MyLicenseCheckerCallback;-><init>(Lcom/firsttouchgames/fts15/MainActivity;)V

    return-void
.end method


# virtual methods
.method public allow(I)V
    .locals 1
    .param p1, "policyReason"    # I

    .prologue
    .line 986
    iget-object v0, p0, Lcom/firsttouchgames/fts15/MainActivity$MyLicenseCheckerCallback;->this$0:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    :cond_0
    return-void
.end method

.method public applicationError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/firsttouchgames/fts15/MainActivity$MyLicenseCheckerCallback;->this$0:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    :cond_0
    return-void
.end method

.method public dontAllow(I)V
    .locals 1
    .param p1, "policyReason"    # I

    .prologue
    .line 995
    iget-object v0, p0, Lcom/firsttouchgames/fts15/MainActivity$MyLicenseCheckerCallback;->this$0:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    :cond_0
    return-void
.end method
