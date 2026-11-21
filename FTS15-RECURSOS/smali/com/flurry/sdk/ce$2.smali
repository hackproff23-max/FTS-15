.class Lcom/flurry/sdk/ce$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ce;->a(Lcom/flurry/sdk/cd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/gk$a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/cd;

.field final synthetic b:Lcom/flurry/sdk/ce;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ce;Lcom/flurry/sdk/cd;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/flurry/sdk/ce$2;->b:Lcom/flurry/sdk/ce;

    iput-object p2, p0, Lcom/flurry/sdk/ce$2;->a:Lcom/flurry/sdk/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/gk;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ce$2;->a(Lcom/flurry/sdk/gk;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/gk;Ljava/lang/Void;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/gk",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x12c

    const/4 v4, 0x3

    .line 81
    invoke-static {}, Lcom/flurry/sdk/ce;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncReportInfo request: HTTP status code is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/gk;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/flurry/sdk/gk;->e()I

    move-result v1

    .line 84
    const/16 v0, 0xc8

    if-lt v1, v0, :cond_2

    if-ge v1, v3, :cond_2

    .line 85
    invoke-static {}, Lcom/flurry/sdk/ce;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send report successful to url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/gk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/flurry/sdk/ce$2;->b:Lcom/flurry/sdk/ce;

    iget-object v2, p0, Lcom/flurry/sdk/ce$2;->a:Lcom/flurry/sdk/cd;

    invoke-static {v0, v2}, Lcom/flurry/sdk/ce;->a(Lcom/flurry/sdk/ce;Lcom/flurry/sdk/gn;)V

    .line 90
    invoke-static {}, Lcom/flurry/sdk/gd;->c()I

    move-result v0

    if-gt v0, v4, :cond_0

    invoke-static {}, Lcom/flurry/sdk/gd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/ce$2$1;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/ce$2$1;-><init>(Lcom/flurry/sdk/ce$2;Lcom/flurry/sdk/gk;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Runnable;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ce$2;->b:Lcom/flurry/sdk/ce;

    iget-object v2, p0, Lcom/flurry/sdk/ce$2;->a:Lcom/flurry/sdk/cd;

    invoke-static {v0, v2, v1}, Lcom/flurry/sdk/ce;->a(Lcom/flurry/sdk/ce;Lcom/flurry/sdk/cd;I)V

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    if-lt v1, v3, :cond_6

    const/16 v0, 0x190

    if-ge v1, v0, :cond_6

    .line 102
    const/4 v0, 0x0

    .line 104
    const-string v2, "Location"

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/gk;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 106
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/ce$2;->a:Lcom/flurry/sdk/cd;

    invoke-virtual {v2}, Lcom/flurry/sdk/cd;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/cv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    invoke-static {}, Lcom/flurry/sdk/ce;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send report successful to url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/gk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/ce$2;->b:Lcom/flurry/sdk/ce;

    iget-object v2, p0, Lcom/flurry/sdk/ce$2;->a:Lcom/flurry/sdk/cd;

    invoke-static {v0, v2}, Lcom/flurry/sdk/ce;->b(Lcom/flurry/sdk/ce;Lcom/flurry/sdk/gn;)V

    .line 115
    invoke-static {}, Lcom/flurry/sdk/gd;->c()I

    move-result v0

    if-gt v0, v4, :cond_4

    invoke-static {}, Lcom/flurry/sdk/gd;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/ce$2$2;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/ce$2$2;-><init>(Lcom/flurry/sdk/ce$2;Lcom/flurry/sdk/gk;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Runnable;)V

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/ce$2;->b:Lcom/flurry/sdk/ce;

    iget-object v2, p0, Lcom/flurry/sdk/ce$2;->a:Lcom/flurry/sdk/cd;

    invoke-static {v0, v2, v1}, Lcom/flurry/sdk/ce;->a(Lcom/flurry/sdk/ce;Lcom/flurry/sdk/cd;I)V

    goto :goto_0

    .line 127
    :cond_5
    invoke-static {}, Lcom/flurry/sdk/ce;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send report redirecting to url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/flurry/sdk/ce$2;->a:Lcom/flurry/sdk/cd;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/cd;->c(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/flurry/sdk/ce$2;->b:Lcom/flurry/sdk/ce;

    iget-object v1, p0, Lcom/flurry/sdk/ce$2;->a:Lcom/flurry/sdk/cd;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ce;->a(Lcom/flurry/sdk/cd;)V

    goto/16 :goto_0

    .line 133
    :cond_6
    invoke-static {}, Lcom/flurry/sdk/ce;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send report failed to url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/gk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/flurry/sdk/ce$2;->b:Lcom/flurry/sdk/ce;

    iget-object v2, p0, Lcom/flurry/sdk/ce$2;->a:Lcom/flurry/sdk/cd;

    invoke-static {v0, v2}, Lcom/flurry/sdk/ce;->c(Lcom/flurry/sdk/ce;Lcom/flurry/sdk/gn;)V

    .line 138
    iget-object v0, p0, Lcom/flurry/sdk/ce$2;->a:Lcom/flurry/sdk/cd;

    invoke-virtual {v0}, Lcom/flurry/sdk/cd;->f()I

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/flurry/sdk/ce$2;->b:Lcom/flurry/sdk/ce;

    iget-object v2, p0, Lcom/flurry/sdk/ce$2;->a:Lcom/flurry/sdk/cd;

    invoke-static {v0, v2, v1}, Lcom/flurry/sdk/ce;->a(Lcom/flurry/sdk/ce;Lcom/flurry/sdk/cd;I)V

    goto/16 :goto_0
.end method
