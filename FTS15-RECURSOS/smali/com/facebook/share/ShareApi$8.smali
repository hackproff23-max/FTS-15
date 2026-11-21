.class final Lcom/facebook/share/ShareApi$8;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$ValueMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapValue(Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "onMapValueCompleteListener"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 423
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 424
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/facebook/share/ShareApi;->access$100(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    .line 434
    :goto_0
    return-void

    .line 425
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_1

    .line 426
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphObject;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/facebook/share/ShareApi;->access$200(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_0

    .line 429
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_2

    .line 430
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/facebook/share/ShareApi;->access$300(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_0

    .line 432
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    invoke-interface {p2, p1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_0
.end method
