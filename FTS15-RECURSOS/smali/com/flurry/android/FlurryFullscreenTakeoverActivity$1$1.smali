.class Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a(Lcom/flurry/sdk/ea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ea;

.field final synthetic b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;Lcom/flurry/sdk/ea;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iput-object p2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/ea;

    invoke-direct {p0}, Lcom/flurry/sdk/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 6

    .prologue
    .line 266
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/ea;

    iget-object v0, v0, Lcom/flurry/sdk/ea;->e:Lcom/flurry/sdk/ea$a;

    .line 267
    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$3;->a:[I

    invoke-virtual {v0}, Lcom/flurry/sdk/ea$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 292
    :goto_0
    return-void

    .line 269
    :pswitch_0
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RELOAD_ACTIVITY Event was fired for adObject:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/ea;

    iget-object v3, v3, Lcom/flurry/sdk/ea;->a:Lcom/flurry/sdk/r;

    invoke-interface {v3}, Lcom/flurry/sdk/r;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/ea;

    iget-object v3, v3, Lcom/flurry/sdk/ea;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and should Close Ad:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/ea;

    iget-boolean v3, v3, Lcom/flurry/sdk/ea;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    new-instance v1, Lcom/flurry/sdk/ek;

    iget-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/ea;

    iget-object v2, v2, Lcom/flurry/sdk/ea;->a:Lcom/flurry/sdk/r;

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/ea;

    iget-object v3, v3, Lcom/flurry/sdk/ea;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/ea;

    iget-boolean v4, v4, Lcom/flurry/sdk/ea;->c:Z

    iget-object v5, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/ea;

    iget-boolean v5, v5, Lcom/flurry/sdk/ea;->d:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/flurry/sdk/ek;-><init>(Lcom/flurry/sdk/r;Ljava/lang/String;ZZ)V

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/sdk/ek;)Lcom/flurry/sdk/ek;

    .line 272
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v1, v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Lcom/flurry/sdk/ek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/ek;->c()Lcom/flurry/sdk/r;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/sdk/r;)Lcom/flurry/sdk/r;

    .line 273
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Lcom/flurry/sdk/r;

    move-result-object v0

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot launch Activity. No Ad Controller"

    invoke-static {v0, v1}, Lcom/flurry/sdk/gd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto/16 :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    .line 280
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    .line 281
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Z)V

    .line 282
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    goto/16 :goto_0

    .line 287
    :pswitch_1
    invoke-static {}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOSE_ACTIVITY Event was fired :"

    invoke-static {v0, v1}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto/16 :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
