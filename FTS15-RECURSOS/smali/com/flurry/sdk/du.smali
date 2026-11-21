.class public Lcom/flurry/sdk/du;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dy;
.implements Lcom/flurry/sdk/dz;


# instance fields
.field private a:Lcom/flurry/sdk/dx;

.field private b:Lcom/flurry/sdk/dw;

.field private c:Lcom/flurry/sdk/dv;

.field private d:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Lcom/flurry/sdk/du;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/du;)Lcom/flurry/sdk/dv;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/flurry/sdk/du;->c:Lcom/flurry/sdk/dv;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 54
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/du;->d:Landroid/widget/RelativeLayout;

    .line 60
    new-instance v0, Lcom/flurry/sdk/dw;

    invoke-direct {v0, p1, p0}, Lcom/flurry/sdk/dw;-><init>(Landroid/content/Context;Lcom/flurry/sdk/dz;)V

    iput-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    .line 61
    new-instance v0, Lcom/flurry/sdk/dv;

    invoke-direct {v0, p1, p0}, Lcom/flurry/sdk/dv;-><init>(Landroid/content/Context;Lcom/flurry/sdk/dy;)V

    iput-object v0, p0, Lcom/flurry/sdk/du;->c:Lcom/flurry/sdk/dv;

    .line 63
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    iget-object v1, p0, Lcom/flurry/sdk/du;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dw;->a(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/du$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/du$3;-><init>(Lcom/flurry/sdk/du;II)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 1

    .prologue
    .line 47
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/dw;->a(Landroid/net/Uri;I)V

    .line 50
    :cond_0
    return-void
.end method

.method public a(Lcom/flurry/sdk/dx;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/dx;

    .line 44
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/dx;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/dx;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/dx;->b(Ljava/lang/String;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/du;->c:Lcom/flurry/sdk/dv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/flurry/sdk/du;->c:Lcom/flurry/sdk/dv;

    iget-object v1, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 138
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;FF)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/dx;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/dx;

    invoke-interface {v0, p1, p2, p3}, Lcom/flurry/sdk/dx;->a(Ljava/lang/String;FF)V

    .line 146
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/du$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/flurry/sdk/du$2;-><init>(Lcom/flurry/sdk/du;FF)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/dx;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/dx;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/flurry/sdk/dx;->a(Ljava/lang/String;III)V

    .line 174
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->a()Z

    move-result v0

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->b()V

    .line 101
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/du$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/du$1;-><init>(Lcom/flurry/sdk/du;I)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/dx;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/dx;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/dx;->a(Ljava/lang/String;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/du;->c:Lcom/flurry/sdk/dv;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/flurry/sdk/du;->c:Lcom/flurry/sdk/dv;

    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->a()V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->e()V

    .line 167
    :cond_2
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->getCurrentPosition()I

    move-result v0

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/flurry/sdk/du;->c:Lcom/flurry/sdk/dv;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/du;->c:Lcom/flurry/sdk/dv;

    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->a()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->c()V

    .line 117
    :cond_1
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flurry/sdk/du;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->d()I

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/dx;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/dx;

    invoke-interface {v0}, Lcom/flurry/sdk/dx;->a()V

    .line 181
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/dx;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/dx;

    invoke-interface {v0}, Lcom/flurry/sdk/dx;->e()V

    .line 188
    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/dx;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/dx;

    invoke-interface {v0}, Lcom/flurry/sdk/dx;->b()V

    .line 195
    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lcom/flurry/sdk/du;->c:Lcom/flurry/sdk/dv;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/flurry/sdk/du;->c:Lcom/flurry/sdk/dv;

    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->a()V

    .line 213
    iput-object v1, p0, Lcom/flurry/sdk/du;->c:Lcom/flurry/sdk/dv;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->e()V

    .line 217
    iput-object v1, p0, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dw;

    .line 219
    :cond_1
    return-void
.end method
