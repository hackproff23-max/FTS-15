.class final Lcom/firsttouchgames/fts15/GooglePlusManager$3;
.super Ljava/lang/Object;
.source "GooglePlusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firsttouchgames/fts15/GooglePlusManager;->Post(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/firsttouchgames/fts15/GooglePlusManager$3;->val$sText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 309
    new-instance v1, Lcom/google/android/gms/plus/PlusShare$Builder;

    invoke-static {}, Lcom/firsttouchgames/fts15/GooglePlusManager;->access$200()Lcom/firsttouchgames/fts15/MainActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/plus/PlusShare$Builder;-><init>(Landroid/app/Activity;)V

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/plus/PlusShare$Builder;->setType(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/firsttouchgames/fts15/GooglePlusManager$3;->val$sText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/plus/PlusShare$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/gms/plus/PlusShare$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/plus/PlusShare$Builder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 315
    .local v0, "shareIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/firsttouchgames/fts15/GooglePlusManager;->access$200()Lcom/firsttouchgames/fts15/MainActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/firsttouchgames/fts15/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 316
    return-void
.end method
