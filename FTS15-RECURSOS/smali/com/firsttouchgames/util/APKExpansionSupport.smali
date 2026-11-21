.class public Lcom/firsttouchgames/util/APKExpansionSupport;
.super Ljava/lang/Object;
.source "APKExpansionSupport.java"


# static fields
.field private static final EXP_PATH:Ljava/lang/String; = "/Android/obb/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAPKExpansionFiles(Landroid/content/Context;II)[Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/firsttouchgames/fts15/Fix15;->findObbs(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAPKExpansionZipFile(Landroid/content/Context;II)Lcom/firsttouchgames/util/ZipResourceFile;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mainVersion"    # I
    .param p2, "patchVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {p0, p1, p2}, Lcom/firsttouchgames/util/APKExpansionSupport;->getAPKExpansionFiles(Landroid/content/Context;II)[Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "expansionFiles":[Ljava/lang/String;
    invoke-static {v0}, Lcom/firsttouchgames/util/APKExpansionSupport;->getResourceZipFile([Ljava/lang/String;)Lcom/firsttouchgames/util/ZipResourceFile;

    move-result-object v1

    return-object v1
.end method

.method public static getResourceZipFile([Ljava/lang/String;)Lcom/firsttouchgames/util/ZipResourceFile;
    .locals 5
    .param p0, "expansionFiles"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "apkExpansionFile":Lcom/firsttouchgames/util/ZipResourceFile;
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 96
    .local v2, "expansionFilePath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/firsttouchgames/util/ZipResourceFile;

    .end local v0    # "apkExpansionFile":Lcom/firsttouchgames/util/ZipResourceFile;
    invoke-direct {v0, v2}, Lcom/firsttouchgames/util/ZipResourceFile;-><init>(Ljava/lang/String;)V

    .line 95
    .restart local v0    # "apkExpansionFile":Lcom/firsttouchgames/util/ZipResourceFile;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0, v2}, Lcom/firsttouchgames/util/ZipResourceFile;->addPatchFile(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    .end local v2    # "expansionFilePath":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static removeOldExpansionFile(Landroid/content/Context;II)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mainVersion"    # I
    .param p2, "patchVersion"    # I

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 36
    .local v4, "ret":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 39
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 40
    .local v5, "root":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/Android/obb/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "expPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 44
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "main."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".obb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "strMainPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "main":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 51
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "patch."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".obb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "strPatchPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v3, "patch":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 55
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 59
    .end local v0    # "expPath":Ljava/io/File;
    .end local v1    # "main":Ljava/io/File;
    .end local v3    # "patch":Ljava/io/File;
    .end local v5    # "root":Ljava/io/File;
    .end local v6    # "strMainPath":Ljava/lang/String;
    .end local v7    # "strPatchPath":Ljava/lang/String;
    :cond_1
    return-void
.end method
