.class public Lcom/firsttouchgames/fts15/URLManager;
.super Ljava/lang/Object;
.source "URLManager.java"


# static fields
.field static mActivity:Lcom/firsttouchgames/fts15/MainActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OpenWebpage(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bChooser"    # Z

    .prologue
    .line 14
    sget-object v0, Lcom/firsttouchgames/fts15/URLManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v0, p0, p1}, Lcom/firsttouchgames/fts15/MainActivity;->OpenWebpage(Ljava/lang/String;Z)V

    .line 15
    return-void
.end method

.method public static SetActivity(Lcom/firsttouchgames/fts15/MainActivity;)V
    .locals 0
    .param p0, "activity"    # Lcom/firsttouchgames/fts15/MainActivity;

    .prologue
    .line 9
    sput-object p0, Lcom/firsttouchgames/fts15/URLManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    .line 10
    return-void
.end method
