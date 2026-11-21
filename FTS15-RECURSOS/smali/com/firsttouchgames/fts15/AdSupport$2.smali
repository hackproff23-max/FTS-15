.class final Lcom/firsttouchgames/fts15/AdSupport$2;
.super Ljava/lang/Object;
.source "AdSupport.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyV4VCListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/fts15/AdSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdColonyV4VCReward(Lcom/jirbo/adcolony/AdColonyV4VCReward;)V
    .locals 2
    .param p1, "arg0"    # Lcom/jirbo/adcolony/AdColonyV4VCReward;

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyV4VCReward;->amount()I

    move-result v0

    .line 140
    .local v0, "iReward":I
    if-lez v0, :cond_0

    .line 142
    invoke-static {v0}, Lcom/firsttouchgames/fts15/AdSupport;->access$000(I)V

    .line 143
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/firsttouchgames/fts15/AdSupport;->SetStatus(I)V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/firsttouchgames/fts15/AdSupport;->SetStatus(I)V

    goto :goto_0
.end method
