.class Lcom/mopub/mobileads/util/vast/VastManager$1;
.super Ljava/lang/Object;
.source "VastManager.java"

# interfaces
.implements Lcom/mopub/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/util/vast/VastManager;->onAggregationComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/util/vast/VastManager;

.field final synthetic val$vastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/util/vast/VastManager;Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->this$0:Lcom/mopub/mobileads/util/vast/VastManager;

    iput-object p2, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->val$vastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 83
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->this$0:Lcom/mopub/mobileads/util/vast/VastManager;

    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->val$vastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/vast/VastManager;->access$000(Lcom/mopub/mobileads/util/vast/VastManager;Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->this$0:Lcom/mopub/mobileads/util/vast/VastManager;

    invoke-static {v0}, Lcom/mopub/mobileads/util/vast/VastManager;->access$100(Lcom/mopub/mobileads/util/vast/VastManager;)Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->val$vastVideoConfiguration:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager$1;->this$0:Lcom/mopub/mobileads/util/vast/VastManager;

    invoke-static {v0}, Lcom/mopub/mobileads/util/vast/VastManager;->access$100(Lcom/mopub/mobileads/util/vast/VastManager;)Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V

    goto :goto_0
.end method
