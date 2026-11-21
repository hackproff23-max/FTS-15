.class Lcom/firsttouchgames/fts15/FacebookManager$3$1;
.super Ljava/lang/Object;
.source "FacebookManager.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firsttouchgames/fts15/FacebookManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firsttouchgames/fts15/FacebookManager$3;


# direct methods
.method constructor <init>(Lcom/firsttouchgames/fts15/FacebookManager$3;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/firsttouchgames/fts15/FacebookManager$3$1;->this$0:Lcom/firsttouchgames/fts15/FacebookManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 225
    invoke-static {}, Lcom/firsttouchgames/fts15/FacebookManager;->access$100()Lcom/firsttouchgames/fts15/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to share to Facebook, error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .locals 0
    .param p1, "result"    # Lcom/facebook/share/Sharer$Result;

    .prologue
    .line 214
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 209
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/firsttouchgames/fts15/FacebookManager$3$1;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
