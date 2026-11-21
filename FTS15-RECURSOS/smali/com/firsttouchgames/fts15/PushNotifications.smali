.class public Lcom/firsttouchgames/fts15/PushNotifications;
.super Ljava/lang/Object;
.source "PushNotifications.java"


# static fields
.field private static mActivity:Lcom/firsttouchgames/fts15/MainActivity;

.field private static msGCM:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private static ms_Notifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/firsttouchgames/fts15/NotificationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddTimedNotification(ILjava/lang/String;I)I
    .locals 2
    .param p0, "iSeconds"    # I
    .param p1, "sMessage"    # Ljava/lang/String;
    .param p2, "iReward"    # I

    .prologue
    .line 109
    new-instance v0, Lcom/firsttouchgames/fts15/NotificationData;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/NotificationData;-><init>()V

    .line 110
    .local v0, "data":Lcom/firsttouchgames/fts15/NotificationData;
    iput p0, v0, Lcom/firsttouchgames/fts15/NotificationData;->iSeconds:I

    .line 111
    iput-object p1, v0, Lcom/firsttouchgames/fts15/NotificationData;->sMessage:Ljava/lang/String;

    .line 112
    iput p2, v0, Lcom/firsttouchgames/fts15/NotificationData;->iReward:I

    .line 114
    sget-object v1, Lcom/firsttouchgames/fts15/PushNotifications;->ms_Notifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v1, Lcom/firsttouchgames/fts15/PushNotifications;->ms_Notifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public static CancelAllTimedNotifications(I)V
    .locals 7
    .param p0, "iNumOverride"    # I

    .prologue
    .line 152
    sget-object v5, Lcom/firsttouchgames/fts15/PushNotifications;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Lcom/firsttouchgames/fts15/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 153
    .local v0, "alarm":Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/firsttouchgames/fts15/PushNotifications;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    const-class v6, Lcom/firsttouchgames/util/ExternalReceiver;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v4, "resultIntent":Landroid/content/Intent;
    sget-object v5, Lcom/firsttouchgames/fts15/PushNotifications;->ms_Notifications:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 156
    .local v2, "iNumNotifications":I
    if-gtz v2, :cond_0

    .line 157
    move v2, p0

    .line 159
    :cond_0
    const/4 v1, 0x0

    .local v1, "iNotification":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 161
    sget-object v5, Lcom/firsttouchgames/fts15/PushNotifications;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    const/high16 v6, 0x8000000

    invoke-static {v5, v1, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 162
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    return-void
.end method

.method public static CancelTimedNotification(I)V
    .locals 5
    .param p0, "iNotificationID"    # I

    .prologue
    .line 143
    sget-object v3, Lcom/firsttouchgames/fts15/PushNotifications;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Lcom/firsttouchgames/fts15/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 144
    .local v0, "alarm":Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/firsttouchgames/fts15/PushNotifications;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    const-class v4, Lcom/firsttouchgames/util/ExternalReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v2, "resultIntent":Landroid/content/Intent;
    sget-object v3, Lcom/firsttouchgames/fts15/PushNotifications;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    const/high16 v4, 0x8000000

    invoke-static {v3, p0, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 147
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 148
    return-void
.end method

.method public static Initialise(Lcom/firsttouchgames/fts15/MainActivity;)V
    .locals 1
    .param p0, "mainActivity"    # Lcom/firsttouchgames/fts15/MainActivity;

    .prologue
    .line 38
    sput-object p0, Lcom/firsttouchgames/fts15/PushNotifications;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/firsttouchgames/fts15/PushNotifications;->ms_Notifications:Ljava/util/ArrayList;

    .line 43
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/firsttouchgames/fts15/PushNotifications;->CancelAllTimedNotifications(I)V

    .line 44
    return-void
.end method

.method private static Register()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/firsttouchgames/fts15/PushNotifications$1;

    invoke-direct {v0}, Lcom/firsttouchgames/fts15/PushNotifications$1;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/fts15/PushNotifications$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    return-void
.end method

.method public static Reset()V
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/firsttouchgames/fts15/PushNotifications;->ms_Notifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    return-void
.end method

.method public static SendAllTimedNotifications()V
    .locals 4

    .prologue
    .line 121
    const/4 v1, 0x0

    .local v1, "iNotification":I
    :goto_0
    sget-object v2, Lcom/firsttouchgames/fts15/PushNotifications;->ms_Notifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 123
    sget-object v2, Lcom/firsttouchgames/fts15/PushNotifications;->ms_Notifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firsttouchgames/fts15/NotificationData;

    .line 124
    .local v0, "data":Lcom/firsttouchgames/fts15/NotificationData;
    iget-object v2, v0, Lcom/firsttouchgames/fts15/NotificationData;->sMessage:Ljava/lang/String;

    iget v3, v0, Lcom/firsttouchgames/fts15/NotificationData;->iSeconds:I

    invoke-static {v2, v3, v1}, Lcom/firsttouchgames/fts15/PushNotifications;->SendTimedNotification(Ljava/lang/String;II)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "data":Lcom/firsttouchgames/fts15/NotificationData;
    :cond_0
    return-void
.end method

.method public static SendNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sMessage"    # Ljava/lang/String;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 87
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f02002c

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f05004b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 92
    .local v0, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/firsttouchgames/fts15/MainActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v2, "resultIntent":Landroid/content/Intent;
    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 95
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 97
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 98
    .local v1, "notifyMngr":Landroid/app/NotificationManager;
    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 100
    .end local v0    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v1    # "notifyMngr":Landroid/app/NotificationManager;
    .end local v2    # "resultIntent":Landroid/content/Intent;
    .end local v3    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method public static SendTimedNotification(Ljava/lang/String;II)V
    .locals 8
    .param p0, "sMsg"    # Ljava/lang/String;
    .param p1, "iSeconds"    # I
    .param p2, "iNotification"    # I

    .prologue
    .line 130
    sget-object v4, Lcom/firsttouchgames/fts15/PushNotifications;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Lcom/firsttouchgames/fts15/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 131
    .local v0, "alarm":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/firsttouchgames/fts15/PushNotifications;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    const-class v5, Lcom/firsttouchgames/util/ExternalReceiver;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v3, "resultIntent":Landroid/content/Intent;
    const-string v4, "default"

    invoke-virtual {v3, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    sget-object v4, Lcom/firsttouchgames/fts15/PushNotifications;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    const/high16 v5, 0x8000000

    invoke-static {v4, p2, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 136
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 137
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit16 v6, p1, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 138
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 139
    return-void
.end method

.method public static Setup()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/firsttouchgames/fts15/PushNotifications;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    invoke-virtual {v0}, Lcom/firsttouchgames/fts15/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/fts15/PushNotifications;->msGCM:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 49
    invoke-static {}, Lcom/firsttouchgames/fts15/PushNotifications;->Register()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Lcom/firsttouchgames/fts15/MainActivity;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/firsttouchgames/fts15/PushNotifications;->mActivity:Lcom/firsttouchgames/fts15/MainActivity;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/firsttouchgames/fts15/PushNotifications;->msGCM:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object v0
.end method
