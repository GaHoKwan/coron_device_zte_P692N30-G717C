.class public Lcom/zte/backup/composer/ComposerFactory;
.super Ljava/lang/Object;
.source "ComposerFactory.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$zte$backup$composer$DataType:[I

.field static bNotUseJarBackup:Z

.field static bNotUseJarRestore:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$zte$backup$composer$DataType()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/zte/backup/composer/ComposerFactory;->$SWITCH_TABLE$com$zte$backup$composer$DataType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/zte/backup/composer/DataType;->values()[Lcom/zte/backup/composer/DataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/zte/backup/composer/DataType;->ALARM:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_1
    :try_start_1
    sget-object v1, Lcom/zte/backup/composer/DataType;->APPS:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_2
    :try_start_2
    sget-object v1, Lcom/zte/backup/composer/DataType;->BROWSER:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_3
    :try_start_3
    sget-object v1, Lcom/zte/backup/composer/DataType;->CALENDAR:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_4
    :try_start_4
    sget-object v1, Lcom/zte/backup/composer/DataType;->CALLHISTORY:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_5
    :try_start_5
    sget-object v1, Lcom/zte/backup/composer/DataType;->FAVORITES:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_6
    :try_start_6
    sget-object v1, Lcom/zte/backup/composer/DataType;->GALLERY:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_7
    :try_start_7
    sget-object v1, Lcom/zte/backup/composer/DataType;->MMS:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    :try_start_8
    sget-object v1, Lcom/zte/backup/composer/DataType;->NONEAPP:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_9
    :try_start_9
    sget-object v1, Lcom/zte/backup/composer/DataType;->NOTES:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_a
    :try_start_a
    sget-object v1, Lcom/zte/backup/composer/DataType;->PHONEBOOK:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_b
    :try_start_b
    sget-object v1, Lcom/zte/backup/composer/DataType;->SETTINGS:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_c
    :try_start_c
    sget-object v1, Lcom/zte/backup/composer/DataType;->SMS:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_d
    :try_start_d
    sget-object v1, Lcom/zte/backup/composer/DataType;->SMSMMS:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_e
    :try_start_e
    sget-object v1, Lcom/zte/backup/composer/DataType;->ZTEBROWSER:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_f
    sput-object v0, Lcom/zte/backup/composer/ComposerFactory;->$SWITCH_TABLE$com$zte$backup$composer$DataType:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 40
    sput-boolean v0, Lcom/zte/backup/composer/ComposerFactory;->bNotUseJarBackup:Z

    .line 41
    sput-boolean v0, Lcom/zte/backup/composer/ComposerFactory;->bNotUseJarRestore:Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBackupComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;
    .locals 7
    .parameter "type"
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 44
    sget-boolean v3, Lcom/zte/backup/composer/ComposerFactory;->bNotUseJarBackup:Z

    if-eqz v3, :cond_0

    .line 45
    sput-boolean v4, Lcom/zte/backup/composer/ComposerFactory;->bNotUseJarBackup:Z

    .line 47
    :try_start_0
    const-string v3, "com.zte.statistics.sdk.ZTEStatistics"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, classRef:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "onEvent"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 49
    .local v1, m:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "use_ztebackup_sdk"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "backup"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0           #classRef:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/zte/backup/composer/ComposerFactory;->$SWITCH_TABLE$com$zte$backup$composer$DataType()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 82
    :goto_1
    :pswitch_0
    return-object v2

    .line 56
    :pswitch_1
    new-instance v2, Lcom/zte/backup/composer/contact/ContactBakcupComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/contact/ContactBakcupComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :pswitch_2
    new-instance v2, Lcom/zte/backup/composer/callhistory/CallHistoryBackupComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/callhistory/CallHistoryBackupComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :pswitch_3
    new-instance v2, Lcom/zte/backup/composer/sms/SmsBackupComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/sms/SmsBackupComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :pswitch_4
    new-instance v2, Lcom/zte/backup/composer/mms/MmsBackupComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/mms/MmsBackupComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :pswitch_5
    new-instance v2, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :pswitch_6
    new-instance v2, Lcom/zte/backup/composer/browser/BrowserBackupComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/browser/BrowserBackupComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :pswitch_7
    new-instance v2, Lcom/zte/backup/composer/settings/SettingsBackupComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/settings/SettingsBackupComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :pswitch_8
    new-instance v2, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/alarm/AlarmBackupComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :pswitch_9
    new-instance v2, Lcom/zte/backup/composer/notepad/NotepadBackupComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/notepad/NotepadBackupComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :pswitch_a
    new-instance v2, Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/favorites/FavoritesBackupComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :pswitch_b
    new-instance v2, Lcom/zte/backup/composer/app/AppBackupComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/app/AppBackupComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :pswitch_c
    new-instance v2, Lcom/zte/backup/composer/browser/ZTEBrowserBackupComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/browser/ZTEBrowserBackupComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 50
    :catch_0
    move-exception v3

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public static createRestoreComposerEntity(Lcom/zte/backup/composer/DataType;Landroid/content/Context;Ljava/lang/String;)Lcom/zte/backup/composer/Composer;
    .locals 7
    .parameter "type"
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 87
    sget-boolean v3, Lcom/zte/backup/composer/ComposerFactory;->bNotUseJarRestore:Z

    if-eqz v3, :cond_0

    .line 88
    sput-boolean v4, Lcom/zte/backup/composer/ComposerFactory;->bNotUseJarRestore:Z

    .line 91
    :try_start_0
    const-string v3, "com.zte.statistics.sdk.ZTEStatistics"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 92
    .local v0, classRef:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "onEvent"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 93
    .local v1, m:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "use_ztebackup_sdk"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "restore"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0           #classRef:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/zte/backup/composer/ComposerFactory;->$SWITCH_TABLE$com$zte$backup$composer$DataType()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 128
    :goto_1
    :pswitch_0
    return-object v2

    .line 102
    :pswitch_1
    new-instance v2, Lcom/zte/backup/composer/contact/ContactRestoreComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/contact/ContactRestoreComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :pswitch_2
    new-instance v2, Lcom/zte/backup/composer/callhistory/CallHistoryRestoreComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/callhistory/CallHistoryRestoreComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :pswitch_3
    new-instance v2, Lcom/zte/backup/composer/sms/SmsRestoreComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/sms/SmsRestoreComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :pswitch_4
    new-instance v2, Lcom/zte/backup/composer/mms/MmsRestoreComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/mms/MmsRestoreComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :pswitch_5
    new-instance v2, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :pswitch_6
    new-instance v2, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/browser/BrowserRestoreComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :pswitch_7
    new-instance v2, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/settings/SettingsRestoreComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :pswitch_8
    new-instance v2, Lcom/zte/backup/composer/alarm/AlarmRestoreComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/alarm/AlarmRestoreComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :pswitch_9
    new-instance v2, Lcom/zte/backup/composer/notepad/NotepadRestoreComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/notepad/NotepadRestoreComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :pswitch_a
    new-instance v2, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/favorites/FavoritesRestoreComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :pswitch_b
    new-instance v2, Lcom/zte/backup/composer/app/AppRestoreComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/app/AppRestoreComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :pswitch_c
    new-instance v2, Lcom/zte/backup/composer/browser/ZTEBrowserRestoreComposer;

    invoke-direct {v2, p1, p2}, Lcom/zte/backup/composer/browser/ZTEBrowserRestoreComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :catch_0
    move-exception v3

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method
