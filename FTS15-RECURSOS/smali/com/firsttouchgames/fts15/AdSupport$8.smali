.class final Lcom/firsttouchgames/fts15/AdSupport$8;
.super Ljava/lang/Object;
.source "AdSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firsttouchgames/fts15/AdSupport;->PlayAdColonyVideo(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bPostPopUp:Z

.field final synthetic val$bPrePopup:Z

.field final synthetic val$iZone:I


# direct methods
.method constructor <init>(IZZ)V
    .locals 0

    .prologue
    .line 441
    iput p1, p0, Lcom/firsttouchgames/fts15/AdSupport$8;->val$iZone:I

    iput-boolean p2, p0, Lcom/firsttouchgames/fts15/AdSupport$8;->val$bPrePopup:Z

    iput-boolean p3, p0, Lcom/firsttouchgames/fts15/AdSupport$8;->val$bPostPopUp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 444
    new-instance v1, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    sget-object v2, Lcom/firsttouchgames/fts15/AdSupport;->m_strAdColonyZoneIDs:[Ljava/lang/String;

    iget v3, p0, Lcom/firsttouchgames/fts15/AdSupport$8;->val$iZone:I

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/firsttouchgames/fts15/AdSupport;->m_sListerner:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    .line 446
    .local v0, "ad":Lcom/jirbo/adcolony/AdColonyV4VCAd;
    iget-boolean v1, p0, Lcom/firsttouchgames/fts15/AdSupport$8;->val$bPrePopup:Z

    if-ne v1, v4, :cond_0

    .line 447
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withConfirmationDialog()Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 449
    :cond_0
    iget-boolean v1, p0, Lcom/firsttouchgames/fts15/AdSupport$8;->val$bPostPopUp:Z

    if-ne v1, v4, :cond_1

    .line 450
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withResultsDialog()Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 452
    :cond_1
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    iget v1, p0, Lcom/firsttouchgames/fts15/AdSupport$8;->val$iZone:I

    sput v1, Lcom/firsttouchgames/fts15/AdSupport;->miZone:I

    .line 455
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show()V

    .line 456
    const/4 v1, 0x2

    sput v1, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 458
    :cond_2
    return-void
.end method
