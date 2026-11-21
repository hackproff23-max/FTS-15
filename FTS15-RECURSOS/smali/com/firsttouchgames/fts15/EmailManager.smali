.class public Lcom/firsttouchgames/fts15/EmailManager;
.super Landroid/app/Activity;
.source "EmailManager.java"


# static fields
.field static mActivity:Lcom/firsttouchgames/fts15/MainActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static EmailAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "sSubject"    # Ljava/lang/String;
    .param p1, "sBody"    # Ljava/lang/String;
    .param p2, "sFileName"    # Ljava/lang/String;

    .prologue
    .line 18
    sget-object v0, Lcom/firsttouchgames/fts15/EmailManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v0, p0, p1, p2}, Lcom/firsttouchgames/fts15/MainActivity;->EmailAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static SetActivity(Lcom/firsttouchgames/fts15/MainActivity;)V
    .locals 0
    .param p0, "activity"    # Lcom/firsttouchgames/fts15/MainActivity;

    .prologue
    .line 13
    sput-object p0, Lcom/firsttouchgames/fts15/EmailManager;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    .line 14
    return-void
.end method
