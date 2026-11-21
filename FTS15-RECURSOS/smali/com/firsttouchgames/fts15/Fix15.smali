.class public Lcom/firsttouchgames/fts15/Fix15;
.super Ljava/lang/Object;
.source "Fix15.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FTS15FIX"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDir(Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static applyScreen(Landroid/app/Activity;)V
    .locals 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_ui

    const/4 v3, 0x1

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_mode

    const/4 v3, 0x3

    :cond_mode
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_ui
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x1706

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static askPermissions(Landroid/app/Activity;)V
    .locals 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_done

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_done

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/16 v3, 0x15f

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_done
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static collectDirs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/firsttouchgames/fts15/Fix15;->addDir(Ljava/util/ArrayList;Ljava/io/File;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Android/obb/"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/firsttouchgames/fts15/Fix15;->addDir(Ljava/util/ArrayList;Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/firsttouchgames/fts15/Fix15;->addDir(Ljava/util/ArrayList;Ljava/io/File;)V

    const-string v3, "Android/data/"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/firsttouchgames/fts15/Fix15;->addDir(Ljava/util/ArrayList;Ljava/io/File;)V

    const-string v4, "/files"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/firsttouchgames/fts15/Fix15;->addDir(Ljava/util/ArrayList;Ljava/io/File;)V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/firsttouchgames/fts15/Fix15;->addDir(Ljava/util/ArrayList;Ljava/io/File;)V

    return-object v0
.end method

.method public static findObbs(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 11

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/firsttouchgames/fts15/Fix15;->collectDirs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v6, "FTS15FIX"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "main."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".obb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    :loop1
    if-ge v4, v5, :end1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/firsttouchgames/fts15/Fix15;->okFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :next1

    move-object v3, v7

    goto :end1

    :next1
    add-int/lit8 v4, v4, 0x1

    goto :loop1

    :end1
    if-nez v3, :have

    const/4 v4, 0x0

    :loop2
    if-ge v4, v5, :end2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-static {v6}, Lcom/firsttouchgames/fts15/Fix15;->scan(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :next2

    move-object v3, v7

    goto :end2

    :next2
    add-int/lit8 v4, v4, 0x1

    goto :loop2

    :end2
    if-nez v3, :have

    const-string v6, "FTS15FIX"

    const-string v7, "obb nao encontrado"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    return-object v6

    :have
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "patch."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".obb"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/firsttouchgames/fts15/Fix15;->okFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :only_main

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x1

    aput-object v10, v8, v9

    goto :done

    :only_main
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    :done
    const-string v9, "FTS15FIX"

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static onCreateHook(Landroid/app/Activity;)V
    .locals 2

    invoke-static {p0}, Lcom/firsttouchgames/fts15/Fix15;->applyScreen(Landroid/app/Activity;)V

    const/16 v0, 0x3b

    invoke-static {p0, v0}, Lcom/firsttouchgames/fts15/Fix15;->findObbs(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/firsttouchgames/fts15/Fix15;->askPermissions(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private static okFile(Ljava/io/File;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_no

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_no

    const/4 v0, 0x1

    return v0

    :cond_no
    const/4 v0, 0x0

    return v0
.end method

.method public static refresh(Landroid/app/Activity;)V
    .locals 3

    const/16 v0, 0x3b

    invoke-static {p0, v0}, Lcom/firsttouchgames/fts15/Fix15;->findObbs(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    :try_start_0
    invoke-static {v1}, Lcom/firsttouchgames/fts15/JNI;->setExpansionPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static scan(Ljava/io/File;)Ljava/io/File;
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_list

    const/4 v1, 0x0

    return-object v1

    :cond_list
    array-length v1, v0

    const/4 v2, 0x0

    :loop
    if-ge v2, v1, :cond_end

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "main."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_next

    const-string v5, ".obb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_next

    invoke-static {v3}, Lcom/firsttouchgames/fts15/Fix15;->okFile(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_next

    return-object v3

    :cond_next
    add-int/lit8 v2, v2, 0x1

    goto :loop

    :cond_end
    const/4 v1, 0x0

    return-object v1
.end method
