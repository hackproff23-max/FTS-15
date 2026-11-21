.class final Lcom/firsttouchgames/fts15/AdSupport$7;
.super Ljava/lang/Object;
.source "AdSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firsttouchgames/fts15/AdSupport;->PlayAdColonyVideo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$iZone:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 423
    iput p1, p0, Lcom/firsttouchgames/fts15/AdSupport$7;->val$iZone:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 426
    new-instance v1, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    sget-object v2, Lcom/firsttouchgames/fts15/AdSupport;->m_strAdColonyZoneIDs:[Ljava/lang/String;

    iget v3, p0, Lcom/firsttouchgames/fts15/AdSupport$7;->val$iZone:I

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/firsttouchgames/fts15/AdSupport;->m_sListerner:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withConfirmationDialog()Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withResultsDialog()Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    .line 428
    .local v0, "ad":Lcom/jirbo/adcolony/AdColonyV4VCAd;
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget v1, p0, Lcom/firsttouchgames/fts15/AdSupport$7;->val$iZone:I

    sput v1, Lcom/firsttouchgames/fts15/AdSupport;->miZone:I

    .line 431
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show()V

    .line 432
    const/4 v1, 0x2

    sput v1, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 434
    :cond_0
    return-void
.end method
