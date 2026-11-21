.class Lcom/mopub/mobileads/VastVideoToolbar$1;
.super Ljava/lang/Object;
.source "VastVideoToolbar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoToolbar;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoToolbar;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoToolbar;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoToolbar$1;->this$0:Lcom/mopub/mobileads/VastVideoToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method
