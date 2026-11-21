.class final Lcom/flurry/sdk/jv$16;
.super Lcom/flurry/sdk/ir;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/ir",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/flurry/sdk/ir;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jx;)Ljava/util/Calendar;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 547
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->f()Lcom/flurry/sdk/jy;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/jy;->i:Lcom/flurry/sdk/jy;

    if-ne v0, v1, :cond_0

    .line 548
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->j()V

    .line 549
    const/4 v0, 0x0

    .line 576
    :goto_0
    return-object v0

    .line 551
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->c()V

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    .line 558
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->f()Lcom/flurry/sdk/jy;

    move-result-object v0

    sget-object v7, Lcom/flurry/sdk/jy;->d:Lcom/flurry/sdk/jy;

    if-eq v0, v7, :cond_7

    .line 559
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->g()Ljava/lang/String;

    move-result-object v7

    .line 560
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->m()I

    move-result v0

    .line 561
    const-string v8, "year"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v0

    .line 562
    goto :goto_1

    .line 563
    :cond_2
    const-string v8, "month"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v2, v0

    .line 564
    goto :goto_1

    .line 565
    :cond_3
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v3, v0

    .line 566
    goto :goto_1

    .line 567
    :cond_4
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v0

    .line 568
    goto :goto_1

    .line 569
    :cond_5
    const-string v8, "minute"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v5, v0

    .line 570
    goto :goto_1

    .line 571
    :cond_6
    const-string v8, "second"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v0

    .line 572
    goto :goto_1

    .line 575
    :cond_7
    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->d()V

    .line 576
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/jz;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/jv$16;->a(Lcom/flurry/sdk/jz;Ljava/util/Calendar;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/jz;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    if-nez p2, :cond_0

    .line 582
    invoke-virtual {p1}, Lcom/flurry/sdk/jz;->f()Lcom/flurry/sdk/jz;

    .line 599
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/jz;->d()Lcom/flurry/sdk/jz;

    .line 586
    const-string v0, "year"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jz;->a(Ljava/lang/String;)Lcom/flurry/sdk/jz;

    .line 587
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/jz;->a(J)Lcom/flurry/sdk/jz;

    .line 588
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jz;->a(Ljava/lang/String;)Lcom/flurry/sdk/jz;

    .line 589
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/jz;->a(J)Lcom/flurry/sdk/jz;

    .line 590
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jz;->a(Ljava/lang/String;)Lcom/flurry/sdk/jz;

    .line 591
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/jz;->a(J)Lcom/flurry/sdk/jz;

    .line 592
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jz;->a(Ljava/lang/String;)Lcom/flurry/sdk/jz;

    .line 593
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/jz;->a(J)Lcom/flurry/sdk/jz;

    .line 594
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jz;->a(Ljava/lang/String;)Lcom/flurry/sdk/jz;

    .line 595
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/jz;->a(J)Lcom/flurry/sdk/jz;

    .line 596
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jz;->a(Ljava/lang/String;)Lcom/flurry/sdk/jz;

    .line 597
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/jz;->a(J)Lcom/flurry/sdk/jz;

    .line 598
    invoke-virtual {p1}, Lcom/flurry/sdk/jz;->e()Lcom/flurry/sdk/jz;

    goto :goto_0
.end method

.method public synthetic b(Lcom/flurry/sdk/jx;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/jv$16;->a(Lcom/flurry/sdk/jx;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
