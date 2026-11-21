.class public Lcom/firsttouchgames/fts15/SafeModeActivity;
.super Landroid/app/Activity;
.source "SafeModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firsttouchgames/fts15/SafeModeActivity$1;,
        Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;
    }
.end annotation


# static fields
.field private static mCopiedFile:Ljava/io/File;

.field private static m_bFoundSupportRestore:Z

.field private static meAction:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity;->mCopiedFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    return-void
.end method

.method private WriteToZip(Ljava/util/zip/ZipOutputStream;Ljava/io/FileInputStream;Ljava/lang/String;)V
    .locals 8
    .param p1, "zipOutput"    # Ljava/util/zip/ZipOutputStream;
    .param p2, "inputStream"    # Ljava/io/FileInputStream;
    .param p3, "sFilename"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 112
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 114
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 115
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 117
    .local v3, "iCount":I
    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 119
    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v1    # "buffer":[B
    .end local v3    # "iCount":I
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to zip."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "sToastText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 130
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 132
    .end local v0    # "app":Landroid/app/Application;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "sToastText":Ljava/lang/String;
    :goto_1
    return-void

    .line 122
    .restart local v1    # "buffer":[B
    .restart local v3    # "iCount":I
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public Cancel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 562
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->setContentView(I)V

    .line 563
    return-void
.end method

