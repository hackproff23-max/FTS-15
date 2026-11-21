.class final Lcom/firsttouchgames/fts15/AdSupport$1;
.super Ljava/lang/Object;
.source "AdSupport.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdListener;


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
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1
    .param p1, "arg0"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 121
    const/4 v0, 0x3

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 122
    return-void
.end method

.method public onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1
    .param p1, "arg0"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 128
    const/4 v0, 0x2

    sput v0, Lcom/firsttouchgames/fts15/AdSupport;->iStatus:I

    .line 129
    return-void
.end method
