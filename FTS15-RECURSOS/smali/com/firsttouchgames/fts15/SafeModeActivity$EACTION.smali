.class final enum Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;
.super Ljava/lang/Enum;
.source "SafeModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/fts15/SafeModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

.field public static final enum ACTION_DELETE_REPLAYS:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

.field public static final enum ACTION_DELETE_SAVE_MATCH:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

.field public static final enum ACTION_EXIT_SAFEMODE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

.field public static final enum ACTION_NONE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

.field public static final enum ACTION_RESET_CUPS:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

.field public static final enum ACTION_RESET_CUSTOM_DATA:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

.field public static final enum ACTION_RESET_PROFILE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

.field public static final enum ACTION_RESET_SEASON:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

.field public static final enum ACTION_SEND_PROFILE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

.field public static final enum ACTION_SUPPORT_RESTORE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    const-string v1, "ACTION_NONE"

    invoke-direct {v0, v1, v3}, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_NONE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 29
    new-instance v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    const-string v1, "ACTION_SEND_PROFILE"

    invoke-direct {v0, v1, v4}, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_SEND_PROFILE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 30
    new-instance v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    const-string v1, "ACTION_DELETE_SAVE_MATCH"

    invoke-direct {v0, v1, v5}, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_DELETE_SAVE_MATCH:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 31
    new-instance v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    const-string v1, "ACTION_DELETE_REPLAYS"

    invoke-direct {v0, v1, v6}, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_DELETE_REPLAYS:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 32
    new-instance v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    const-string v1, "ACTION_RESET_CUSTOM_DATA"

    invoke-direct {v0, v1, v7}, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_RESET_CUSTOM_DATA:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 33
    new-instance v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    const-string v1, "ACTION_RESET_CUPS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_RESET_CUPS:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 34
    new-instance v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    const-string v1, "ACTION_RESET_SEASON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_RESET_SEASON:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 35
    new-instance v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    const-string v1, "ACTION_RESET_PROFILE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_RESET_PROFILE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 36
    new-instance v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    const-string v1, "ACTION_SUPPORT_RESTORE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_SUPPORT_RESTORE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 37
    new-instance v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    const-string v1, "ACTION_EXIT_SAFEMODE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_EXIT_SAFEMODE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    sget-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_NONE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_SEND_PROFILE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_DELETE_SAVE_MATCH:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_DELETE_REPLAYS:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    aput-object v1, v0, v6

    sget-object v1, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_RESET_CUSTOM_DATA:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_RESET_CUPS:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_RESET_SEASON:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_RESET_PROFILE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_SUPPORT_RESTORE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->ACTION_EXIT_SAFEMODE:Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    aput-object v2, v0, v1

    sput-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->$VALUES:[Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    return-object v0
.end method

.method public static values()[Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->$VALUES:[Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    invoke-virtual {v0}, [Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firsttouchgames/fts15/SafeModeActivity$EACTION;

    return-object v0
.end method
