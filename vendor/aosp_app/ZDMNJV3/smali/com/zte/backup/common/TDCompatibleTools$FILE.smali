.class Lcom/zte/backup/common/TDCompatibleTools$FILE;
.super Ljava/lang/Object;
.source "TDCompatibleTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/backup/common/TDCompatibleTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FILE"
.end annotation


# static fields
.field public static final FILE_NAME_ALARMS_TD:Ljava/lang/String; = "Alarm.xml"

.field public static final FILE_NAME_CALENDAR_TD:Ljava/lang/String; = "Calendar.xml"

.field public static final FILE_NAME_CALLHISTORY_TD:Ljava/lang/String; = "CallLog.xml"

.field public static final FILE_NAME_CONTACT_TD:Ljava/lang/String; = "contact.vcf"

.field public static final FILE_NAME_MMS_TD:Ljava/lang/String; = "MMS.xml"

.field public static final FILE_NAME_NOTES_TD:Ljava/lang/String; = "Notepad.xml"

.field public static final FILE_NAME_SMS_TD:Ljava/lang/String; = "SMS.xml"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
