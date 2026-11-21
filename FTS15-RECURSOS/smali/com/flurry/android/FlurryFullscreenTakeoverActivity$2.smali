.class Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ec$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/FlurryFullscreenTakeoverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 335
    invoke-static {}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onViewBack"

    invoke-static {v0, v1}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Lcom/flurry/sdk/ek;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Lcom/flurry/sdk/ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ek;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    .line 338
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    .line 345
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->removeViewState()V

    .line 341
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->loadViewState()V

    .line 342
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Z)V

    .line 343
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 349
    invoke-static {}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onViewClose"

    invoke-static {v0, v1}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    .line 351
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    .line 352
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 356
    invoke-static {}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onViewError"

    invoke-static {v0, v1}, Lcom/flurry/sdk/gd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    .line 358
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    .line 359
    return-void
.end method
