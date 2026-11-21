.class Lcom/mopub/mobileads/ToolbarWidget;
.super Landroid/widget/RelativeLayout;
.source "ToolbarWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/ToolbarWidget$1;,
        Lcom/mopub/mobileads/ToolbarWidget$Builder;
    }
.end annotation


# static fields
.field private static final IMAGE_PADDING_DIPS:I = 0x5

.field private static final IMAGE_SIDE_LENGTH_DIPS:I = 0x25

.field private static final TEXT_PADDING_DIPS:I = 0x5


# instance fields
.field private final mImagePadding:I

.field private final mImageSideLength:I

.field private mImageView:Landroid/widget/ImageView;

.field private final mTextPadding:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/ToolbarWidget$Builder;)V
    .locals 11
    .param p1, "builder"    # Lcom/mopub/mobileads/ToolbarWidget$Builder;

    .prologue
    const/16 v10, 0xf

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 118
    invoke-static {p1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->access$100(Lcom/mopub/mobileads/ToolbarWidget$Builder;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->access$200(Lcom/mopub/mobileads/ToolbarWidget$Builder;)F

    move-result v3

    invoke-direct {v2, v9, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 121
    .local v2, "toolbarLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->access$300(Lcom/mopub/mobileads/ToolbarWidget$Builder;)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 122
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/ToolbarWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    invoke-virtual {p0}, Lcom/mopub/mobileads/ToolbarWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mTextPadding:I

    .line 125
    invoke-virtual {p0}, Lcom/mopub/mobileads/ToolbarWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImagePadding:I

    .line 126
    const/high16 v3, 0x42140000    # 37.0f

    invoke-virtual {p0}, Lcom/mopub/mobileads/ToolbarWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImageSideLength:I

    .line 128
    invoke-static {p1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->access$400(Lcom/mopub/mobileads/ToolbarWidget$Builder;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/ToolbarWidget;->setVisibility(I)V

    .line 130
    invoke-static {p1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->access$500(Lcom/mopub/mobileads/ToolbarWidget$Builder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    invoke-static {p1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->access$600(Lcom/mopub/mobileads/ToolbarWidget$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 132
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mopub/mobileads/ToolbarWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImageView:Landroid/widget/ImageView;

    .line 133
    iget-object v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImageView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 135
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImageSideLength:I

    iget v4, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImageSideLength:I

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v0, "iconLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    invoke-static {p1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->access$700(Lcom/mopub/mobileads/ToolbarWidget$Builder;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    iget-object v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImageView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImagePadding:I

    iget v5, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImagePadding:I

    iget v6, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImagePadding:I

    iget v7, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImagePadding:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 144
    iget-object v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImageView:Landroid/widget/ImageView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 145
    iget-object v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 146
    iget-object v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImageView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->access$600(Lcom/mopub/mobileads/ToolbarWidget$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v0}, Lcom/mopub/mobileads/ToolbarWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .end local v0    # "iconLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-static {p1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->access$800(Lcom/mopub/mobileads/ToolbarWidget$Builder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mopub/mobileads/ToolbarWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mTextView:Landroid/widget/TextView;

    .line 153
    iget-object v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 154
    iget-object v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 155
    iget-object v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->access$900(Lcom/mopub/mobileads/ToolbarWidget$Builder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v1, "textLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    iget-object v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 161
    iget-object v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 166
    :goto_0
    iget-object v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mTextView:Landroid/widget/TextView;

    iget v4, p0, Lcom/mopub/mobileads/ToolbarWidget;->mTextPadding:I

    iget v5, p0, Lcom/mopub/mobileads/ToolbarWidget;->mTextPadding:I

    iget v6, p0, Lcom/mopub/mobileads/ToolbarWidget;->mTextPadding:I

    iget v7, p0, Lcom/mopub/mobileads/ToolbarWidget;->mTextPadding:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 168
    iget-object v3, p0, Lcom/mopub/mobileads/ToolbarWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v1}, Lcom/mopub/mobileads/ToolbarWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    .end local v1    # "textLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-static {p1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->access$1100(Lcom/mopub/mobileads/ToolbarWidget$Builder;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 172
    invoke-static {p1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->access$1100(Lcom/mopub/mobileads/ToolbarWidget$Builder;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/ToolbarWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    :cond_2
    return-void

    .line 163
    .restart local v1    # "textLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-static {p1}, Lcom/mopub/mobileads/ToolbarWidget$Builder;->access$1000(Lcom/mopub/mobileads/ToolbarWidget$Builder;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/ToolbarWidget$Builder;Lcom/mopub/mobileads/ToolbarWidget$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mopub/mobileads/ToolbarWidget$Builder;
    .param p2, "x1"    # Lcom/mopub/mobileads/ToolbarWidget$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/ToolbarWidget;-><init>(Lcom/mopub/mobileads/ToolbarWidget$Builder;)V

    return-void
.end method


# virtual methods
.method getImageViewDrawable()Lcom/mopub/mobileads/resource/TextDrawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/resource/TextDrawable;

    return-object v0
.end method

.method setImageViewDrawable(Lcom/mopub/mobileads/resource/TextDrawable;)V
    .locals 1
    .param p1, "drawable"    # Lcom/mopub/mobileads/resource/TextDrawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImageView:Landroid/widget/ImageView;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "drawable":Lcom/mopub/mobileads/resource/TextDrawable;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    return-void
.end method

.method updateImageText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/mopub/mobileads/ToolbarWidget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/resource/TextDrawable;

    .line 185
    .local v1, "textDrawable":Lcom/mopub/mobileads/resource/TextDrawable;
    invoke-interface {v1, p1}, Lcom/mopub/mobileads/resource/TextDrawable;->updateText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "textDrawable":Lcom/mopub/mobileads/resource/TextDrawable;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Unable to update ToolbarWidget text."

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method updateText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mopub/mobileads/ToolbarWidget;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/mopub/mobileads/ToolbarWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_0
    return-void
.end method