.method public Confirm(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 567
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->setContentView(I)V

    .line 568
    const v1, 0x7f0a0034

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 570
    .local v0, "text":Landroid/widget/TextView;
    sget-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity$1;->$SwitchMap$com$firsttouchgames$fts15$SafeModeActivity$EACTION:[I

    sget-object v2, Lcom/firsttouchgames/fts15/SafeModeActivity;->meAction:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    invoke-virtual {v2}, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 614
    :goto_0
    return-void

    .line 573
    :pswitch_0
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->SendProfile()V

    .line 574
    const-string v1, "Profile send attempted"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 577
    :pswitch_1
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->DeleteSaveMatch()V

    .line 578
    const-string v1, "Saved Match Deleted"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 581
    :pswitch_2
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->DeleteSavedReplays()V

    .line 582
    const-string v1, "Replays Deleted"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 585
    :pswitch_3
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->ResetCustomData()V

    .line 586
    const-string v1, "Custom Data Reset"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 589
    :pswitch_4
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->ResetEndOfSeasonCups()V

    .line 590
    const-string v1, "End of Season Cups Reset"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 593
    :pswitch_5
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->ResetCurrentRegularSeason()V

    .line 594
    const-string v1, "Current Regular Season Reset"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 597
    :pswitch_6
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->ResetProfile()V

    .line 598
    const-string v1, "Profile Reset"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 601
    :pswitch_7
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->SupportRestore()V

    .line 602
    sget-boolean v1, Lcom/firsttouchgames/fts15/SafeModeActivity;->m_bFoundSupportRestore:Z

    if-eqz v1, :cond_0

    .line 603
    const-string v1, "Profile restore successful"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 605
    :cond_0
    const-string v1, "Profile restore failed. Please contact First Touch Games"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 608
    :pswitch_8
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->ExitSafeMode()V

    .line 609
    const-string v1, "Exiting safe mode. Restarting FTS15"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public DeleteFiles(Ljava/lang/String;)V
    .locals 7
    .param p1, "sExcludeFile"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 92
    .local v0, "app":Landroid/app/Application;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 93
    .local v2, "externalDir":Ljava/io/File;
    if-nez v2, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 98
    :cond_0
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 99
    .local v1, "bExcludeFile":Z
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 100
    .local v5, "pExternalFiles":[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "iFile":I
    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_4

    .line 102
    aget-object v3, v5, v4

    .line 103
    .local v3, "foundFile":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 104
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 100
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 98
    .end local v1    # "bExcludeFile":Z
    .end local v3    # "foundFile":Ljava/io/File;
    .end local v4    # "iFile":I
    .end local v5    # "pExternalFiles":[Ljava/io/File;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 106
    .restart local v1    # "bExcludeFile":Z
    .restart local v4    # "iFile":I
    .restart local v5    # "pExternalFiles":[Ljava/io/File;
    :cond_4
    return-void
.end method

.method public DeleteReplaysQuestion(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 289
    sget-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_DELETE_REPLAYS:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    sput-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity;->meAction:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 290
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->setContentView(I)V

    .line 291
    const v1, 0x7f0a0035

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 292
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "Are you sure you want to delete your replays?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    return-void
.end method

.method public DeleteSaveMatch()V
    .locals 5

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 276
    .local v0, "app":Landroid/app/Application;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 277
    .local v1, "externalDir":Ljava/io/File;
    if-nez v1, :cond_0

    .line 279
    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 282
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/currentmatch.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v2, "fCurrentMatch":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 285
    :cond_1
    return-void
.end method

.method public DeleteSaveMatchQuestion(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 267
    sget-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_DELETE_SAVE_MATCH:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    sput-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity;->meAction:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 268
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->setContentView(I)V

    .line 269
    const v1, 0x7f0a0035

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 270
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "Are you sure you want to delete your save match?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    return-void
.end method

.method public DeleteSavedReplays()V
    .locals 8

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 298
    .local v0, "app":Landroid/app/Application;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 299
    .local v1, "externalDir":Ljava/io/File;
    if-nez v1, :cond_0

    .line 301
    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 304
    :cond_0
    invoke-static {p0}, Lcom/firsttouchgames/fts15/FileManager;->Initialise(Landroid/app/Activity;)V

    .line 305
    const-string v6, ".rep"

    invoke-static {v6}, Lcom/firsttouchgames/fts15/FileManager;->GetFilesWithExtension(Ljava/lang/String;)I

    move-result v2

    .line 306
    .local v2, "iNumReplays":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "iReplay":I
    :goto_0
    if-ltz v3, :cond_2

    .line 308
    const-string v6, ".rep"

    invoke-static {v6, v3}, Lcom/firsttouchgames/fts15/FileManager;->GetFileNameWithExtension(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "sFilename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v4, "replayFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 312
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 306
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 314
    .end local v4    # "replayFile":Ljava/io/File;
    .end local v5    # "sFilename":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public ExitSafeMode()V
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    sput-boolean v0, Lcom/firsttouchgames/fts15/MainActivity;->mbEnterSafeMode:Z

    .line 553
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->finish()V

    .line 558
    return-void
.end method

.method public ExitSafeModeQuestion(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 536
    sget-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_EXIT_SAFEMODE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    sput-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity;->meAction:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 537
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->setContentView(I)V

    .line 538
    const v1, 0x7f0a0035

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 539
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "Are you sure you want to exit safe mode?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    return-void
.end method

.method public ResetCurrentRegularSeason()V
    .locals 5

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 372
    .local v0, "app":Landroid/app/Application;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 373
    .local v1, "externalDir":Ljava/io/File;
    if-nez v1, :cond_0

    .line 375
    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 378
    :cond_0
    invoke-static {}, Lcom/firsttouchgames/fts15/JNI;->SafeModeResetCurrentSeason()V

    .line 381
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/currentmatch.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .local v2, "fCurrentMatch":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 383
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 384
    :cond_1
    return-void
.end method

.method public ResetCurrentRegularSeasonQuestion(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 363
    sget-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_RESET_SEASON:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    sput-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity;->meAction:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 364
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->setContentView(I)V

    .line 365
    const v1, 0x7f0a0035

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 366
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "Are you sure you want to reset the current season save? This will reset to week 1 of the current season in progress."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    return-void
.end method

.method public ResetCustomData()V
    .locals 0

    .prologue
    .line 326
    invoke-static {}, Lcom/firsttouchgames/fts15/JNI;->SafeModeResetCustomData()V

    .line 327
    return-void
.end method

.method public ResetCustomDataQuestion(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 318
    sget-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_RESET_CUSTOM_DATA:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    sput-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity;->meAction:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 319
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->setContentView(I)V

    .line 320
    const v1, 0x7f0a0035

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 321
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "Are you sure you want to reset your custom data?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    return-void
.end method

.method public ResetEndOfSeasonCups()V
    .locals 10

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 340
    .local v0, "app":Landroid/app/Application;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 341
    .local v1, "externalDir":Ljava/io/File;
    if-nez v1, :cond_0

    .line 343
    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 347
    :cond_0
    const/4 v4, 0x1

    .local v4, "iSeasonSave":I
    :goto_0
    const/4 v6, 0x5

    if-ge v4, v6, :cond_2

    .line 349
    const-string v6, "%s/SeasonSave%d.xml"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "sFilename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v3, "fSeason":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 353
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 347
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 356
    .end local v3    # "fSeason":Ljava/io/File;
    .end local v5    # "sFilename":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/currentmatch.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v2, "fCurrentMatch":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 358
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 359
    :cond_3
    return-void
.end method

.method public ResetEndOfSeasonCupsQuestion(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 331
    sget-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_RESET_CUPS:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    sput-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity;->meAction:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 332
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->setContentView(I)V

    .line 333
    const v1, 0x7f0a0035

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 334
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "Are you sure you want to reset the end of season cup saves? This will delete your international cup, classic cup, first touch challenge and friendly saves if they exist."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    return-void
.end method

.method public ResetProfile()V
    .locals 7

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 397
    .local v0, "app":Landroid/app/Application;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 398
    .local v1, "externalDir":Ljava/io/File;
    if-nez v1, :cond_0

    .line 400
    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 403
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "externalDirectory":Ljava/lang/String;
    invoke-static {}, Lcom/firsttouchgames/fts15/JNI;->SafeModeResetCustomData()V

    .line 407
    const/4 v4, 0x1

    .local v4, "iSlot":I
    :goto_0
    const/16 v5, 0xb

    if-ge v4, v5, :cond_4

    .line 409
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/SeasonSave"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 411
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 413
    :cond_1
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/playerdevelopment"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 415
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 417
    :cond_2
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/teamplayerlinks_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 419
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 407
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 422
    .end local v3    # "file":Ljava/io/File;
    :cond_4
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ManagerModeSaveBackup.dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 424
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 426
    :cond_5
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/DatabaseSaveBackup.dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 428
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 430
    :cond_6
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/PlayerDevelopmentSaveBackup.dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 432
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 434
    :cond_7
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/profiledata.dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 436
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 438
    :cond_8
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/fts_config.dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 440
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 442
    :cond_9
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/customdata_0.dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 444
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 446
    :cond_a
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/currentmatch.dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 448
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 450
    :cond_b
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->DeleteSavedReplays()V

    .line 451
    return-void
.end method

.method public ResetProfileQuestion(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 388
    sget-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_RESET_PROFILE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    sput-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity;->meAction:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 389
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->setContentView(I)V

    .line 390
    const v1, 0x7f0a0035

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 391
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "Are you sure you want to reset your profile? This will also reset your season, dream team and transfers."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    return-void
.end method

.method public SendProfile()V
    .locals 23

    .prologue
    .line 144
    new-instance v12, Landroid/content/Intent;

    const-string v19, "android.intent.action.SEND"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v12, "intent":Landroid/content/Intent;
    const-string v19, "message/rfc822"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v19, "android.intent.extra.EMAIL"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "profiledata@ftpub.net"

    aput-object v22, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v19, "android.intent.extra.SUBJECT"

    const-string v20, "FTS15 Android Profile Data"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/firsttouchgames/fts15/DeviceManager;->GetDeviceInformationString()Ljava/lang/String;

    move-result-object v15

    .line 150
    .local v15, "sMessage":Ljava/lang/String;
    const-string v19, "android.intent.extra.TEXT"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 153
    .local v3, "app":Landroid/app/Application;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 154
    .local v5, "externalDir":Ljava/io/File;
    if-nez v5, :cond_0

    .line 156
    invoke-virtual {v3}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 159
    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/Attachments/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 162
    .local v14, "sDirectory":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v7, "fDirectory":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_1

    .line 164
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 166
    :cond_1
    new-instance v16, Ljava/io/File;

    const-string v19, "profile_data.dat"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v16, "writeTo":Ljava/io/File;
    :try_start_0
    new-instance v17, Ljava/util/zip/ZipOutputStream;

    new-instance v19, Ljava/io/FileOutputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 173
    .local v17, "zipOutput":Ljava/util/zip/ZipOutputStream;
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, "externalDirectory":Ljava/lang/String;
    const/4 v9, 0x1

    .local v9, "iSlot":I
    :goto_0
    const/16 v19, 0xb

    move/from16 v0, v19

    if-ge v9, v0, :cond_5

    .line 177
    new-instance v8, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/SeasonSave"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".dat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 180
    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 181
    .local v11, "inputStreamSeason":Ljava/io/FileInputStream;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SeasonSave"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".dat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v11, v2}, Lcom/firsttouchgames/fts15/SafeModeActivity;->WriteToZip(Ljava/util/zip/ZipOutputStream;Ljava/io/FileInputStream;Ljava/lang/String;)V

    .line 184
    .end local v11    # "inputStreamSeason":Ljava/io/FileInputStream;
    :cond_2
    new-instance v8, Ljava/io/File;

    .end local v8    # "file":Ljava/io/File;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/playerdevelopment"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".dat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 187
    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v11    # "inputStreamSeason":Ljava/io/FileInputStream;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "playerdevelopment"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".dat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v11, v2}, Lcom/firsttouchgames/fts15/SafeModeActivity;->WriteToZip(Ljava/util/zip/ZipOutputStream;Ljava/io/FileInputStream;Ljava/lang/String;)V

    .line 191
    .end local v11    # "inputStreamSeason":Ljava/io/FileInputStream;
    :cond_3
    new-instance v8, Ljava/io/File;

    .end local v8    # "file":Ljava/io/File;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/teamplayerlinks_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".dat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 194
    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 195
    .restart local v11    # "inputStreamSeason":Ljava/io/FileInputStream;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "teamplayerlinks_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".dat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v11, v2}, Lcom/firsttouchgames/fts15/SafeModeActivity;->WriteToZip(Ljava/util/zip/ZipOutputStream;Ljava/io/FileInputStream;Ljava/lang/String;)V

    .line 175
    .end local v11    # "inputStreamSeason":Ljava/io/FileInputStream;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 199
    .end local v8    # "file":Ljava/io/File;
    :cond_5
    new-instance v8, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/ManagerModeSaveBackup.dat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 202
    new-instance v10, Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 203
    .local v10, "inputStream":Ljava/io/FileInputStream;
    const-string v19, "ManagerModeSaveBackup.dat"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v10, v2}, Lcom/firsttouchgames/fts15/SafeModeActivity;->WriteToZip(Ljava/util/zip/ZipOutputStream;Ljava/io/FileInputStream;Ljava/lang/String;)V

    .line 206
    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    :cond_6
    new-instance v8, Ljava/io/File;

    .end local v8    # "file":Ljava/io/File;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/DatabaseSaveBackup.dat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 209
    new-instance v10, Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v10    # "inputStream":Ljava/io/FileInputStream;
    const-string v19, "DatabaseSaveBackup.dat"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v10, v2}, Lcom/firsttouchgames/fts15/SafeModeActivity;->WriteToZip(Ljava/util/zip/ZipOutputStream;Ljava/io/FileInputStream;Ljava/lang/String;)V

    .line 213
    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    :cond_7
    new-instance v8, Ljava/io/File;

    .end local v8    # "file":Ljava/io/File;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/PlayerDevelopmentSaveBackup.dat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 216
    new-instance v10, Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 217
    .restart local v10    # "inputStream":Ljava/io/FileInputStream;
    const-string v19, "PlayerDevelopmentSaveBackup.dat"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v10, v2}, Lcom/firsttouchgames/fts15/SafeModeActivity;->WriteToZip(Ljava/util/zip/ZipOutputStream;Ljava/io/FileInputStream;Ljava/lang/String;)V

    .line 220
    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    :cond_8
    new-instance v8, Ljava/io/File;

    .end local v8    # "file":Ljava/io/File;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/profiledata.dat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 223
    new-instance v10, Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v10    # "inputStream":Ljava/io/FileInputStream;
    const-string v19, "profiledata.dat"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v10, v2}, Lcom/firsttouchgames/fts15/SafeModeActivity;->WriteToZip(Ljava/util/zip/ZipOutputStream;Ljava/io/FileInputStream;Ljava/lang/String;)V

    .line 227
    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    :cond_9
    new-instance v8, Ljava/io/File;

    .end local v8    # "file":Ljava/io/File;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/fts_config.dat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 230
    new-instance v10, Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 231
    .restart local v10    # "inputStream":Ljava/io/FileInputStream;
    const-string v19, "fts_config.dat"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v10, v2}, Lcom/firsttouchgames/fts15/SafeModeActivity;->WriteToZip(Ljava/util/zip/ZipOutputStream;Ljava/io/FileInputStream;Ljava/lang/String;)V

    .line 234
    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    :cond_a
    new-instance v8, Ljava/io/File;

    .end local v8    # "file":Ljava/io/File;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/customdata_0.dat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 237
    new-instance v10, Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 238
    .restart local v10    # "inputStream":Ljava/io/FileInputStream;
    const-string v19, "customdata_0.dat"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v10, v2}, Lcom/firsttouchgames/fts15/SafeModeActivity;->WriteToZip(Ljava/util/zip/ZipOutputStream;Ljava/io/FileInputStream;Ljava/lang/String;)V

    .line 241
    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    :cond_b
    new-instance v8, Ljava/io/File;

    .end local v8    # "file":Ljava/io/File;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/currentmatch.dat"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 244
    new-instance v10, Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v10    # "inputStream":Ljava/io/FileInputStream;
    const-string v19, "currentmatch.dat"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v10, v2}, Lcom/firsttouchgames/fts15/SafeModeActivity;->WriteToZip(Ljava/util/zip/ZipOutputStream;Ljava/io/FileInputStream;Ljava/lang/String;)V

    .line 248
    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    :cond_c
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 250
    new-instance v18, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v18, "zippedFile":Ljava/io/File;
    const-string v19, "application/zip"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v19, "android.intent.extra.STREAM"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 253
    sput-object v16, Lcom/firsttouchgames/fts15/SafeModeActivity;->mCopiedFile:Ljava/io/File;

    .line 255
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v13

    .line 256
    .local v13, "mailer":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/firsttouchgames/fts15/SafeModeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v6    # "externalDirectory":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "iSlot":I
    .end local v13    # "mailer":Landroid/content/Intent;
    .end local v17    # "zipOutput":Ljava/util/zip/ZipOutputStream;
    .end local v18    # "zippedFile":Ljava/io/File;
    :goto_1
    return-void

    .line 258
    :catch_0
    move-exception v4

    .line 260
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "Unable to send email"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public SendProfileQuestion(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 136
    sget-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_SEND_PROFILE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    sput-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity;->meAction:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 137
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->setContentView(I)V

    .line 138
    const v1, 0x7f0a0035

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "Are you sure you want to send us your profile data?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public SupportRestore()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 463
    sput-boolean v13, Lcom/firsttouchgames/fts15/SafeModeActivity;->m_bFoundSupportRestore:Z

    .line 465
    invoke-static {}, Lcom/firsttouchgames/fts15/DeviceManager;->GetDeviceID()Ljava/lang/String;

    move-result-object v10

    .line 468
    .local v10, "sDeviceID":Ljava/lang/String;
    invoke-static {v10}, Lcom/firsttouchgames/fts15/JNI;->SafeModeSupportRestore(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 471
    .local v0, "app":Landroid/app/Application;
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 472
    .local v4, "externalDir":Ljava/io/File;
    if-nez v4, :cond_0

    .line 474
    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 482
    :cond_0
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".dat"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 483
    .local v9, "is":Ljava/io/InputStream;
    new-instance v12, Ljava/util/zip/ZipInputStream;

    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v13}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 485
    .local v12, "zis":Ljava/util/zip/ZipInputStream;
    const/16 v13, 0x400

    new-array v1, v13, [B

    .line 488
    .local v1, "buffer":[B
    :cond_1
    :goto_0
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v11

    .local v11, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v11, :cond_5

    .line 490
    const/4 v13, 0x1

    sput-boolean v13, Lcom/firsttouchgames/fts15/SafeModeActivity;->m_bFoundSupportRestore:Z

    .line 493
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 495
    .local v6, "filename":Ljava/lang/String;
    const-string v13, "currentmatch.dat"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 502
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 504
    new-instance v7, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 505
    .local v7, "fmd":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    .end local v1    # "buffer":[B
    .end local v6    # "filename":Ljava/lang/String;
    .end local v7    # "fmd":Ljava/io/File;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v11    # "ze":Ljava/util/zip/ZipEntry;
    .end local v12    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v3

    .line 530
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 532
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-void

    .line 509
    .restart local v1    # "buffer":[B
    .restart local v6    # "filename":Ljava/lang/String;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v11    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v12    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_3
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 512
    .local v8, "fout":Ljava/io/FileOutputStream;
    :goto_2
    invoke-virtual {v12, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v13, -0x1

    if-eq v2, v13, :cond_4

    .line 514
    const/4 v13, 0x0

    invoke-virtual {v8, v1, v13, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 517
    :cond_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 518
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    .line 521
    .end local v2    # "count":I
    .end local v6    # "filename":Ljava/lang/String;
    .end local v8    # "fout":Ljava/io/FileOutputStream;
    :cond_5
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V

    .line 524
    new-instance v5, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/currentmatch.dat"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    .local v5, "fCurrentMatch":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 526
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public SupportRestoreQuestion(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 455
    sget-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_SUPPORT_RESTORE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    sput-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity;->meAction:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 456
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->setContentView(I)V

    .line 457
    const v1, 0x7f0a0035

    invoke-virtual {p0, v1}, Lcom/firsttouchgames/fts15/SafeModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 458
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "Only tap Yes if you have recently been in contact with Support at First Touch Games - if you haven\'t then this could corrupt your profile data."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 85
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 86
    .local v0, "pid":I
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/firsttouchgames/fts15/SafeModeActivity;->setContentView(I)V

    .line 49
    sget-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_NONE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    sput-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity;->meAction:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 52
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/firsttouchgames/fts15/BootManager;->SetBootNumber(I)V

    .line 53
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 71
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    sget-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity;->mCopiedFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity;->mCopiedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity;->mCopiedFile:Ljava/io/File;

    .line 65
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 77
    return-void
.end method
