.class Lcom/mopub/mobileads/ToolbarWidget$Builder;
.super Ljava/lang/Object;
.source "ToolbarWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/ToolbarWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private defaultText:Ljava/lang/String;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private drawableAlign:I

.field private hasDrawable:Z

.field private hasText:Z

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private textAlign:I

.field private visibility:I

.field private weight:F

.field private widgetGravity:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->context:Landroid/content/Context;

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->weight:F

    .line 41
    const/16 v0, 0x11

    iput v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->widgetGravity:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->visibility:I

    .line 45
    const/16 v0, 0x9

    iput v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->textAlign:I

    .line 46
    const/16 v0, 0xb

    iput v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->drawableAlign:I

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/ToolbarWidget$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/ToolbarWidget$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mopub/mobileads/ToolbarWidget$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/ToolbarWidget$Builder;

    .prologue
    .line 22
    iget v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->textAlign:I

    return v0
.end method

.method static synthetic access$1100(Lcom/mopub/mobileads/ToolbarWidget$Builder;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/ToolbarWidget$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/ToolbarWidget$Builder;)F
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/ToolbarWidget$Builder;

    .prologue
    .line 22
    iget v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->weight:F

    return v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/ToolbarWidget$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/ToolbarWidget$Builder;

    .prologue
    .line 22
    iget v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->widgetGravity:I

    return v0
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/ToolbarWidget$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/ToolbarWidget$Builder;

    .prologue
    .line 22
    iget v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->visibility:I

    return v0
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/ToolbarWidget$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/ToolbarWidget$Builder;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->hasDrawable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mopub/mobileads/ToolbarWidget$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/ToolbarWidget$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mopub/mobileads/ToolbarWidget$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/ToolbarWidget$Builder;

    .prologue
    .line 22
    iget v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->drawableAlign:I

    return v0
.end method

.method static synthetic access$800(Lcom/mopub/mobileads/ToolbarWidget$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/ToolbarWidget$Builder;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->hasText:Z

    return v0
.end method

.method static synthetic access$900(Lcom/mopub/mobileads/ToolbarWidget$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/ToolbarWidget$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->defaultText:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method build()Lcom/mopub/mobileads/ToolbarWidget;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/mopub/mobileads/ToolbarWidget;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/ToolbarWidget;-><init>(Lcom/mopub/mobileads/ToolbarWidget$Builder;Lcom/mopub/mobileads/ToolbarWidget$1;)V

    return-object v0
.end method

.method defaultText(Ljava/lang/String;)Lcom/mopub/mobileads/ToolbarWidget$Builder;
    .locals 1
    .param p1, "defaultText"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->hasText:Z

    .line 66
    iput-object p1, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->defaultText:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method drawable(Landroid/graphics/drawable/Drawable;)Lcom/mopub/mobileads/ToolbarWidget$Builder;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->hasDrawable:Z

    .line 77
    iput-object p1, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->drawable:Landroid/graphics/drawable/Drawable;

    .line 78
    return-object p0
.end method

.method drawableAlign(I)Lcom/mopub/mobileads/ToolbarWidget$Builder;
    .locals 0
    .param p1, "rule"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->drawableAlign:I

    .line 88
    return-object p0
.end method

.method hasDrawable()Lcom/mopub/mobileads/ToolbarWidget$Builder;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->hasDrawable:Z

    .line 72
    return-object p0
.end method

.method hasText()Lcom/mopub/mobileads/ToolbarWidget$Builder;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->hasText:Z

    .line 61
    return-object p0
.end method

.method onTouchListener(Landroid/view/View$OnTouchListener;)Lcom/mopub/mobileads/ToolbarWidget$Builder;
    .locals 0
    .param p1, "onTouchListener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 98
    return-object p0
.end method

.method textAlign(I)Lcom/mopub/mobileads/ToolbarWidget$Builder;
    .locals 0
    .param p1, "rule"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->textAlign:I

    .line 83
    return-object p0
.end method

.method visibility(I)Lcom/mopub/mobileads/ToolbarWidget$Builder;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->visibility:I

    .line 93
    return-object p0
.end method

.method weight(F)Lcom/mopub/mobileads/ToolbarWidget$Builder;
    .locals 0
    .param p1, "weight"    # F

    .prologue
    .line 50
    iput p1, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->weight:F

    .line 51
    return-object p0
.end method

.method widgetGravity(I)Lcom/mopub/mobileads/ToolbarWidget$Builder;
    .locals 0
    .param p1, "widgetGravity"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/mopub/mobileads/ToolbarWidget$Builder;->widgetGravity:I

    .line 56
    return-object p0
.end method
