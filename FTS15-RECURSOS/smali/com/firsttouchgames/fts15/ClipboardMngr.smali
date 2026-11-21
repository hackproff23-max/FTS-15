.class public Lcom/firsttouchgames/fts15/ClipboardMngr;
.super Ljava/lang/Object;
.source "ClipboardMngr.java"


# static fields
.field private static mClipboard:Landroid/content/ClipboardManager;

.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPngData()Ljava/lang/String;
    .locals 6

    .prologue
    .line 25
    sget-object v5, Lcom/firsttouchgames/fts15/ClipboardMngr;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v5}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    sget-object v5, Lcom/firsttouchgames/fts15/ClipboardMngr;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v5}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 30
    .local v1, "clipdesc":Landroid/content/ClipDescription;
    sget-object v5, Lcom/firsttouchgames/fts15/ClipboardMngr;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 33
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v5, Lcom/firsttouchgames/fts15/ClipboardMngr;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v5}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 35
    .local v0, "clip":Landroid/content/ClipData;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 37
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v1}, Landroid/content/ClipDescription;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "string":Ljava/lang/String;
    :goto_0
    return-object v4

    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipdesc":Landroid/content/ClipDescription;
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v4    # "string":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 100
    sget-object v4, Lcom/firsttouchgames/fts15/ClipboardMngr;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    sget-object v4, Lcom/firsttouchgames/fts15/ClipboardMngr;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 104
    .local v1, "clipdesc":Landroid/content/ClipDescription;
    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    sget-object v4, Lcom/firsttouchgames/fts15/ClipboardMngr;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 107
    .local v0, "clipdata":Landroid/content/ClipData;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 109
    .local v2, "item":Landroid/content/ClipData$Item;
    sget-object v4, Lcom/firsttouchgames/fts15/ClipboardMngr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 114
    .end local v0    # "clipdata":Landroid/content/ClipData;
    .end local v2    # "item":Landroid/content/ClipData$Item;
    .end local v3    # "text":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static onStart(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sput-object p0, Lcom/firsttouchgames/fts15/ClipboardMngr;->mContext:Landroid/content/Context;

    .line 20
    sget-object v0, Lcom/firsttouchgames/fts15/ClipboardMngr;->mContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    sput-object v0, Lcom/firsttouchgames/fts15/ClipboardMngr;->mClipboard:Landroid/content/ClipboardManager;

    .line 21
    return-void
.end method
