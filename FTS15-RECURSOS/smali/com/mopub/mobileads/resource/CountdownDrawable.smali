.class public Lcom/mopub/mobileads/resource/CountdownDrawable;
.super Lcom/mopub/mobileads/resource/CircleDrawable;
.source "CountdownDrawable.java"

# interfaces
.implements Lcom/mopub/mobileads/resource/TextDrawable;


# static fields
.field private static final TEXT_SIZE_SP:F = 18.0f


# instance fields
.field private mSecondsRemaining:Ljava/lang/String;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private mTextRect:Landroid/graphics/Rect;

.field private final textSizePixels:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mopub/mobileads/resource/CircleDrawable;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mSecondsRemaining:Ljava/lang/String;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 25
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToFloatPixels(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->textSizePixels:F

    .line 27
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->textSizePixels:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 28
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mTextRect:Landroid/graphics/Rect;

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/mopub/mobileads/resource/CircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 40
    iget-object v3, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mSecondsRemaining:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 44
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/CountdownDrawable;->getCenterX()I

    move-result v3

    iget-object v4, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 45
    .local v1, "x":I
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/CountdownDrawable;->getCenterY()I

    move-result v3

    iget-object v4, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 47
    .local v2, "y":I
    int-to-float v3, v1

    int-to-float v4, v2

    iget-object v5, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 48
    return-void
.end method

.method public updateText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mSecondsRemaining:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iput-object p1, p0, Lcom/mopub/mobileads/resource/CountdownDrawable;->mSecondsRemaining:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/CountdownDrawable;->invalidateSelf()V

    .line 59
    :cond_0
    return-void
.end method
