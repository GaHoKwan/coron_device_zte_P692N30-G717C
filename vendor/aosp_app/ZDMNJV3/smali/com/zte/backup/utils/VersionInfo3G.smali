.class public Lcom/zte/backup/utils/VersionInfo3G;
.super Lcom/zte/backup/utils/VersionInfo;
.source "VersionInfo3G.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/backup/utils/VersionInfo3G$CmccData;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$zte$backup$composer$DataType:[I = null

.field private static final BACKUP_REMARK:Ljava/lang/String; = "reMark"

.field public static final CMCC_PAK_EDN:Ljava/lang/String; = "zip"

.field private static final CMCC_Title:Ljava/lang/String; = "root"

.field private static final CMCC_component_title:Ljava/lang/String; = "component_list"

.field private static final Component:Ljava/lang/String; = "component"

.field public static final Component_Alarms:Ljava/lang/String; = "alarms"

.field public static final Component_Browse:Ljava/lang/String; = "browser"

.field public static final Component_Browse_ZTE:Ljava/lang/String; = "zteBrowser"

.field public static final Component_Calendar:Ljava/lang/String; = "calendar"

.field public static final Component_CallHistry:Ljava/lang/String; = "callHistory"

.field public static final Component_Contacts:Ljava/lang/String; = "contacts"

.field private static final Component_Count:Ljava/lang/String; = "count"

.field public static final Component_Favorites:Ljava/lang/String; = "desktop"

.field private static final Component_Folder:Ljava/lang/String; = "folder"

.field public static final Component_Gallery:Ljava/lang/String; = "picture"

.field public static final Component_Mms:Ljava/lang/String; = "mms"

.field public static final Component_Notes:Ljava/lang/String; = "notes"

.field public static final Component_Settings:Ljava/lang/String; = "settings"

.field public static final Component_Sms:Ljava/lang/String; = "sms"

.field private static final Components_List:Ljava/lang/String; = "component_list"

.field private static final TAG:Ljava/lang/String; = "VersionCMCC"

.field private static final XML_FILE_3G:Ljava/lang/String; = "backup.xml"

.field private static mInstance:Lcom/zte/backup/utils/VersionInfo3G;


# instance fields
.field private curReadComponentFolder:Ljava/lang/String;

.field private mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;


