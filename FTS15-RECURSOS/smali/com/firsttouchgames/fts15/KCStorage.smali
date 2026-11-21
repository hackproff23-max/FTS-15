.class public Lcom/firsttouchgames/fts15/KCStorage;
.super Ljava/lang/Object;
.source "KCStorage.java"


# static fields
.field private static PREFS_NAME:Ljava/lang/String;

.field static m_Activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "MySettings"

    sput-object v0, Lcom/firsttouchgames/fts15/KCStorage;->PREFS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "settingName"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v2, Lcom/firsttouchgames/fts15/KCStorage;->m_Activity:Landroid/app/Activity;

    sget-object v3, Lcom/firsttouchgames/fts15/KCStorage;->PREFS_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 46
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v2, ""

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "settingValue":Ljava/lang/String;
    return-object v0
.end method

.method public static SaveSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "settingName"    # Ljava/lang/String;
    .param p1, "settingValue"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v2, Lcom/firsttouchgames/fts15/KCStorage;->m_Activity:Landroid/app/Activity;

    sget-object v3, Lcom/firsttouchgames/fts15/KCStorage;->PREFS_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 33
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method

.method public static SetActivity(Landroid/app/Activity;)V
    .locals 0
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 23
    sput-object p0, Lcom/firsttouchgames/fts15/KCStorage;->m_Activity:Landroid/app/Activity;

    .line 24
    return-void
.end method

.method public static SetSettingName(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    sput-object p0, Lcom/firsttouchgames/fts15/KCStorage;->PREFS_NAME:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static SettingExisits(Ljava/lang/String;)Z
    .locals 4
    .param p0, "settingName"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v1, Lcom/firsttouchgames/fts15/KCStorage;->m_Activity:Landroid/app/Activity;

    sget-object v2, Lcom/firsttouchgames/fts15/KCStorage;->PREFS_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
