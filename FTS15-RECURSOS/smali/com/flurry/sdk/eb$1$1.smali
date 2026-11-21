.class Lcom/flurry/sdk/eb$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/eb$1;->a(Lcom/flurry/sdk/ed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ed;

.field final synthetic b:Lcom/flurry/sdk/eb$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/eb$1;Lcom/flurry/sdk/ed;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/flurry/sdk/eb$1$1;->b:Lcom/flurry/sdk/eb$1;

    iput-object p2, p0, Lcom/flurry/sdk/eb$1$1;->a:Lcom/flurry/sdk/ed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/flurry/sdk/eb$1$1;->a:Lcom/flurry/sdk/ed;

    iget-object v0, v0, Lcom/flurry/sdk/ed;->a:Lcom/flurry/sdk/ed$a;

    .line 139
    sget-object v1, Lcom/flurry/sdk/eb$8;->a:[I

    invoke-virtual {v0}, Lcom/flurry/sdk/ed$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/eb$1$1;->b:Lcom/flurry/sdk/eb$1;

    iget-object v0, v0, Lcom/flurry/sdk/eb$1;->a:Lcom/flurry/sdk/eb;

    iget-object v1, p0, Lcom/flurry/sdk/eb$1$1;->a:Lcom/flurry/sdk/ed;

    invoke-static {v0, v1}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Lcom/flurry/sdk/ed;)V

    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/eb$1$1;->b:Lcom/flurry/sdk/eb$1;

    iget-object v0, v0, Lcom/flurry/sdk/eb$1;->a:Lcom/flurry/sdk/eb;

    invoke-static {v0}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;)V

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/sdk/eb$1$1;->b:Lcom/flurry/sdk/eb$1;

    iget-object v0, v0, Lcom/flurry/sdk/eb$1;->a:Lcom/flurry/sdk/eb;

    iget-object v1, p0, Lcom/flurry/sdk/eb$1$1;->a:Lcom/flurry/sdk/ed;

    iget-object v1, v1, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/a;

    invoke-static {v0, v1}, Lcom/flurry/sdk/eb;->a(Lcom/flurry/sdk/eb;Lcom/flurry/sdk/a;)V

    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v0, p0, Lcom/flurry/sdk/eb$1$1;->b:Lcom/flurry/sdk/eb$1;

    iget-object v0, v0, Lcom/flurry/sdk/eb$1;->a:Lcom/flurry/sdk/eb;

    iget-object v1, p0, Lcom/flurry/sdk/eb$1$1;->a:Lcom/flurry/sdk/ed;

    iget-object v1, v1, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/a;

    invoke-static {v0, v1}, Lcom/flurry/sdk/eb;->b(Lcom/flurry/sdk/eb;Lcom/flurry/sdk/a;)V

    goto :goto_0

    .line 157
    :pswitch_4
    iget-object v0, p0, Lcom/flurry/sdk/eb$1$1;->b:Lcom/flurry/sdk/eb$1;

    iget-object v0, v0, Lcom/flurry/sdk/eb$1;->a:Lcom/flurry/sdk/eb;

    iget-object v1, p0, Lcom/flurry/sdk/eb$1$1;->a:Lcom/flurry/sdk/ed;

    iget-object v1, v1, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/a;

    invoke-static {v0, v1}, Lcom/flurry/sdk/eb;->c(Lcom/flurry/sdk/eb;Lcom/flurry/sdk/a;)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
