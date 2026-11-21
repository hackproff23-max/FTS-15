.class public Lcom/flurry/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/h$4;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/au;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/flurry/sdk/au;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lcom/flurry/sdk/fy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fy",
            "<",
            "Lcom/flurry/sdk/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/flurry/sdk/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/flurry/sdk/h$1;

    invoke-direct {v0}, Lcom/flurry/sdk/h$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/h;->b:Ljava/util/Map;

    .line 41
    new-instance v0, Lcom/flurry/sdk/h$2;

    invoke-direct {v0}, Lcom/flurry/sdk/h$2;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/h;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/flurry/sdk/h$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/h$3;-><init>(Lcom/flurry/sdk/h;)V

    iput-object v0, p0, Lcom/flurry/sdk/h;->d:Lcom/flurry/sdk/fy;

    .line 52
    return-void
.end method

.method private a(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v2}, Lcom/flurry/sdk/aw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->adGuid:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/cz;->d(Lcom/flurry/sdk/ap;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dt;->b(Z)V

    .line 191
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/dt;)V

    .line 193
    :cond_0
    return-void
.end method

.method private a(Lcom/flurry/sdk/c;)V
    .locals 6

    .prologue
    .line 73
    iget-object v2, p1, Lcom/flurry/sdk/c;->a:Lcom/flurry/sdk/b;

    .line 74
    iget-object v0, v2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v0}, Lcom/flurry/sdk/aw;->a()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v2}, Lcom/flurry/sdk/b;->d()Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/h;->a(Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;Lcom/flurry/sdk/b;)Ljava/util/List;

    move-result-object v3

    .line 78
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    .line 81
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->n()Lcom/flurry/sdk/bc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bc;->a(Lcom/flurry/sdk/b;)V

    .line 84
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Lcom/flurry/sdk/h;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, v2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v5}, Lcom/flurry/sdk/aw;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Lcom/flurry/sdk/a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    iget-object v5, v2, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    invoke-direct {v1, v0, v5, v2}, Lcom/flurry/sdk/a;-><init>(Lcom/flurry/sdk/au;Ljava/util/Map;Lcom/flurry/sdk/b;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Lcom/flurry/sdk/h$4;->a:[I

    iget-object v1, v2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v1}, Lcom/flurry/sdk/aw;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 179
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event not handled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for adSpace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/ap;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/flurry/sdk/h;->a(Lcom/flurry/sdk/c;Ljava/util/List;)V

    .line 184
    return-void

    .line 94
    :pswitch_0
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->h(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_1

    .line 99
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->a(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_1

    .line 103
    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->b(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_1

    .line 107
    :pswitch_3
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->c(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_1

    .line 111
    :pswitch_4
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->d(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_1

    .line 115
    :pswitch_5
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->e(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_1

    .line 119
    :pswitch_6
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->f(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_1

    .line 123
    :pswitch_7
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->g(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_1

    .line 127
    :pswitch_8
    invoke-direct {p0, v2}, Lcom/flurry/sdk/h;->g(Lcom/flurry/sdk/b;)V

    goto :goto_1

    .line 131
    :pswitch_9
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/h;->j(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_1

    .line 135
    :pswitch_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/a;

    .line 136
    invoke-virtual {v0}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/au;

    move-result-object v2

    sget-object v4, Lcom/flurry/sdk/au;->l:Lcom/flurry/sdk/au;

    invoke-virtual {v2, v4}, Lcom/flurry/sdk/au;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    const-string v2, "is_privacy"

    const-string v4, "true"

    invoke-virtual {v0, v2, v4}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 143
    :pswitch_b
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/h;->c(Lcom/flurry/sdk/b;)V

    goto :goto_1

    .line 147
    :pswitch_c
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/h;->c(Lcom/flurry/sdk/b;)V

    goto :goto_1

    .line 151
    :pswitch_d
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/h;->a(Lcom/flurry/sdk/b;)V

    goto :goto_1

    .line 155
    :pswitch_e
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/h;->b(Lcom/flurry/sdk/b;)V

    goto :goto_1

    .line 159
    :pswitch_f
    invoke-direct {p0, v2}, Lcom/flurry/sdk/h;->d(Lcom/flurry/sdk/b;)V

    goto :goto_1

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private a(Lcom/flurry/sdk/c;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/c;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    const/4 v1, 0x0

    .line 442
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/flurry/sdk/a;

    .line 443
    invoke-virtual {v2}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v3, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/au;

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/au;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 445
    const-string v0, "__sendToServer"

    const-string v1, "true"

    invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-object v3, v2

    .line 448
    :goto_1
    invoke-virtual {v2}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/au;->k:Lcom/flurry/sdk/au;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v2}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 450
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 453
    :cond_0
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/flurry/sdk/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/gd;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->o()Lcom/flurry/sdk/g;

    move-result-object v0

    iget v1, p1, Lcom/flurry/sdk/c;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/a;I)V

    move-object v1, v3

    .line 455
    goto :goto_0

    .line 457
    :cond_1
    if-nez v1, :cond_2

    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 459
    const-string v1, "__sendToServer"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    new-instance v1, Lcom/flurry/sdk/a;

    sget-object v2, Lcom/flurry/sdk/au;->c:Lcom/flurry/sdk/au;

    iget-object v3, p1, Lcom/flurry/sdk/c;->a:Lcom/flurry/sdk/b;

    invoke-direct {v1, v2, v0, v3}, Lcom/flurry/sdk/a;-><init>(Lcom/flurry/sdk/au;Ljava/util/Map;Lcom/flurry/sdk/b;)V

    .line 461
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/flurry/sdk/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/gd;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->o()Lcom/flurry/sdk/g;

    move-result-object v0

    iget v2, p1, Lcom/flurry/sdk/c;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/a;I)V

    .line 464
    :cond_2
    return-void

    :cond_3
    move-object v3, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/flurry/sdk/h;Lcom/flurry/sdk/c;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/flurry/sdk/h;->a(Lcom/flurry/sdk/c;)V

    return-void
.end method

.method private b(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v1}, Lcom/flurry/sdk/aw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->adGuid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/cz;->e(Lcom/flurry/sdk/ap;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v0

    .line 198
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dt;->a(Z)V

    .line 199
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/dt;)V

    .line 200
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v1}, Lcom/flurry/sdk/aw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->adGuid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/cz;->f(Lcom/flurry/sdk/ap;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v0

    .line 205
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dt;->c(Z)V

    .line 206
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/dt;)V

    .line 207
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 351
    new-instance v0, Lcom/flurry/sdk/ea;

    invoke-direct {v0}, Lcom/flurry/sdk/ea;-><init>()V

    .line 352
    sget-object v1, Lcom/flurry/sdk/ea$a;->b:Lcom/flurry/sdk/ea$a;

    iput-object v1, v0, Lcom/flurry/sdk/ea;->e:Lcom/flurry/sdk/ea$a;

    .line 353
    invoke-virtual {v0}, Lcom/flurry/sdk/ea;->b()V

    .line 354
    return-void
.end method

.method private d(Lcom/flurry/sdk/b;)V
    .locals 4

    .prologue
    .line 244
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onAdImpressionLogged, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 247
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 248
    sget-object v1, Lcom/flurry/sdk/d$a;->j:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 249
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    .line 250
    return-void
.end method

.method private d(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v1}, Lcom/flurry/sdk/aw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->adGuid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/cz;->g(Lcom/flurry/sdk/ap;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v0

    .line 212
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dt;->d(Z)V

    .line 213
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/dt;)V

    .line 214
    return-void
.end method

.method private e(Lcom/flurry/sdk/b;)V
    .locals 4

    .prologue
    .line 322
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onRenderFailed, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 325
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 326
    sget-object v1, Lcom/flurry/sdk/d$a;->d:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 327
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    .line 328
    return-void
.end method

.method private e(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v1}, Lcom/flurry/sdk/aw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->adGuid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/cz;->h(Lcom/flurry/sdk/ap;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v0

    .line 219
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dt;->e(Z)V

    .line 220
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/dt;)V

    .line 221
    return-void
.end method

.method private f(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 224
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v1}, Lcom/flurry/sdk/aw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->adGuid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/cz;->i(Lcom/flurry/sdk/ap;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/r;)V

    .line 226
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/aa;->g()V

    .line 228
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLayout onVideoCompleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->e()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v0

    iget-boolean v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->rewardable:Z

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    const-string v1, "Ad unit is rewardable, onVideoCompleted listener will fire"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing onVideoCompleted, adObject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 235
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 236
    sget-object v1, Lcom/flurry/sdk/d$a;->k:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 237
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    const-string v1, "Ad unit is not rewardable, onVideoCompleted listener will not fire"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f(Lcom/flurry/sdk/b;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 368
    iget-object v0, p1, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    const-string v1, "binding_3rd_party"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 371
    if-eqz v0, :cond_1

    move v1, v2

    .line 375
    :goto_0
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->e()Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdUnit;->adFrames:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    iget v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->binding:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 379
    :goto_1
    return v2

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method private g(Lcom/flurry/sdk/b;)V
    .locals 2

    .prologue
    .line 467
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/r;)V

    .line 468
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/aa;->g()V

    .line 469
    return-void
.end method

.method private g(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 253
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->p()Ljava/lang/String;

    .line 255
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onClicked, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 258
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 259
    sget-object v1, Lcom/flurry/sdk/d$a;->h:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 260
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    .line 263
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->g()Lcom/flurry/sdk/cy;

    move-result-object v1

    .line 265
    if-eqz v1, :cond_1

    .line 267
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/ap;->m()Lcom/flurry/sdk/dt;

    move-result-object v2

    .line 268
    invoke-virtual {v1}, Lcom/flurry/sdk/cy;->i()Ljava/lang/String;

    move-result-object v1

    .line 269
    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/dt;)V

    .line 272
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/i;->o()Lcom/flurry/sdk/g;

    move-result-object v3

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v6, v5}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/r;)V

    .line 275
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/flurry/sdk/dt;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    invoke-virtual {v2, v6}, Lcom/flurry/sdk/dt;->g(Z)V

    .line 277
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/dt;)V

    .line 278
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v1}, Lcom/flurry/sdk/aw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->adGuid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/cz;->c(Lcom/flurry/sdk/ap;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_1
    return-void
.end method

.method private h(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/flurry/sdk/h;->f(Lcom/flurry/sdk/b;)Z

    move-result v0

    .line 285
    iget-object v1, p1, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    const-string v2, "preRender"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 286
    invoke-direct {p0, p1}, Lcom/flurry/sdk/h;->e(Lcom/flurry/sdk/b;)V

    .line 290
    :goto_0
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v1}, Lcom/flurry/sdk/aw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->adGuid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/cz;->b(Lcom/flurry/sdk/ap;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/flurry/sdk/h;->d()V

    .line 294
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aa;->c(Lcom/flurry/sdk/ap;)V

    .line 295
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/r;)V

    .line 296
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/aa;->g()V

    .line 297
    return-void

    .line 288
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/h;->i(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_0
.end method

.method private i(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    const/4 v1, 0x1

    .line 304
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/a;

    .line 305
    sget-object v3, Lcom/flurry/sdk/au;->f:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/au;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 310
    :goto_0
    if-eqz v0, :cond_1

    .line 311
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onFetchFailed, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 314
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 315
    sget-object v1, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 316
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    .line 318
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private j(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 383
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->c()Lcom/flurry/sdk/ap;

    move-result-object v0

    iget-object v2, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v2}, Lcom/flurry/sdk/aw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->d()Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->adGuid:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/cz;->a(Lcom/flurry/sdk/ap;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/a;

    .line 386
    sget-object v3, Lcom/flurry/sdk/h;->c:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 392
    :goto_0
    if-nez v0, :cond_1

    .line 393
    new-instance v0, Lcom/flurry/sdk/a;

    sget-object v2, Lcom/flurry/sdk/au;->g:Lcom/flurry/sdk/au;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3, p1}, Lcom/flurry/sdk/a;-><init>(Lcom/flurry/sdk/au;Ljava/util/Map;Lcom/flurry/sdk/b;)V

    invoke-interface {p2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 394
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/r;)V

    .line 395
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/aa;->g()V

    .line 397
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;Lcom/flurry/sdk/b;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;",
            "Lcom/flurry/sdk/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 401
    iget-object v0, p1, Lcom/flurry/android/impl/ads/protocol/v13/AdFrame;->callbacks:Ljava/util/List;

    .line 402
    iget-object v1, p2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/aw;

    invoke-virtual {v1}, Lcom/flurry/sdk/aw;->a()Ljava/lang/String;

    move-result-object v3

    .line 405
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/protocol/v13/Callback;

    .line 406
    iget-object v1, v0, Lcom/flurry/android/impl/ads/protocol/v13/Callback;->event:Ljava/lang/String;

    .line 407
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    iget-object v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/Callback;->actions:Ljava/util/List;

    .line 410
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 411
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 412
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 414
    const/4 v1, -0x1

    if-eq v7, v1, :cond_2

    .line 416
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 417
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    const-string v7, "%{eventParams}"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 420
    const-string v7, "%{eventParams}"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 421
    iget-object v7, p2, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 424
    :cond_1
    invoke-static {v0}, Lcom/flurry/sdk/hp;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, v1

    .line 428
    :cond_2
    invoke-static {v0}, Lcom/flurry/sdk/a;->c(Ljava/lang/String;)Lcom/flurry/sdk/au;

    move-result-object v0

    .line 429
    new-instance v1, Lcom/flurry/sdk/a;

    invoke-direct {v1, v0, v6, p2}, Lcom/flurry/sdk/a;-><init>(Lcom/flurry/sdk/au;Ljava/util/Map;Lcom/flurry/sdk/b;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 434
    :cond_3
    return-object v2
.end method

.method public a()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    const-string v2, "Unregister Event Handler "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/h;->d:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fz;->a(Lcom/flurry/sdk/fy;)V

    .line 57
    return-void
.end method

.method public a(Lcom/flurry/sdk/b;)V
    .locals 4

    .prologue
    .line 331
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onOpen, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 334
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 335
    sget-object v1, Lcom/flurry/sdk/d$a;->e:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 336
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    .line 337
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    const-string v2, "Registered Event Handler "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/flurry/sdk/fz;->a()Lcom/flurry/sdk/fz;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdEvent"

    iget-object v2, p0, Lcom/flurry/sdk/h;->d:Lcom/flurry/sdk/fy;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/fz;->a(Ljava/lang/String;Lcom/flurry/sdk/fy;)V

    .line 62
    return-void
.end method

.method public b(Lcom/flurry/sdk/b;)V
    .locals 4

    .prologue
    .line 340
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onAppExit, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 343
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 344
    sget-object v1, Lcom/flurry/sdk/d$a;->g:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 345
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    .line 347
    invoke-direct {p0}, Lcom/flurry/sdk/h;->d()V

    .line 348
    return-void
.end method

.method public c(Lcom/flurry/sdk/b;)V
    .locals 4

    .prologue
    .line 357
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing onClose, adObject="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 360
    invoke-virtual {p1}, Lcom/flurry/sdk/b;->b()Lcom/flurry/sdk/r;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 361
    sget-object v1, Lcom/flurry/sdk/d$a;->f:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 362
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    .line 364
    invoke-direct {p0}, Lcom/flurry/sdk/h;->d()V

    .line 365
    return-void
.end method
