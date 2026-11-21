.class Lcom/mopub/nativeads/ServerPositioningSource$3;
.super Ljava/lang/Object;
.source "ServerPositioningSource.java"

# interfaces
.implements Lcom/mopub/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/ServerPositioningSource;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/ServerPositioningSource;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/ServerPositioningSource;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mopub/nativeads/ServerPositioningSource$3;->this$0:Lcom/mopub/nativeads/ServerPositioningSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/mopub/volley/VolleyError;

    .prologue
    .line 88
    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v0

    sget-object v1, Lcom/mopub/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-virtual {v0, v1}, Lcom/mopub/network/MoPubNetworkError$Reason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    const-string v0, "Failed to load positioning data"

    invoke-static {v0, p1}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/ServerPositioningSource$3;->this$0:Lcom/mopub/nativeads/ServerPositioningSource;

    invoke-static {v0}, Lcom/mopub/nativeads/ServerPositioningSource;->access$200(Lcom/mopub/nativeads/ServerPositioningSource;)V

    .line 94
    return-void
.end method
