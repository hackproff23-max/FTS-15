.class final Lcom/firsttouchgames/fts15/FacebookManager$3;
.super Ljava/lang/Object;
.source "FacebookManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firsttouchgames/fts15/FacebookManager;->Post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sMessage:Ljava/lang/String;

.field final synthetic val$sURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/firsttouchgames/fts15/FacebookManager$3;->val$sMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/firsttouchgames/fts15/FacebookManager$3;->val$sURL:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 205
    const-class v2, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v2}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    invoke-static {}, Lcom/firsttouchgames/fts15/FacebookManager;->access$100()Lcom/firsttouchgames/fts15/MainActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 208
    .local v1, "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    invoke-static {}, Lcom/firsttouchgames/fts15/FacebookManager;->access$200()Lcom/facebook/CallbackManager;

    move-result-object v2

    new-instance v3, Lcom/firsttouchgames/fts15/FacebookManager$3$1;

    invoke-direct {v3, p0}, Lcom/firsttouchgames/fts15/FacebookManager$3$1;-><init>(Lcom/firsttouchgames/fts15/FacebookManager$3;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 229
    new-instance v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    iget-object v3, p0, Lcom/firsttouchgames/fts15/FacebookManager$3;->val$sMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/firsttouchgames/fts15/FacebookManager$3;->val$sURL:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-virtual {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 234
    .local v0, "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 236
    .end local v0    # "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    .end local v1    # "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    :cond_0
    return-void
.end method
