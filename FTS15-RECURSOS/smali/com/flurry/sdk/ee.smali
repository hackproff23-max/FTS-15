.class public Lcom/flurry/sdk/ee;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/flurry/sdk/r;Ljava/lang/String;Lcom/flurry/sdk/ec$a;ZZ)Lcom/flurry/sdk/ec;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 27
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    new-instance v0, Lcom/flurry/sdk/eb;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/flurry/sdk/eb;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ec$a;Z)V

    goto :goto_0

    .line 34
    :cond_2
    invoke-static {p2}, Lcom/flurry/sdk/cv;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 37
    sget-object v0, Lcom/flurry/sdk/ds;->c:Lcom/flurry/sdk/ds;

    .line 38
    invoke-interface {p1}, Lcom/flurry/sdk/r;->k()Lcom/flurry/sdk/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/ap;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    sget-object v0, Lcom/flurry/sdk/ds;->b:Lcom/flurry/sdk/ds;

    .line 43
    :cond_3
    new-instance v1, Lcom/flurry/sdk/dr;

    invoke-direct {v1}, Lcom/flurry/sdk/dr;-><init>()V

    invoke-static {p0, v0, p1, p3}, Lcom/flurry/sdk/dr;->a(Landroid/content/Context;Lcom/flurry/sdk/ds;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ec$a;)Lcom/flurry/sdk/dq;

    move-result-object v0

    .line 44
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dq;->setVideoUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 49
    :cond_4
    if-eqz p5, :cond_0

    .line 50
    new-instance v0, Lcom/flurry/sdk/eh;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/eh;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/r;Lcom/flurry/sdk/ec$a;Z)V

    goto :goto_0
.end method
