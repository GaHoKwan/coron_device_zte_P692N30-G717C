.class public Lcom/zte/backup/common/TDCompatibleTools;
.super Ljava/lang/Object;
.source "TDCompatibleTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/backup/common/TDCompatibleTools$DIR;,
        Lcom/zte/backup/common/TDCompatibleTools$FILE;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$zte$backup$composer$DataType:[I

.field private static mValues:Landroid/content/ContentValues;


# direct methods
.method static synthetic $SWITCH_TABLE$com$zte$backup$composer$DataType()[I
    .locals 3

    .prologue
    .line 9
    sget-object v0, Lcom/zte/backup/common/TDCompatibleTools;->$SWITCH_TABLE$com$zte$backup$composer$DataType:[I

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
    sput-object v0, Lcom/zte/backup/common/TDCompatibleTools;->$SWITCH_TABLE$com$zte$backup$composer$DataType:[I

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
    .line 36
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/zte/backup/common/TDCompatibleTools;->mValues:Landroid/content/ContentValues;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentValuesForDB([Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 4
    .parameter "columnNames"
    .parameter "values"

    .prologue
    .line 189
    sget-object v2, Lcom/zte/backup/common/TDCompatibleTools;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 190
    const/4 v1, 0x0

    .line 192
    .local v1, data:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, columnIndex:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 199
    sget-object v2, Lcom/zte/backup/common/TDCompatibleTools;->mValues:Landroid/content/ContentValues;

    return-object v2

    .line 193
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #data:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 194
    .restart local v1       #data:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 195
    sget-object v2, Lcom/zte/backup/common/TDCompatibleTools;->mValues:Landroid/content/ContentValues;

    aget-object v3, p0, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getFileNameByDataType(Lcom/zte/backup/composer/DataType;)Ljava/lang/String;
    .locals 2
    .parameter "dataType"

    .prologue
    .line 79
    invoke-static {}, Lcom/zte/backup/common/TDCompatibleTools;->$SWITCH_TABLE$com$zte$backup$composer$DataType()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 95
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 81
    :pswitch_1
    const-string v0, "contact.vcf"

    goto :goto_0

    .line 83
    :pswitch_2
    const-string v0, "SMS.xml"

    goto :goto_0

    .line 85
    :pswitch_3
    const-string v0, "MMS.xml"

    goto :goto_0

    .line 87
    :pswitch_4
    const-string v0, "Calendar.xml"

    goto :goto_0

    .line 89
    :pswitch_5
    const-string v0, "CallLog.xml"

    goto :goto_0

    .line 91
    :pswitch_6
    const-string v0, "Alarm.xml"

    goto :goto_0

    .line 93
    :pswitch_7
    const-string v0, "Notepad.xml"

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getFolderFileByDataType(Lcom/zte/backup/composer/DataType;)Ljava/lang/String;
    .locals 2
    .parameter "dataType"

    .prologue
    .line 58
    invoke-static {}, Lcom/zte/backup/common/TDCompatibleTools;->$SWITCH_TABLE$com$zte$backup$composer$DataType()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 74
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 60
    :pswitch_1
    const-string v0, "contacts"

    goto :goto_0

    .line 62
    :pswitch_2
    const-string v0, "message"

    goto :goto_0

    .line 64
    :pswitch_3
    const-string v0, "mms"

    goto :goto_0

    .line 66
    :pswitch_4
    const-string v0, "calendar"

    goto :goto_0

    .line 68
    :pswitch_5
    const-string v0, "calllog"

    goto :goto_0

    .line 70
    :pswitch_6
    const-string v0, "alarm"

    goto :goto_0

    .line 72
    :pswitch_7
    const-string v0, "notepad"

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getUriColumnNames(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 183
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, columnNames:[Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 185
    return-object v6
.end method
