.class public Lcom/mopub/network/MoPubNetworkError;
.super Lcom/mopub/volley/VolleyError;
.source "MoPubNetworkError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/MoPubNetworkError$Reason;
    }
.end annotation


# instance fields
.field private final mReason:Lcom/mopub/network/MoPubNetworkError$Reason;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mopub/network/MoPubNetworkError$Reason;)V
    .locals 0
    .param p1, "reason"    # Lcom/mopub/network/MoPubNetworkError$Reason;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mopub/volley/VolleyError;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mopub/network/MoPubNetworkError;->mReason:Lcom/mopub/network/MoPubNetworkError$Reason;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/NetworkResponse;Lcom/mopub/network/MoPubNetworkError$Reason;)V
    .locals 0
    .param p1, "networkResponse"    # Lcom/mopub/volley/NetworkResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "reason"    # Lcom/mopub/network/MoPubNetworkError$Reason;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    .line 27
    iput-object p2, p0, Lcom/mopub/network/MoPubNetworkError;->mReason:Lcom/mopub/network/MoPubNetworkError$Reason;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "reason"    # Lcom/mopub/network/MoPubNetworkError$Reason;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p2, p0, Lcom/mopub/network/MoPubNetworkError;->mReason:Lcom/mopub/network/MoPubNetworkError$Reason;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "reason"    # Lcom/mopub/network/MoPubNetworkError$Reason;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    iput-object p3, p0, Lcom/mopub/network/MoPubNetworkError;->mReason:Lcom/mopub/network/MoPubNetworkError$Reason;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "reason"    # Lcom/mopub/network/MoPubNetworkError$Reason;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 32
    iput-object p2, p0, Lcom/mopub/network/MoPubNetworkError;->mReason:Lcom/mopub/network/MoPubNetworkError$Reason;

    .line 33
    return-void
.end method


# virtual methods
.method public getReason()Lcom/mopub/network/MoPubNetworkError$Reason;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mopub/network/MoPubNetworkError;->mReason:Lcom/mopub/network/MoPubNetworkError$Reason;

    return-object v0
.end method
