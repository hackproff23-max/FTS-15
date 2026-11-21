.class Lcom/mopub/nativeads/NativeViewHolder;
.super Ljava/lang/Object;
.source "NativeViewHolder.java"


# static fields
.field static final EMPTY_VIEW_HOLDER:Lcom/mopub/nativeads/NativeViewHolder;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field callToActionView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field iconImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mainImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field textView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field titleView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/mopub/nativeads/NativeViewHolder;

    invoke-direct {v0}, Lcom/mopub/nativeads/NativeViewHolder;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/NativeViewHolder;->EMPTY_VIEW_HOLDER:Lcom/mopub/nativeads/NativeViewHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contents"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to add text ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to null TextView."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    if-nez p2, :cond_1

    .line 84
    const-string v0, "Attempted to set TextView contents to null."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static fromViewBinder(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/NativeViewHolder;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "viewBinder"    # Lcom/mopub/nativeads/ViewBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 27
    new-instance v1, Lcom/mopub/nativeads/NativeViewHolder;

    invoke-direct {v1}, Lcom/mopub/nativeads/NativeViewHolder;-><init>()V

    .line 30
    .local v1, "nativeViewHolder":Lcom/mopub/nativeads/NativeViewHolder;
    :try_start_0
    iget v2, p1, Lcom/mopub/nativeads/ViewBinder;->titleId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mopub/nativeads/NativeViewHolder;->titleView:Landroid/widget/TextView;

    .line 31
    iget v2, p1, Lcom/mopub/nativeads/ViewBinder;->textId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mopub/nativeads/NativeViewHolder;->textView:Landroid/widget/TextView;

    .line 32
    iget v2, p1, Lcom/mopub/nativeads/ViewBinder;->callToActionId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mopub/nativeads/NativeViewHolder;->callToActionView:Landroid/widget/TextView;

    .line 33
    iget v2, p1, Lcom/mopub/nativeads/ViewBinder;->mainImageId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mopub/nativeads/NativeViewHolder;->mainImageView:Landroid/widget/ImageView;

    .line 34
    iget v2, p1, Lcom/mopub/nativeads/ViewBinder;->iconImageId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mopub/nativeads/NativeViewHolder;->iconImageView:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v1    # "nativeViewHolder":Lcom/mopub/nativeads/NativeViewHolder;
    :goto_0
    return-object v1

    .line 36
    .restart local v1    # "nativeViewHolder":Lcom/mopub/nativeads/NativeViewHolder;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "exception":Ljava/lang/ClassCastException;
    const-string v2, "Could not cast from id in ViewBinder to expected View type"

    invoke-static {v2, v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    sget-object v1, Lcom/mopub/nativeads/NativeViewHolder;->EMPTY_VIEW_HOLDER:Lcom/mopub/nativeads/NativeViewHolder;

    goto :goto_0
.end method


# virtual methods
.method update(Lcom/mopub/nativeads/NativeResponse;)V
    .locals 2
    .param p1, "nativeResponse"    # Lcom/mopub/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mopub/nativeads/NativeViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/NativeViewHolder;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/mopub/nativeads/NativeViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/NativeViewHolder;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/mopub/nativeads/NativeViewHolder;->callToActionView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeResponse;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/NativeViewHolder;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/mopub/nativeads/NativeViewHolder;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/mopub/nativeads/NativeResponse;->loadMainImage(Landroid/widget/ImageView;)V

    .line 47
    iget-object v0, p0, Lcom/mopub/nativeads/NativeViewHolder;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/mopub/nativeads/NativeResponse;->loadIconImage(Landroid/widget/ImageView;)V

    .line 48
    return-void
.end method

.method updateExtras(Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;Lcom/mopub/nativeads/ViewBinder;)V
    .locals 8
    .param p1, "outerView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "nativeResponse"    # Lcom/mopub/nativeads/NativeResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "viewBinder"    # Lcom/mopub/nativeads/ViewBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    .line 53
    iget-object v5, p3, Lcom/mopub/nativeads/ViewBinder;->extras:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p3, Lcom/mopub/nativeads/ViewBinder;->extras:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 55
    .local v3, "resourceId":I
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 56
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p2, v2}, Lcom/mopub/nativeads/NativeResponse;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "content":Ljava/lang/Object;
    instance-of v5, v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    move-object v5, v4

    .line 60
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    check-cast v4, Landroid/widget/ImageView;

    .end local v4    # "view":Landroid/view/View;
    invoke-virtual {p2, v2, v4}, Lcom/mopub/nativeads/NativeResponse;->loadExtrasImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 62
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 64
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 66
    check-cast v4, Landroid/widget/TextView;

    .end local v4    # "view":Landroid/view/View;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "content":Ljava/lang/Object;
    invoke-direct {p0, v4, v0}, Lcom/mopub/nativeads/NativeViewHolder;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .restart local v0    # "content":Ljava/lang/Object;
    .restart local v4    # "view":Landroid/view/View;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View bound to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " should be an instance of TextView or ImageView."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v0    # "content":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "resourceId":I
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method
