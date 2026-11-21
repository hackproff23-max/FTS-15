.class Lcom/flurry/sdk/dv;
.super Landroid/widget/MediaController;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/PopupWindow;

.field private g:Lcom/flurry/sdk/dy;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/ImageButton;

.field private n:Lcom/flurry/sdk/ep;

.field private o:I

.field private p:I

.field private q:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/flurry/sdk/dv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    .line 38
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/flurry/sdk/hn;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/dv;->b:I

    .line 39
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/flurry/sdk/hn;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/dv;->c:I

    .line 40
    const/16 v0, 0x23

    invoke-static {v0}, Lcom/flurry/sdk/hn;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/dv;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/dy;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 52
    iput v1, p0, Lcom/flurry/sdk/dv;->o:I

    .line 53
    iput v1, p0, Lcom/flurry/sdk/dv;->p:I

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/flurry/sdk/dv;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/dv;->a(Landroid/content/Context;Lcom/flurry/sdk/dy;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dv;)Lcom/flurry/sdk/dy;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/dy;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 171
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update initLayout Video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    .line 173
    iget-object v0, p0, Lcom/flurry/sdk/dv;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 174
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/dv;->e:Landroid/widget/RelativeLayout;

    .line 175
    iget-object v0, p0, Lcom/flurry/sdk/dv;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 176
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 178
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/flurry/sdk/dv$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$2;-><init>(Lcom/flurry/sdk/dv;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 185
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/flurry/sdk/dy;)V
    .locals 2

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 136
    :cond_0
    iput-object p2, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/dy;

    .line 139
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->c()V

    .line 140
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dv;->a(Landroid/content/Context;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dv;->b(Landroid/content/Context;)V

    .line 142
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dv;->c(Landroid/content/Context;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dv;->d(Landroid/content/Context;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dv;->e(Landroid/content/Context;)V

    .line 145
    iget-object v0, p0, Lcom/flurry/sdk/dv;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 146
    iget-object v0, p0, Lcom/flurry/sdk/dv;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/flurry/sdk/dv$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$1;-><init>(Lcom/flurry/sdk/dv;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/dv;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/flurry/sdk/dv;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 280
    :goto_0
    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/flurry/sdk/dv;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 285
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 279
    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dv;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v3, -0x2

    const/4 v1, 0x0

    .line 190
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/dv;->l:Landroid/widget/ImageButton;

    .line 191
    iget-object v0, p0, Lcom/flurry/sdk/dv;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 192
    iget-object v0, p0, Lcom/flurry/sdk/dv;->l:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 195
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 196
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 197
    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 198
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 199
    iget-object v1, p0, Lcom/flurry/sdk/dv;->l:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/dv;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/flurry/sdk/dv;->l:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/dv$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$3;-><init>(Lcom/flurry/sdk/dv;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 215
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 216
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 217
    sget v1, Lcom/flurry/sdk/dv;->c:I

    sget v2, Lcom/flurry/sdk/dv;->c:I

    sget v3, Lcom/flurry/sdk/dv;->c:I

    sget v4, Lcom/flurry/sdk/dv;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 220
    iget-object v1, p0, Lcom/flurry/sdk/dv;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/dv;->l:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/dv;->l:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/flurry/sdk/dv;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/flurry/sdk/dv;->k:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/flurry/sdk/el;

    invoke-direct {v0}, Lcom/flurry/sdk/el;-><init>()V

    .line 162
    invoke-virtual {v0}, Lcom/flurry/sdk/el;->h()V

    .line 164
    invoke-virtual {v0}, Lcom/flurry/sdk/el;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/dv;->h:Landroid/graphics/Bitmap;

    .line 165
    invoke-virtual {v0}, Lcom/flurry/sdk/el;->g()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/dv;->j:Landroid/graphics/Bitmap;

    .line 166
    invoke-virtual {v0}, Lcom/flurry/sdk/el;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dv;->i:Landroid/graphics/Bitmap;

    .line 168
    return-void
.end method

.method private c(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 289
    :goto_0
    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/flurry/sdk/dv;->n:Lcom/flurry/sdk/ep;

    invoke-virtual {v0}, Lcom/flurry/sdk/ep;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 288
    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dv;->n:Lcom/flurry/sdk/ep;

    invoke-virtual {v0}, Lcom/flurry/sdk/ep;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private c(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v3, -0x2

    .line 225
    new-instance v0, Lcom/flurry/sdk/ep;

    sget v1, Lcom/flurry/sdk/dv;->d:I

    sget v2, Lcom/flurry/sdk/dv;->d:I

    invoke-direct {v0, p1, v1, v2}, Lcom/flurry/sdk/ep;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/flurry/sdk/dv;->n:Lcom/flurry/sdk/ep;

    .line 226
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 227
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 228
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 229
    sget v1, Lcom/flurry/sdk/dv;->b:I

    sget v2, Lcom/flurry/sdk/dv;->b:I

    sget v3, Lcom/flurry/sdk/dv;->b:I

    sget v4, Lcom/flurry/sdk/dv;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 230
    iget-object v1, p0, Lcom/flurry/sdk/dv;->n:Lcom/flurry/sdk/ep;

    invoke-virtual {v1}, Lcom/flurry/sdk/ep;->a()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/flurry/sdk/dv;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/dv;->n:Lcom/flurry/sdk/ep;

    invoke-virtual {v2}, Lcom/flurry/sdk/ep;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    return-void
.end method

.method private d()I
    .locals 1

    .prologue
    .line 315
    invoke-static {}, Lcom/flurry/sdk/hn;->c()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 316
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private d(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 297
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 298
    :goto_0
    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/flurry/sdk/dv;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 303
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 297
    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dv;->m:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private d(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v2, -0x2

    const/4 v5, 0x0

    .line 235
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/dv;->m:Landroid/widget/ImageButton;

    .line 236
    iget-object v0, p0, Lcom/flurry/sdk/dv;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 237
    iget-object v0, p0, Lcom/flurry/sdk/dv;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 238
    iget-object v0, p0, Lcom/flurry/sdk/dv;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    iget-object v0, p0, Lcom/flurry/sdk/dv;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/dv$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$4;-><init>(Lcom/flurry/sdk/dv;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 248
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 249
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 250
    sget v1, Lcom/flurry/sdk/dv;->b:I

    sget v2, Lcom/flurry/sdk/dv;->b:I

    sget v3, Lcom/flurry/sdk/dv;->b:I

    sget v4, Lcom/flurry/sdk/dv;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 252
    iget-object v1, p0, Lcom/flurry/sdk/dv;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 253
    iget-object v1, p0, Lcom/flurry/sdk/dv;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/dv;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    return-void
.end method

.method private e()I
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcom/flurry/sdk/hn;->c()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 321
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private e(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 306
    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 307
    :goto_0
    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/flurry/sdk/dv;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 312
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 306
    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dv;->k:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private e(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v2, -0x2

    const/4 v5, 0x0

    .line 257
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/dv;->k:Landroid/widget/ImageButton;

    .line 258
    iget-object v0, p0, Lcom/flurry/sdk/dv;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 259
    iget-object v0, p0, Lcom/flurry/sdk/dv;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 260
    iget-object v0, p0, Lcom/flurry/sdk/dv;->k:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 261
    iget-object v0, p0, Lcom/flurry/sdk/dv;->k:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/dv$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$5;-><init>(Lcom/flurry/sdk/dv;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 271
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 272
    sget v1, Lcom/flurry/sdk/dv;->b:I

    sget v2, Lcom/flurry/sdk/dv;->b:I

    sget v3, Lcom/flurry/sdk/dv;->b:I

    sget v4, Lcom/flurry/sdk/dv;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 274
    iget-object v1, p0, Lcom/flurry/sdk/dv;->k:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/flurry/sdk/dv;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/dv;->k:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 325
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 326
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v2, "Reset video view: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/dv;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p0, v3}, Lcom/flurry/sdk/dv;->a(I)V

    .line 329
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 330
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 332
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    .line 334
    :cond_1
    return-void
.end method

.method public a(FF)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flurry/sdk/dv;->n:Lcom/flurry/sdk/ep;

    if-eqz v0, :cond_0

    .line 120
    float-to-int v0, p2

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/flurry/sdk/dv;->o:I

    .line 121
    float-to-int v0, p1

    div-int/lit16 v0, v0, 0x3e8

    .line 122
    iget v1, p0, Lcom/flurry/sdk/dv;->o:I

    sub-int/2addr v0, v1

    .line 124
    iget-object v1, p0, Lcom/flurry/sdk/dv;->n:Lcom/flurry/sdk/ep;

    float-to-int v2, p1

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ep;->b(I)V

    .line 125
    iget-object v1, p0, Lcom/flurry/sdk/dv;->n:Lcom/flurry/sdk/ep;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ep;->a(I)V

    .line 128
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 69
    iget-object v0, p0, Lcom/flurry/sdk/dv;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget v0, p0, Lcom/flurry/sdk/dv;->p:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/flurry/sdk/dv;->o:I

    if-le v0, v4, :cond_2

    .line 76
    sget-object v0, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No change in visible flag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/flurry/sdk/dv;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_2
    sget-object v0, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update UI with visible flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    iput p1, p0, Lcom/flurry/sdk/dv;->p:I

    .line 83
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/flurry/sdk/dv;->d()I

    move-result v1

    invoke-direct {p0}, Lcom/flurry/sdk/dv;->e()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 87
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->e:Landroid/widget/RelativeLayout;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 90
    :cond_3
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dv;->b(I)V

    .line 91
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dv;->c(I)V

    .line 92
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dv;->e(I)V

    .line 93
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dv;->d(I)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    iget-object v0, p0, Lcom/flurry/sdk/dv;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update screenSizeChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/flurry/sdk/dv;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/flurry/sdk/dv;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/flurry/sdk/dv;->d()I

    move-result v1

    invoke-direct {p0}, Lcom/flurry/sdk/dv;->e()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 106
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->e:Landroid/widget/RelativeLayout;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 108
    iget v0, p0, Lcom/flurry/sdk/dv;->p:I

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dv;->b(I)V

    .line 109
    iget v0, p0, Lcom/flurry/sdk/dv;->p:I

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dv;->c(I)V

    .line 110
    iget v0, p0, Lcom/flurry/sdk/dv;->p:I

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dv;->e(I)V

    .line 111
    iget v0, p0, Lcom/flurry/sdk/dv;->p:I

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dv;->d(I)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/flurry/sdk/dv;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    return v0
.end method