# direct methods
.method static synthetic $SWITCH_TABLE$com$zte$backup$composer$DataType()[I
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcom/zte/backup/utils/VersionInfo3G;->$SWITCH_TABLE$com$zte$backup$composer$DataType:[I

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
    sput-object v0, Lcom/zte/backup/utils/VersionInfo3G;->$SWITCH_TABLE$com$zte$backup$composer$DataType:[I

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
    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/backup/utils/VersionInfo3G;->mInstance:Lcom/zte/backup/utils/VersionInfo3G;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/zte/backup/utils/VersionInfo;-><init>()V

    .line 85
    new-instance v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zte/backup/utils/VersionInfo3G$CmccData;-><init>(Lcom/zte/backup/utils/VersionInfo3G$CmccData;)V

    iput-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$2(Lcom/zte/backup/utils/VersionInfo3G;)Lcom/zte/backup/utils/VersionInfo3G$CmccData;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zte/backup/utils/VersionInfo3G;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/zte/backup/utils/VersionInfo3G;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;

    return-object v0
.end method

.method private convertVerInfo2XmlStr()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 209
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 210
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 213
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 214
    const-string v4, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 215
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 216
    const/4 v4, 0x0

    const-string v5, "root"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    const-string v4, "backupdate"

    invoke-direct {p0}, Lcom/zte/backup/utils/VersionInfo3G;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/zte/backup/utils/VersionInfo3G;->setXmlElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v4, "devicetype"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v1, v4, v5}, Lcom/zte/backup/utils/VersionInfo3G;->setXmlElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v4, "system"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v1, v4, v5}, Lcom/zte/backup/utils/VersionInfo3G;->setXmlElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v4, "reMark"

    iget-object v5, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget-object v5, v5, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->reMark:Ljava/lang/String;

    invoke-virtual {p0, v1, v4, v5}, Lcom/zte/backup/utils/VersionInfo3G;->setXmlElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v4, 0x0

    const-string v5, "component_list"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    invoke-direct {p0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->setComponents(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 224
    const/4 v4, 0x0

    const-string v5, "component_list"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    const/4 v4, 0x0

    const-string v5, "root"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 227
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 232
    :goto_0
    return-object v3

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getDate()Ljava/lang/String;
    .locals 5

    .prologue
    .line 236
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 237
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 239
    .local v1, date:Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 240
    .local v3, strDate:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 241
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getInstance()Lcom/zte/backup/utils/VersionInfo3G;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/zte/backup/utils/VersionInfo3G;->mInstance:Lcom/zte/backup/utils/VersionInfo3G;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/zte/backup/utils/VersionInfo3G;

    invoke-direct {v0}, Lcom/zte/backup/utils/VersionInfo3G;-><init>()V

    sput-object v0, Lcom/zte/backup/utils/VersionInfo3G;->mInstance:Lcom/zte/backup/utils/VersionInfo3G;

    .line 97
    :cond_0
    sget-object v0, Lcom/zte/backup/utils/VersionInfo3G;->mInstance:Lcom/zte/backup/utils/VersionInfo3G;

    return-object v0
.end method

.method public static bridge synthetic getInstance()Lcom/zte/backup/utils/VersionInfo;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    return-object v0
.end method

.method private getItemCount(Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 388
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 400
    :goto_0
    return v0

    .line 388
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 389
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 392
    .local v0, count:I
    goto :goto_0

    .line 393
    .end local v0           #count:I
    :catch_0
    move-exception v1

    .line 394
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getRemarkFromXmlInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "cx"

    .prologue
    .line 493
    const-string v0, ""

    .line 549
    .local v0, returnString:Ljava/lang/String;
    return-object v0
.end method

.method private getRootElement()Landroid/sax/RootElement;
    .locals 6

    .prologue
    .line 429
    new-instance v4, Landroid/sax/RootElement;

    const-string v5, "root"

    invoke-direct {v4, v5}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    .line 431
    .local v4, root:Landroid/sax/RootElement;
    const-string v5, "reMark"

    invoke-virtual {v4, v5}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 432
    .local v3, remark:Landroid/sax/Element;
    new-instance v5, Lcom/zte/backup/utils/VersionInfo3G$1;

    invoke-direct {v5, p0}, Lcom/zte/backup/utils/VersionInfo3G$1;-><init>(Lcom/zte/backup/utils/VersionInfo3G;)V

    invoke-virtual {v3, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 439
    const-string v5, "component_list"

    invoke-virtual {v4, v5}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    .line 440
    .local v1, componentsList:Landroid/sax/Element;
    const-string v5, "component"

    invoke-virtual {v1, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    .line 441
    .local v0, component:Landroid/sax/Element;
    new-instance v5, Lcom/zte/backup/utils/VersionInfo3G$2;

    invoke-direct {v5, p0}, Lcom/zte/backup/utils/VersionInfo3G$2;-><init>(Lcom/zte/backup/utils/VersionInfo3G;)V

    invoke-virtual {v0, v5}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 453
    const-string v5, "count"

    invoke-virtual {v0, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    .line 454
    .local v2, num:Landroid/sax/Element;
    new-instance v5, Lcom/zte/backup/utils/VersionInfo3G$3;

    invoke-direct {v5, p0}, Lcom/zte/backup/utils/VersionInfo3G$3;-><init>(Lcom/zte/backup/utils/VersionInfo3G;)V

    invoke-virtual {v2, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 461
    return-object v4
.end method

.method private readInfoFromOkbConfig(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "okbConfig.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->getFileReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v2

    .line 350
    .local v2, reader:Ljava/io/BufferedReader;
    if-nez v2, :cond_0

    .line 384
    :goto_0
    return v4

    .line 354
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 357
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, str:Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_1

    .line 363
    iget-object v5, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    const-string v6, "ContactNum = "

    invoke-direct {p0, v0, v6}, Lcom/zte/backup/utils/VersionInfo3G;->getItemCount(Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->contactsNum:I

    .line 364
    iget-object v5, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    const-string v6, "SmsNum = "

    invoke-direct {p0, v0, v6}, Lcom/zte/backup/utils/VersionInfo3G;->getItemCount(Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->smsNum:I

    .line 365
    iget-object v5, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    const-string v6, "MmsNum = "

    invoke-direct {p0, v0, v6}, Lcom/zte/backup/utils/VersionInfo3G;->getItemCount(Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->mmsNum:I

    .line 366
    iget-object v5, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    const-string v6, "CalendarNum = "

    invoke-direct {p0, v0, v6}, Lcom/zte/backup/utils/VersionInfo3G;->getItemCount(Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->calendarNum:I

    .line 367
    iget-object v5, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    const-string v6, "CallHistory = "

    invoke-direct {p0, v0, v6}, Lcom/zte/backup/utils/VersionInfo3G;->getItemCount(Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->callHistryNum:I

    .line 368
    iget-object v5, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    const-string v6, "Browser = "

    invoke-direct {p0, v0, v6}, Lcom/zte/backup/utils/VersionInfo3G;->getItemCount(Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->browseNum:I

    .line 369
    iget-object v5, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    const-string v6, "Settings = "

    invoke-direct {p0, v0, v6}, Lcom/zte/backup/utils/VersionInfo3G;->getItemCount(Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->settingsNum:I

    .line 370
    iget-object v5, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    const-string v6, "Alarms = "

    invoke-direct {p0, v0, v6}, Lcom/zte/backup/utils/VersionInfo3G;->getItemCount(Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->alarmsNum:I

    .line 371
    iget-object v5, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    const-string v6, "NotePad = "

    invoke-direct {p0, v0, v6}, Lcom/zte/backup/utils/VersionInfo3G;->getItemCount(Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->notesNum:I

    .line 372
    iget-object v5, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    const-string v6, "Favorite = "

    invoke-direct {p0, v0, v6}, Lcom/zte/backup/utils/VersionInfo3G;->getItemCount(Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->favoritesSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 378
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .line 359
    :cond_1
    :try_start_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_1

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 374
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #str:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 375
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 379
    :catch_2
    move-exception v1

    .line 380
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 376
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 378
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 382
    :goto_3
    throw v4

    .line 379
    :catch_3
    move-exception v1

    .line 380
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private readXml(Ljava/io/File;)Z
    .locals 7
    .parameter "xmlFile"

    .prologue
    .line 404
    const/4 v2, 0x0

    .line 406
    .local v2, inputXml:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v2           #inputXml:Ljava/io/InputStream;
    .local v3, inputXml:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 408
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 409
    .local v4, parser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 410
    .local v5, reader:Lorg/xml/sax/XMLReader;
    invoke-direct {p0}, Lcom/zte/backup/utils/VersionInfo3G;->getRootElement()Landroid/sax/RootElement;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 411
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 416
    if-eqz v3, :cond_0

    .line 418
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 425
    :cond_0
    :goto_0
    const/4 v6, 0x1

    move-object v2, v3

    .end local v1           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v3           #inputXml:Ljava/io/InputStream;
    .end local v4           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v5           #reader:Lorg/xml/sax/XMLReader;
    .restart local v2       #inputXml:Ljava/io/InputStream;
    :goto_1
    return v6

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 416
    if-eqz v2, :cond_1

    .line 418
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 414
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    const/4 v6, 0x0

    goto :goto_1

    .line 419
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 420
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 415
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 416
    :goto_4
    if-eqz v2, :cond_2

    .line 418
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 423
    :cond_2
    :goto_5
    throw v6

    .line 419
    :catch_2
    move-exception v0

    .line 420
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 419
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #inputXml:Ljava/io/InputStream;
    .restart local v1       #factory:Ljavax/xml/parsers/SAXParserFactory;
    .restart local v3       #inputXml:Ljava/io/InputStream;
    .restart local v4       #parser:Ljavax/xml/parsers/SAXParser;
    .restart local v5       #reader:Lorg/xml/sax/XMLReader;
    :catch_3
    move-exception v0

    .line 420
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 415
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v4           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v5           #reader:Lorg/xml/sax/XMLReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #inputXml:Ljava/io/InputStream;
    .restart local v2       #inputXml:Ljava/io/InputStream;
    goto :goto_4

    .line 412
    .end local v2           #inputXml:Ljava/io/InputStream;
    .restart local v3       #inputXml:Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #inputXml:Ljava/io/InputStream;
    .restart local v2       #inputXml:Ljava/io/InputStream;
    goto :goto_2
.end method

.method private setAlarms(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    const-string v0, "alarms"

    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v1, v1, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->alarmsNum:I

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->setElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 275
    return-void
.end method

.method private setBrowse(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    const-string v0, "browser"

    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v1, v1, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->browseNum:I

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->setElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 283
    return-void
.end method

.method private setCalendar(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    const-string v0, "calendar"

    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v1, v1, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->calendarNum:I

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->setElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 295
    return-void
.end method

.method private setCallhistory(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    const-string v0, "callHistory"

    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v1, v1, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->callHistryNum:I

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->setElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 291
    return-void
.end method

.method private setComponents(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/zte/backup/utils/VersionInfo3G;->setContacts(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/zte/backup/utils/VersionInfo3G;->setSms(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 249
    invoke-direct {p0, p1}, Lcom/zte/backup/utils/VersionInfo3G;->setMms(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/zte/backup/utils/VersionInfo3G;->setCalendar(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 251
    invoke-direct {p0, p1}, Lcom/zte/backup/utils/VersionInfo3G;->setCallhistory(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/zte/backup/utils/VersionInfo3G;->setBrowse(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 253
    invoke-direct {p0, p1}, Lcom/zte/backup/utils/VersionInfo3G;->setSettings(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/zte/backup/utils/VersionInfo3G;->setAlarms(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 255
    invoke-direct {p0, p1}, Lcom/zte/backup/utils/VersionInfo3G;->setNotes(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/zte/backup/utils/VersionInfo3G;->setFavorites(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/zte/backup/utils/VersionInfo3G;->setGallery(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 258
    invoke-direct {p0, p1}, Lcom/zte/backup/utils/VersionInfo3G;->setZTEBrowse(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 259
    return-void
.end method

.method private setContacts(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    const-string v0, "contacts"

    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v1, v1, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->contactsNum:I

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->setElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 307
    return-void
.end method

.method private setElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V
    .locals 3
    .parameter "serializer"
    .parameter "ele"
    .parameter "num"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 311
    if-gtz p3, :cond_0

    .line 320
    :goto_0
    return-void

    .line 314
    :cond_0
    const-string v0, "component"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    const-string v0, "name"

    invoke-interface {p1, v2, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    const-string v0, "id"

    invoke-interface {p1, v2, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    const-string v0, "folder"

    invoke-virtual {p0, p1, v0, p2}, Lcom/zte/backup/utils/VersionInfo3G;->setXmlElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "count"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->setXmlElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "component"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private setFavorites(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    const-string v0, "desktop"

    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v1, v1, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->favoritesSize:I

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->setElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 267
    return-void
.end method

.method private setGallery(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    const-string v0, "picture"

    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v1, v1, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->galleryNum:I

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->setElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 263
    return-void
.end method

.method private setMms(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    const-string v0, "mms"

    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v1, v1, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->mmsNum:I

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->setElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 299
    return-void
.end method

.method private setNotes(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    const-string v0, "notes"

    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v1, v1, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->notesNum:I

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->setElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 271
    return-void
.end method

.method private setSettings(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    const-string v0, "settings"

    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v1, v1, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->settingsNum:I

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->setElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 279
    return-void
.end method

.method private setSms(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    const-string v0, "sms"

    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v1, v1, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->smsNum:I

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->setElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 303
    return-void
.end method

.method private setZTEBrowse(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    const-string v0, "zteBrowser"

    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v1, v1, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->zteBrowseNum:I

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->setElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 287
    return-void
.end method

.method private writeXml(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "path"
    .parameter "xmlStr"

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, os:Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 326
    .local v3, osw:Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "backup.xml"

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v1           #os:Ljava/io/OutputStream;
    .local v2, os:Ljava/io/OutputStream;
    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 328
    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .local v4, osw:Ljava/io/OutputStreamWriter;
    :try_start_2
    invoke-virtual {v4, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 334
    if-eqz v4, :cond_0

    .line 335
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 337
    :cond_0
    if-eqz v2, :cond_1

    .line 338
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 345
    :cond_1
    :goto_0
    const/4 v5, 0x1

    move-object v3, v4

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    :goto_1
    return v5

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 334
    if-eqz v3, :cond_2

    .line 335
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 337
    :cond_2
    if-eqz v1, :cond_3

    .line 338
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 331
    :cond_3
    :goto_3
    const/4 v5, 0x0

    goto :goto_1

    .line 340
    :catch_1
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 332
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 334
    :goto_4
    if-eqz v3, :cond_4

    .line 335
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 337
    :cond_4
    if-eqz v1, :cond_5

    .line 338
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 343
    :cond_5
    :goto_5
    throw v5

    .line 340
    :catch_2
    move-exception v0

    .line 341
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 340
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #os:Ljava/io/OutputStream;
    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #os:Ljava/io/OutputStream;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v0

    .line 341
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 332
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_4

    .end local v1           #os:Ljava/io/OutputStream;
    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #os:Ljava/io/OutputStream;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_4

    .line 329
    .end local v1           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_2

    .end local v1           #os:Ljava/io/OutputStream;
    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #os:Ljava/io/OutputStream;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_2
.end method


# virtual methods
.method public addComponent(Lcom/zte/backup/composer/Composer;)V
    .locals 3
    .parameter "coposer"

    .prologue
    .line 160
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->$SWITCH_TABLE$com$zte$backup$composer$DataType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getType()Lcom/zte/backup/composer/DataType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getTotalNum()I

    move-result v1

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->contactsNum:I

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getTotalNum()I

    move-result v1

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->smsNum:I

    goto :goto_0

    .line 168
    :pswitch_2
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getTotalNum()I

    move-result v1

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->mmsNum:I

    goto :goto_0

    .line 171
    :pswitch_3
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getTotalNum()I

    move-result v1

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->calendarNum:I

    goto :goto_0

    .line 174
    :pswitch_4
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getTotalNum()I

    move-result v1

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->callHistryNum:I

    goto :goto_0

    .line 177
    :pswitch_5
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getTotalNum()I

    move-result v1

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->browseNum:I

    goto :goto_0

    .line 180
    :pswitch_6
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getSize()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->settingsNum:I

    goto :goto_0

    .line 183
    :pswitch_7
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getTotalNum()I

    move-result v1

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->alarmsNum:I

    goto :goto_0

    .line 186
    :pswitch_8
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getTotalNum()I

    move-result v1

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->notesNum:I

    goto :goto_0

    .line 189
    :pswitch_9
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getSize()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->favoritesSize:I

    goto :goto_0

    .line 192
    :pswitch_a
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getTotalNum()I

    move-result v1

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->galleryNum:I

    goto :goto_0

    .line 195
    :pswitch_b
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getTotalNum()I

    move-result v1

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->zteBrowseNum:I

    goto :goto_0

    .line 160
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public clearComponent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-super {p0}, Lcom/zte/backup/utils/VersionInfo;->resetData()V

    .line 128
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->contactsNum:I

    .line 129
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->smsNum:I

    .line 130
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->mmsNum:I

    .line 131
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->calendarNum:I

    .line 132
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->callHistryNum:I

    .line 133
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->browseNum:I

    .line 134
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->settingsNum:I

    .line 135
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->alarmsNum:I

    .line 136
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->notesNum:I

    .line 137
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->favoritesSize:I

    .line 138
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->galleryNum:I

    .line 139
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->zteBrowseNum:I

    .line 140
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    const-string v1, ""

    iput-object v1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->reMark:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public getAlarmsNum()I
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->alarmsNum:I

    return v0
.end method

.method public getBrowseNum()I
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->browseNum:I

    return v0
.end method

.method public getCalendarNum()I
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->calendarNum:I

    return v0
.end method

.method public getCallHistryNum()I
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->callHistryNum:I

    return v0
.end method

.method public getContactsNum()I
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->contactsNum:I

    return v0
.end method

.method public getFavoritesSize()I
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->favoritesSize:I

    return v0
.end method

.method public getGalleryNum()I
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->galleryNum:I

    return v0
.end method

.method public getMmsCount()I
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->mmsNum:I

    return v0
.end method

.method public getNotesNum()I
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->notesNum:I

    return v0
.end method

.method public getRemark(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cx"
    .parameter "srcPath"

    .prologue
    .line 148
    invoke-virtual {p0, p2}, Lcom/zte/backup/utils/VersionInfo3G;->readVerInfoFromXml(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget-object v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->reMark:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget-object v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->reMark:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget-object v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->reMark:Ljava/lang/String;

    .line 156
    :goto_0
    return-object v0

    .line 153
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/backup/utils/VersionInfo3G;->getRemarkFromXmlInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingsSize()I
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->settingsNum:I

    return v0
.end method

.method public getSmsCount()I
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->smsNum:I

    return v0
.end method

.method public getSmsMmsCount()I
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->smsNum:I

    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v1, v1, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->mmsNum:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getZTEBrowseNum()I
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iget v0, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->zteBrowseNum:I

    return v0
.end method

.method public isDataPakContainsBackupInfo(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    const/4 v2, 0x1

    .line 554
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "backup.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 555
    .local v0, backupXml:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 564
    :cond_0
    :goto_0
    return v2

    .line 559
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "okbConfig.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    .local v1, okbConfig:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 564
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public readVerInfoFromXml(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/zte/backup/utils/VersionInfo3G;->clearComponent()V

    .line 103
    new-instance v0, Ljava/io/File;

    const-string v1, "backup.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v0, xmlFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    invoke-super {p0, p1}, Lcom/zte/backup/utils/VersionInfo;->readVerInfoFromXml(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    invoke-super {p0}, Lcom/zte/backup/utils/VersionInfo;->getMmsCount()I

    move-result v2

    iput v2, v1, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->mmsNum:I

    .line 107
    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    invoke-super {p0}, Lcom/zte/backup/utils/VersionInfo;->getSmsCount()I

    move-result v2

    iput v2, v1, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->smsNum:I

    .line 110
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/backup/utils/VersionInfo3G;->readInfoFromOkbConfig(Ljava/lang/String;)Z

    move-result v1

    .line 113
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/zte/backup/utils/VersionInfo3G;->readXml(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method protected setCurReadComponentNum(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput p1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->contactsNum:I

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput p1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->smsNum:I

    goto :goto_0

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput p1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->mmsNum:I

    goto :goto_0

    .line 471
    :cond_3
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;

    const-string v1, "calendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 472
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput p1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->calendarNum:I

    goto :goto_0

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;

    const-string v1, "callHistory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 474
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput p1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->callHistryNum:I

    goto :goto_0

    .line 475
    :cond_5
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;

    const-string v1, "browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 476
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput p1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->browseNum:I

    goto :goto_0

    .line 477
    :cond_6
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 478
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput p1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->settingsNum:I

    goto :goto_0

    .line 479
    :cond_7
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;

    const-string v1, "alarms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 480
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput p1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->alarmsNum:I

    goto :goto_0

    .line 481
    :cond_8
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;

    const-string v1, "notes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 482
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput p1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->notesNum:I

    goto :goto_0

    .line 483
    :cond_9
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;

    const-string v1, "desktop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 484
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput p1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->favoritesSize:I

    goto/16 :goto_0

    .line 485
    :cond_a
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;

    const-string v1, "picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 486
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput p1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->galleryNum:I

    goto/16 :goto_0

    .line 487
    :cond_b
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;

    const-string v1, "zteBrowser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput p1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->zteBrowseNum:I

    goto/16 :goto_0
.end method

.method public setReMark(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    iput-object p1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->reMark:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public writeVerInfo2Xml(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/zte/backup/utils/VersionInfo3G;->convertVerInfo2XmlStr()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, xmlStr:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 119
    const/4 v1, 0x0

    .line 122
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/zte/backup/utils/VersionInfo3G;->writeXml(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
