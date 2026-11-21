.class public Lcom/firsttouchgames/fts15/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firsttouchgames/fts15/FileManager$GenericExtFilter;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileManager"

.field private static listFiles:[Ljava/lang/String;

.field private static mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static GetFileNameWithExtension(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "iNumber"    # I

    .prologue
    .line 41
    sget-object v0, Lcom/firsttouchgames/fts15/FileManager;->listFiles:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static GetFilesWithExtension(Ljava/lang/String;)I
    .locals 5
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 24
    sget-object v3, Lcom/firsttouchgames/fts15/FileManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 26
    .local v0, "externalDir":Ljava/io/File;
    new-instance v1, Lcom/firsttouchgames/fts15/FileManager$GenericExtFilter;

    invoke-direct {v1, p0}, Lcom/firsttouchgames/fts15/FileManager$GenericExtFilter;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, "filter":Lcom/firsttouchgames/fts15/FileManager$GenericExtFilter;
    sput-object v4, Lcom/firsttouchgames/fts15/FileManager;->listFiles:[Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/firsttouchgames/fts15/FileManager;->listFiles:[Ljava/lang/String;

    .line 29
    sget-object v3, Lcom/firsttouchgames/fts15/FileManager;->listFiles:[Ljava/lang/String;

    array-length v2, v3

    .line 31
    .local v2, "iFilesCount":I
    return v2
.end method

.method public static Initialise(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 19
    sput-object p0, Lcom/firsttouchgames/fts15/FileManager;->mActivity:Landroid/app/Activity;

    .line 20
    return-void
.end method

.method public static RenameFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "sOldFilename"    # Ljava/lang/String;
    .param p1, "sNewFilename"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v5, Lcom/firsttouchgames/fts15/FileManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 63
    .local v0, "app":Landroid/app/Application;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 64
    .local v1, "externalDir":Ljava/io/File;
    if-nez v1, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 69
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "externalDirectory":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v4, "oldFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, "newFile":Ljava/io/File;
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 77
    .end local v3    # "newFile":Ljava/io/File;
    :cond_1
    return-void
.end method
