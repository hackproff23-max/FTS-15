.class public Lcom/firsttouchgames/fts15/BootManager;
.super Ljava/lang/Object;
.source "BootManager.java"


# static fields
.field static final mBootFile:Ljava/lang/String; = "BootAttempts"

.field static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetBootNumber(I)V
    .locals 6
    .param p0, "iBootNumber"    # I

    .prologue
    .line 66
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 70
    .local v2, "iBoot":Ljava/lang/Integer;
    :try_start_0
    sget-object v3, Lcom/firsttouchgames/fts15/BootManager;->mContext:Landroid/content/Context;

    const-string v4, "BootAttempts"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 71
    .local v1, "fos":Ljava/io/FileOutputStream;
    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 74
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "error":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v0    # "error":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 83
    .local v0, "error":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static SetContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sput-object p0, Lcom/firsttouchgames/fts15/BootManager;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public static ShouldEnterSafeMode()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 24
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 26
    .local v4, "iBootNumber":Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 27
    .local v0, "ch":I
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v3, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 31
    .local v3, "fileContent":Ljava/lang/StringBuffer;
    :try_start_0
    sget-object v8, Lcom/firsttouchgames/fts15/BootManager;->mContext:Landroid/content/Context;

    const-string v9, "BootAttempts"

    invoke-virtual {v8, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 32
    .local v5, "inputStream":Ljava/io/FileInputStream;
    if-eqz v5, :cond_0

    .line 34
    :goto_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_1

    .line 35
    int-to-char v8, v0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 40
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 43
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 56
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/firsttouchgames/fts15/BootManager;->SetBootNumber(I)V

    .line 58
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_2

    .line 61
    :goto_2
    return v6

    .line 36
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 37
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto :goto_1

    .line 45
    .end local v1    # "data":Ljava/lang/String;
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 48
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 50
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    move v6, v7

    .line 61
    goto :goto_2
.end method
