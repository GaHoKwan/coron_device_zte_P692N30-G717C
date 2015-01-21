.class public Lcom/android/exchange/utility/CalendarUtilities;
.super Ljava/lang/Object;
.source "CalendarUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/utility/CalendarUtilities$RRule;,
        Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    }
.end annotation


# static fields
.field private static final ALLOWED_ATTENDEE_TYPES:Ljava/lang/String; = "0,1,2"

.field private static final ALLOWED_AVAILABILITIES:Ljava/lang/String; = "0,1,2"

.field private static final ALLOWED_REMINDER_TYPES:Ljava/lang/String; = "0,1"

.field public static final BUSY_STATUS_BUSY:I = 0x2

.field public static final BUSY_STATUS_FREE:I = 0x0

.field public static final BUSY_STATUS_OUT_OF_OFFICE:I = 0x3

.field public static final BUSY_STATUS_TENTATIVE:I = 0x1

.field static final DAYS:J = 0x5265c00L

.field protected static final EAS_FRIDAY:I = 0x20

.field protected static final EAS_MONDAY:I = 0x2

.field protected static final EAS_SATURDAY:I = 0x40

.field protected static final EAS_SUNDAY:I = 0x1

.field protected static final EAS_THURSDAY:I = 0x10

.field protected static final EAS_TUESDAY:I = 0x4

.field protected static final EAS_WEDNESDAY:I = 0x8

.field protected static final EAS_WEEKDAYS:I = 0x3e

.field protected static final EAS_WEEKENDS:I = 0x41

.field static final HOURS:I = 0x36ee80

.field private static final ICALENDAR_ATTENDEE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT"

.field static final ICALENDAR_ATTENDEE_ACCEPT:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED"

.field static final ICALENDAR_ATTENDEE_CANCEL:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT"

.field static final ICALENDAR_ATTENDEE_DECLINE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=DECLINED"

.field static final ICALENDAR_ATTENDEE_INVITE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=TRUE"

.field static final ICALENDAR_ATTENDEE_TENTATIVE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=TENTATIVE"

.field static final LENIENT_DST_PRECISION:I = 0xdbba00

.field static final MINUTES:I = 0xea60

.field static final MSFT_LONG_SIZE:I = 0x4

.field static final MSFT_SYSTEMTIME_DAY:I = 0x6

.field static final MSFT_SYSTEMTIME_DAY_OF_WEEK:I = 0x4

.field static final MSFT_SYSTEMTIME_HOUR:I = 0x8

.field static final MSFT_SYSTEMTIME_MINUTE:I = 0xa

.field static final MSFT_SYSTEMTIME_MONTH:I = 0x2

.field static final MSFT_SYSTEMTIME_SIZE:I = 0x10

.field static final MSFT_SYSTEMTIME_YEAR:I = 0x0

.field static final MSFT_TIME_ZONE_BIAS_OFFSET:I = 0x0

.field static final MSFT_TIME_ZONE_DAYLIGHT_BIAS_OFFSET:I = 0xa8

.field static final MSFT_TIME_ZONE_DAYLIGHT_DATE_OFFSET:I = 0x98

.field static final MSFT_TIME_ZONE_DAYLIGHT_NAME_OFFSET:I = 0x58

.field static final MSFT_TIME_ZONE_SIZE:I = 0xac

.field static final MSFT_TIME_ZONE_STANDARD_BIAS_OFFSET:I = 0x54

.field static final MSFT_TIME_ZONE_STANDARD_DATE_OFFSET:I = 0x44

.field static final MSFT_TIME_ZONE_STANDARD_NAME_OFFSET:I = 0x4

.field static final MSFT_TIME_ZONE_STRING_SIZE:I = 0x20

.field static final MSFT_WCHAR_SIZE:I = 0x2

.field static final MSFT_WORD_SIZE:I = 0x2

.field public static final RESPONSE_TYPE_ACCEPTED:I = 0x3

.field public static final RESPONSE_TYPE_DECLINED:I = 0x4

.field public static final RESPONSE_TYPE_NONE:I = 0x0

.field public static final RESPONSE_TYPE_NOT_RESPONDED:I = 0x5

.field public static final RESPONSE_TYPE_ORGANIZER:I = 0x1

.field public static final RESPONSE_TYPE_TENTATIVE:I = 0x2

.field static final SECONDS:I = 0x3e8

.field static final STANDARD_DST_PRECISION:I = 0xea60

.field private static final SYNC_VERSION:Ljava/lang/String; = "sync_data4"

.field private static final TAG:Ljava/lang/String; = "CalendarUtility"

.field private static final UTC_TIMEZONE:Ljava/util/TimeZone;

.field static final sCurrentYear:I

.field static final sDayTokens:[Ljava/lang/String;

.field static final sGmtTimeZone:Ljava/util/TimeZone;

.field private static sTimeZoneCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field static final sTwoCharacterNumbers:[Ljava/lang/String;

.field static final sTypeToFreq:[Ljava/lang/String;

.field private static sTziStringCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/TimeZone;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    .line 133
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 142
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DAILY"

    aput-object v1, v0, v4

    const-string v1, "WEEKLY"

    aput-object v1, v0, v3

    const-string v1, "MONTHLY"

    aput-object v1, v0, v5

    const-string v1, "MONTHLY"

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "YEARLY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "YEARLY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTypeToFreq:[Ljava/lang/String;

    .line 145
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SU"

    aput-object v1, v0, v4

    const-string v1, "MO"

    aput-object v1, v0, v3

    const-string v1, "TU"

    aput-object v1, v0, v5

    const-string v1, "WE"

    aput-object v1, v0, v6

    const-string v1, "TH"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    .line 148
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v4

    const-string v1, "01"

    aput-object v1, v0, v3

    const-string v1, "02"

    aput-object v1, v0, v5

    const-string v1, "03"

    aput-object v1, v0, v6

    const-string v1, "04"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTwoCharacterNumbers:[Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    .line 164
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    return-void
.end method

.method private static addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/emailcommon/provider/Account;)V
    .locals 3
    .parameter "ics"
    .parameter
    .parameter "attendeeName"
    .parameter "attendeeEmail"
    .parameter "messageFlag"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/utility/SimpleIcsWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/emailcommon/provider/Account;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1646
    .local p1, toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    and-int/lit8 v1, p4, 0x30

    if-eqz v1, :cond_4

    .line 1647
    const-string v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=TRUE"

    .line 1648
    .local v0, icalTag:Ljava/lang/String;
    and-int/lit8 v1, p4, 0x20

    if-eqz v1, :cond_0

    .line 1649
    const-string v0, "ATTENDEE;ROLE=REQ-PARTICIPANT"

    .line 1651
    :cond_0
    if-eqz p2, :cond_1

    .line 1652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";CN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1654
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAILTO:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    if-nez p2, :cond_3

    new-instance v1, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v1, p3}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    .end local v0           #icalTag:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1655
    .restart local v0       #icalTag:Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v1, p3, p2}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1657
    .end local v0           #icalTag:Ljava/lang/String;
    :cond_4
    iget-object v1, p5, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1658
    const/4 v0, 0x0

    .line 1659
    .restart local v0       #icalTag:Ljava/lang/String;
    sparse-switch p4, :sswitch_data_0

    .line 1670
    :goto_2
    if-eqz v0, :cond_2

    .line 1671
    if-eqz p2, :cond_5

    .line 1672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";CN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1675
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAILTO:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1661
    :sswitch_0
    const-string v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED"

    .line 1662
    goto :goto_2

    .line 1664
    :sswitch_1
    const-string v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=DECLINED"

    .line 1665
    goto :goto_2

    .line 1667
    :sswitch_2
    const-string v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=TENTATIVE"

    goto :goto_2

    .line 1659
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
    .end sparse-switch
.end method

.method private static addByDay(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .locals 4
    .parameter "byDay"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1179
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1181
    .local v1, weekOfMonth:I
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 1183
    const/4 v1, 0x5

    .line 1184
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, bareByDay:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x122

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1190
    const/16 v2, 0x120

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1191
    return-void

    .line 1186
    .end local v0           #bareByDay:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, -0x30

    .line 1187
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bareByDay:Ljava/lang/String;
    goto :goto_0
.end method

.method static addByDay(Ljava/lang/StringBuilder;II)V
    .locals 4
    .parameter "rrule"
    .parameter "dow"
    .parameter "wom"

    .prologue
    .line 1065
    const-string v2, ";BYDAY="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    const/4 v0, 0x0

    .line 1067
    .local v0, addComma:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    .line 1068
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1069
    if-eqz v0, :cond_0

    .line 1070
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1072
    :cond_0
    if-lez p2, :cond_1

    .line 1075
    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    const/4 v2, -0x1

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1077
    :cond_1
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    const/4 v0, 0x1

    .line 1080
    :cond_2
    shr-int/lit8 p1, p1, 0x1

    .line 1067
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v2, p2

    .line 1075
    goto :goto_1

    .line 1082
    :cond_4
    return-void
.end method

.method private static addByDaySetpos(Ljava/lang/String;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .locals 3
    .parameter "byDay"
    .parameter "bySetpos"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1195
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1196
    .local v0, weekOfMonth:I
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 1198
    const/4 v0, 0x5

    .line 1202
    :goto_0
    const/16 v1, 0x122

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1203
    const/16 v1, 0x120

    invoke-static {p0}, Lcom/android/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1204
    return-void

    .line 1200
    :cond_0
    add-int/lit8 v0, v0, -0x30

    goto :goto_0
.end method

.method static addByMonthDay(Ljava/lang/StringBuilder;I)V
    .locals 2
    .parameter "rrule"
    .parameter "dom"

    .prologue
    .line 1093
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 1094
    const/4 p1, -0x1

    .line 1096
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";BYMONTHDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    return-void
.end method

.method static addBySetpos(Ljava/lang/StringBuilder;II)V
    .locals 1
    .parameter "rrule"
    .parameter "dow"
    .parameter "wom"

    .prologue
    .line 1086
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    .line 1087
    const-string v0, ";BYSETPOS="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    const-string v0, "-1"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1089
    return-void

    .line 1088
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private static addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .locals 5
    .parameter "rrule"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1163
    const-string v3, "COUNT="

    invoke-static {p0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1164
    .local v0, count:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1165
    const/16 v3, 0x11e

    invoke-virtual {p1, v3, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1167
    :cond_0
    const-string v3, "INTERVAL="

    invoke-static {p0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1168
    .local v1, interval:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1169
    const/16 v3, 0x11f

    invoke-virtual {p1, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1171
    :cond_1
    const-string v3, "UNTIL="

    invoke-static {p0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1172
    .local v2, until:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1173
    const/16 v3, 0x11d

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->recurrenceUntilToEasUntil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1175
    :cond_2
    return-void
.end method

.method static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "account"
    .parameter "accountType"

    .prologue
    .line 1423
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static attendeeStatusFromBusyStatus(I)I
    .locals 1
    .parameter "busyStatus"

    .prologue
    .line 1474
    packed-switch p0, :pswitch_data_0

    .line 1484
    const/4 v0, 0x0

    .line 1486
    .local v0, attendeeStatus:I
    :goto_0
    return v0

    .line 1476
    .end local v0           #attendeeStatus:I
    :pswitch_0
    const/4 v0, 0x1

    .line 1477
    .restart local v0       #attendeeStatus:I
    goto :goto_0

    .line 1479
    .end local v0           #attendeeStatus:I
    :pswitch_1
    const/4 v0, 0x4

    .line 1480
    .restart local v0       #attendeeStatus:I
    goto :goto_0

    .line 1474
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static attendeeStatusFromResponseType(I)I
    .locals 1
    .parameter "responseType"

    .prologue
    .line 1497
    packed-switch p0, :pswitch_data_0

    .line 1511
    const/4 v0, 0x0

    .line 1513
    .local v0, attendeeStatus:I
    :goto_0
    return v0

    .line 1499
    .end local v0           #attendeeStatus:I
    :pswitch_0
    const/4 v0, 0x0

    .line 1500
    .restart local v0       #attendeeStatus:I
    goto :goto_0

    .line 1502
    .end local v0           #attendeeStatus:I
    :pswitch_1
    const/4 v0, 0x1

    .line 1503
    .restart local v0       #attendeeStatus:I
    goto :goto_0

    .line 1505
    .end local v0           #attendeeStatus:I
    :pswitch_2
    const/4 v0, 0x4

    .line 1506
    .restart local v0       #attendeeStatus:I
    goto :goto_0

    .line 1508
    .end local v0           #attendeeStatus:I
    :pswitch_3
    const/4 v0, 0x2

    .line 1509
    .restart local v0       #attendeeStatus:I
    goto :goto_0

    .line 1497
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static availabilityFromBusyStatus(I)I
    .locals 1
    .parameter "busyStatus"

    .prologue
    .line 1569
    packed-switch p0, :pswitch_data_0

    .line 1578
    :pswitch_0
    const/4 v0, 0x2

    .line 1581
    .local v0, availability:I
    :goto_0
    return v0

    .line 1571
    .end local v0           #availability:I
    :pswitch_1
    const/4 v0, 0x0

    .line 1572
    .restart local v0       #availability:I
    goto :goto_0

    .line 1574
    .end local v0           #availability:I
    :pswitch_2
    const/4 v0, 0x1

    .line 1575
    .restart local v0       #availability:I
    goto :goto_0

    .line 1569
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static buildMessageTextFromEntityValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 15
    .parameter "context"
    .parameter "entityValues"
    .parameter "sb"

    .prologue
    .line 1586
    if-nez p2, :cond_0

    .line 1587
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1589
    .restart local p2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1597
    .local v9, resources:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 1598
    .local v2, allDayEvent:Z
    const-string v12, "allDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1599
    const-string v12, "allDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1600
    .local v1, ade:Ljava/lang/Integer;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v2, 0x1

    .line 1602
    .end local v1           #ade:Ljava/lang/Integer;
    :cond_1
    :goto_0
    const-string v12, "original_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v7, 0x1

    .line 1607
    .local v7, recurringEvent:Z
    :goto_1
    const-string v12, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1608
    .local v10, startTime:J
    if-eqz v2, :cond_7

    .line 1609
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v12

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 1610
    .local v3, date:Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1611
    .local v4, dateTimeString:Ljava/lang/String;
    if-eqz v7, :cond_6

    const v8, 0x7f05000c

    .line 1616
    .end local v3           #date:Ljava/util/Date;
    .local v8, res:I
    :goto_2
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-virtual {v9, v8, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    const/4 v6, 0x0

    .line 1619
    .local v6, location:Ljava/lang/String;
    const-string v12, "eventLocation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1620
    const-string v12, "eventLocation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1621
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1622
    const-string v12, "\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    const v12, 0x7f050009

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v9, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    :cond_2
    const-string v12, "description"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1628
    .local v5, desc:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1629
    const-string v12, "\n--\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1632
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 1600
    .end local v4           #dateTimeString:Ljava/lang/String;
    .end local v5           #desc:Ljava/lang/String;
    .end local v6           #location:Ljava/lang/String;
    .end local v7           #recurringEvent:Z
    .end local v8           #res:I
    .end local v10           #startTime:J
    .restart local v1       #ade:Ljava/lang/Integer;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1602
    .end local v1           #ade:Ljava/lang/Integer;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1611
    .restart local v3       #date:Ljava/util/Date;
    .restart local v4       #dateTimeString:Ljava/lang/String;
    .restart local v7       #recurringEvent:Z
    .restart local v10       #startTime:J
    :cond_6
    const v8, 0x7f05000b

    goto :goto_2

    .line 1613
    .end local v3           #date:Ljava/util/Date;
    .end local v4           #dateTimeString:Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v12

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1614
    .restart local v4       #dateTimeString:Ljava/lang/String;
    if-eqz v7, :cond_8

    const v8, 0x7f05000a

    .restart local v8       #res:I
    :goto_3
    goto :goto_2

    .end local v8           #res:I
    :cond_8
    const v8, 0x7f050008

    goto :goto_3
.end method

.method public static busyStatusFromAttendeeStatus(I)I
    .locals 1
    .parameter "selfAttendeeStatus"

    .prologue
    .line 1523
    packed-switch p0, :pswitch_data_0

    .line 1534
    :pswitch_0
    const/4 v0, 0x2

    .line 1537
    .local v0, busyStatus:I
    :goto_0
    return v0

    .line 1527
    .end local v0           #busyStatus:I
    :pswitch_1
    const/4 v0, 0x0

    .line 1528
    .restart local v0       #busyStatus:I
    goto :goto_0

    .line 1530
    .end local v0           #busyStatus:I
    :pswitch_2
    const/4 v0, 0x1

    .line 1531
    .restart local v0       #busyStatus:I
    goto :goto_0

    .line 1523
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static busyStatusFromAvailability(I)I
    .locals 1
    .parameter "availability"

    .prologue
    .line 1547
    packed-switch p0, :pswitch_data_0

    .line 1556
    const/4 v0, 0x1

    .line 1559
    .local v0, busyStatus:I
    :goto_0
    return v0

    .line 1549
    .end local v0           #busyStatus:I
    :pswitch_0
    const/4 v0, 0x2

    .line 1550
    .restart local v0       #busyStatus:I
    goto :goto_0

    .line 1552
    .end local v0           #busyStatus:I
    :pswitch_1
    const/4 v0, 0x0

    .line 1553
    .restart local v0       #busyStatus:I
    goto :goto_0

    .line 1547
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static calendarToBirthdayString(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 3
    .parameter "cal"

    .prologue
    const/16 v2, 0x2d

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 943
    .local v0, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 944
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 945
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 947
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static clearTimeZoneCache()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 248
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 249
    return-void
.end method

.method public static convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "date"

    .prologue
    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xe

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x11

    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createCalendar(Lcom/android/exchange/EasSyncService;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)J
    .locals 9
    .parameter "service"
    .parameter "account"
    .parameter "mailbox"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 1388
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1390
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "calendar_displayName"

    iget-object v5, p1, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const-string v4, "account_name"

    iget-object v5, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    const-string v4, "account_type"

    const-string v5, "com.android.exchange"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string v4, "sync_events"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1394
    const-string v4, "visible"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1396
    const-string v4, "canOrganizerRespond"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1397
    const-string v4, "canModifyTimeZone"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1398
    const-string v4, "maxReminders"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1399
    const-string v4, "allowedReminders"

    const-string v5, "0,1"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const-string v4, "allowedAttendeeTypes"

    const-string v5, "0,1,2"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    const-string v4, "allowedAvailability"

    const-string v5, "0,1,2"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    new-instance v4, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Lcom/android/emailcommon/service/AccountServiceProxy;->getAccountColor(J)I

    move-result v0

    .line 1405
    .local v0, color:I
    const-string v4, "calendar_color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1406
    const-string v4, "calendar_timezone"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    const-string v4, "calendar_access_level"

    const/16 v5, 0x2bc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1408
    const-string v4, "ownerAccount"

    iget-object v5, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/utility/CalendarUtilities;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1414
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1415
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1416
    .local v2, stringId:Ljava/lang/String;
    iput-object v2, p2, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 1417
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1419
    .end local v2           #stringId:Ljava/lang/String;
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public static createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 6
    .parameter "context"
    .parameter "entity"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"

    .prologue
    .line 1690
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 54
    .parameter "context"
    .parameter "entity"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"
    .parameter "specifiedAttendee"

    .prologue
    .line 1696
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v23

    .line 1697
    .local v23, entityValues:Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v47

    .line 1698
    .local v47, subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    const-string v7, "original_sync_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v28

    .line 1699
    .local v28, isException:Z
    const/16 v29, 0x0

    .line 1701
    .local v29, isReply:Z
    new-instance v32, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct/range {v32 .. v32}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 1702
    .local v32, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    move/from16 v0, p2

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, v32

    iput-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 1705
    const/4 v7, 0x1

    move-object/from16 v0, v32

    iput-boolean v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 1706
    const/4 v7, 0x1

    move-object/from16 v0, v32

    iput v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1709
    and-int/lit8 v7, p2, 0x10

    if-eqz v7, :cond_11

    .line 1710
    const-string v31, "REQUEST"

    .line 1720
    .local v31, method:Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v3, Lcom/android/exchange/utility/SimpleIcsWriter;

    invoke-direct {v3}, Lcom/android/exchange/utility/SimpleIcsWriter;-><init>()V

    .line 1721
    .local v3, ics:Lcom/android/exchange/utility/SimpleIcsWriter;
    const-string v7, "BEGIN"

    const-string v8, "VCALENDAR"

    invoke-virtual {v3, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    const-string v7, "METHOD"

    move-object/from16 v0, v31

    invoke-virtual {v3, v7, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    const-string v7, "PRODID"

    const-string v8, "AndroidEmail"

    invoke-virtual {v3, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const-string v7, "VERSION"

    const-string v8, "2.0"

    invoke-virtual {v3, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    sget-object v53, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    .line 1729
    .local v53, vCalendarTimeZone:Ljava/util/TimeZone;
    const-string v52, ""

    .line 1732
    .local v52, vCalendarDateSuffix:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1733
    .local v15, allDayEvent:Z
    const-string v7, "allDay"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1734
    const-string v7, "allDay"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 1735
    .local v14, ade:Ljava/lang/Integer;
    if-eqz v14, :cond_13

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    const/4 v15, 0x1

    .line 1736
    :goto_1
    if-eqz v15, :cond_0

    .line 1738
    const-string v52, ";VALUE=DATE"

    .line 1746
    .end local v14           #ade:Ljava/lang/Integer;
    :cond_0
    if-nez v29, :cond_2

    if-nez v15, :cond_2

    const-string v7, "rrule"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "original_sync_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1749
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v53

    .line 1751
    move-object/from16 v0, v53

    invoke-static {v0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToVTimezone(Ljava/util/TimeZone;Lcom/android/exchange/utility/SimpleIcsWriter;)V

    .line 1753
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ";TZID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v53 .. v53}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 1756
    :cond_2
    const-string v7, "BEGIN"

    const-string v8, "VEVENT"

    invoke-virtual {v3, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    if-nez p3, :cond_3

    .line 1758
    const-string v7, "sync_data2"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1760
    :cond_3
    if-eqz p3, :cond_4

    .line 1761
    const-string v7, "UID"

    move-object/from16 v0, p3

    invoke-virtual {v3, v7, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    :cond_4
    const-string v7, "DTSTAMP"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1765
    const-string v7, "DTSTAMP"

    const-string v8, "DTSTAMP"

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    :goto_2
    const-string v7, "dtstart"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v45

    .line 1771
    .local v45, startTime:J
    const-wide/16 v7, 0x0

    cmp-long v7, v45, v7

    if-eqz v7, :cond_5

    .line 1772
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DTSTART"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v15, :cond_15

    const/4 v7, 0x1

    :goto_3
    move-wide/from16 v0, v45

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2, v7}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    :cond_5
    if-eqz v28, :cond_6

    .line 1779
    const-string v7, "originalInstanceTime"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    .line 1780
    .local v38, originalTime:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RECURRENCE-ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v15, :cond_16

    const/4 v7, 0x1

    :goto_4
    move-wide/from16 v0, v38

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2, v7}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    .end local v38           #originalTime:J
    :cond_6
    const-string v7, "duration"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 1785
    const-string v7, "dtend"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1786
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DTEND"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v7, "dtend"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    if-nez v15, :cond_17

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, v53

    invoke-static {v9, v10, v0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    :cond_7
    :goto_6
    const/16 v30, 0x0

    .line 1808
    .local v30, location:Ljava/lang/String;
    const-string v7, "eventLocation"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1809
    const-string v7, "eventLocation"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1810
    const-string v7, "LOCATION"

    move-object/from16 v0, v30

    invoke-virtual {v3, v7, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    :cond_8
    const-string v7, "sync_data4"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1814
    .local v44, sequence:Ljava/lang/String;
    if-nez v44, :cond_9

    .line 1815
    const-string v44, "0"

    .line 1819
    :cond_9
    const/16 v50, 0x0

    .line 1820
    .local v50, titleId:I
    sparse-switch p2, :sswitch_data_0

    .line 1839
    :cond_a
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    .line 1840
    .local v41, resources:Landroid/content/res/Resources;
    const-string v7, "title"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 1841
    .local v49, title:Ljava/lang/String;
    if-nez v49, :cond_b

    .line 1842
    const-string v49, ""

    .line 1844
    :cond_b
    const-string v7, "SUMMARY"

    move-object/from16 v0, v49

    invoke-virtual {v3, v7, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    if-nez v50, :cond_1a

    .line 1847
    move-object/from16 v0, v49

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1855
    :goto_8
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    .line 1856
    .local v43, sb:Ljava/lang/StringBuilder;
    if-eqz v28, :cond_c

    if-nez v29, :cond_c

    .line 1858
    new-instance v17, Ljava/util/Date;

    const-string v7, "originalInstanceTime"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v17

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1859
    .local v17, date:Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 1860
    .local v18, dateString:Ljava/lang/String;
    const v7, 0x7f050006

    move/from16 v0, v50

    if-ne v0, v7, :cond_1b

    .line 1861
    const v7, 0x7f05000f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v18, v8, v9

    move-object/from16 v0, v41

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1865
    :goto_9
    const-string v7, "\n\n"

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    .end local v17           #date:Ljava/util/Date;
    .end local v18           #dateString:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->buildMessageTextFromEntityValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v48

    .line 1870
    .local v48, text:Ljava/lang/String;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 1871
    const-string v7, "DESCRIPTION"

    move-object/from16 v0, v48

    invoke-virtual {v3, v7, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    :cond_d
    move-object/from16 v0, v48

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 1875
    if-nez v29, :cond_f

    .line 1876
    const-string v7, "allDay"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1877
    const-string v7, "allDay"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 1878
    .restart local v14       #ade:Ljava/lang/Integer;
    const-string v8, "X-MICROSOFT-CDO-ALLDAYEVENT"

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_1c

    const-string v7, "FALSE"

    :goto_a
    invoke-virtual {v3, v8, v7}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    .end local v14           #ade:Ljava/lang/Integer;
    :cond_e
    const-string v7, "rrule"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1882
    .local v42, rrule:Ljava/lang/String;
    if-eqz v42, :cond_f

    .line 1883
    const-string v7, "RRULE"

    move-object/from16 v0, v42

    invoke-virtual {v3, v7, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    .end local v42           #rrule:Ljava/lang/String;
    :cond_f
    const/16 v37, 0x0

    .line 1892
    .local v37, organizerName:Ljava/lang/String;
    const/16 v36, 0x0

    .line 1893
    .local v36, organizerEmail:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1894
    .local v4, toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, i$:Ljava/util/Iterator;
    :cond_10
    :goto_b
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/Entity$NamedContentValues;

    .line 1895
    .local v33, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v34, v0

    .line 1896
    .local v34, ncvUri:Landroid/net/Uri;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v35, v0

    .line 1897
    .local v35, ncvValues:Landroid/content/ContentValues;
    sget-object v7, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1898
    const-string v7, "attendeeRelationship"

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v40

    .line 1902
    .local v40, relationship:Ljava/lang/Integer;
    if-eqz v40, :cond_10

    const-string v7, "attendeeEmail"

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1905
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1d

    .line 1906
    const-string v7, "attendeeName"

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1907
    const-string v7, "attendeeEmail"

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v36

    .line 1908
    goto :goto_b

    .line 1711
    .end local v3           #ics:Lcom/android/exchange/utility/SimpleIcsWriter;
    .end local v4           #toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    .end local v15           #allDayEvent:Z
    .end local v26           #i$:Ljava/util/Iterator;
    .end local v30           #location:Ljava/lang/String;
    .end local v31           #method:Ljava/lang/String;
    .end local v33           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v34           #ncvUri:Landroid/net/Uri;
    .end local v35           #ncvValues:Landroid/content/ContentValues;
    .end local v36           #organizerEmail:Ljava/lang/String;
    .end local v37           #organizerName:Ljava/lang/String;
    .end local v40           #relationship:Ljava/lang/Integer;
    .end local v41           #resources:Landroid/content/res/Resources;
    .end local v43           #sb:Ljava/lang/StringBuilder;
    .end local v44           #sequence:Ljava/lang/String;
    .end local v45           #startTime:J
    .end local v48           #text:Ljava/lang/String;
    .end local v49           #title:Ljava/lang/String;
    .end local v50           #titleId:I
    .end local v52           #vCalendarDateSuffix:Ljava/lang/String;
    .end local v53           #vCalendarTimeZone:Ljava/util/TimeZone;
    :cond_11
    and-int/lit8 v7, p2, 0x20

    if-eqz v7, :cond_12

    .line 1712
    const-string v31, "CANCEL"

    .restart local v31       #method:Ljava/lang/String;
    goto/16 :goto_0

    .line 1714
    .end local v31           #method:Ljava/lang/String;
    :cond_12
    const-string v31, "REPLY"

    .line 1715
    .restart local v31       #method:Ljava/lang/String;
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1735
    .restart local v3       #ics:Lcom/android/exchange/utility/SimpleIcsWriter;
    .restart local v14       #ade:Ljava/lang/Integer;
    .restart local v15       #allDayEvent:Z
    .restart local v52       #vCalendarDateSuffix:Ljava/lang/String;
    .restart local v53       #vCalendarTimeZone:Ljava/util/TimeZone;
    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1767
    .end local v14           #ade:Ljava/lang/Integer;
    :cond_14
    :try_start_1
    const-string v7, "DTSTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1979
    .end local v3           #ics:Lcom/android/exchange/utility/SimpleIcsWriter;
    .end local v15           #allDayEvent:Z
    .end local v52           #vCalendarDateSuffix:Ljava/lang/String;
    .end local v53           #vCalendarTimeZone:Ljava/util/TimeZone;
    :catch_0
    move-exception v22

    .line 1980
    .local v22, e:Ljava/io/IOException;
    const-string v7, "CalendarUtility"

    const-string v8, "IOException in createMessageForEntity"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    const/16 v32, 0x0

    .line 1985
    .end local v22           #e:Ljava/io/IOException;
    .end local v32           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_c
    return-object v32

    .line 1772
    .restart local v3       #ics:Lcom/android/exchange/utility/SimpleIcsWriter;
    .restart local v15       #allDayEvent:Z
    .restart local v32       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v45       #startTime:J
    .restart local v52       #vCalendarDateSuffix:Ljava/lang/String;
    .restart local v53       #vCalendarTimeZone:Ljava/util/TimeZone;
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1780
    .restart local v38       #originalTime:J
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1786
    .end local v38           #originalTime:J
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 1794
    :cond_18
    const-wide/32 v20, 0x36ee80

    .line 1795
    .local v20, durationMillis:J
    :try_start_2
    new-instance v19, Lcom/android/calendarcommon2/Duration;

    invoke-direct/range {v19 .. v19}, Lcom/android/calendarcommon2/Duration;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1797
    .local v19, duration:Lcom/android/calendarcommon2/Duration;
    :try_start_3
    const-string v7, "duration"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/calendarcommon2/Duration;->parse(Ljava/lang/String;)V

    .line 1798
    invoke-virtual/range {v19 .. v19}, Lcom/android/calendarcommon2/Duration;->getMillis()J
    :try_end_3
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v20

    .line 1802
    :goto_d
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DTEND"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-long v9, v45, v20

    if-nez v15, :cond_19

    const/4 v7, 0x1

    :goto_e
    move-object/from16 v0, v53

    invoke-static {v9, v10, v0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_19
    const/4 v7, 0x0

    goto :goto_e

    .line 1822
    .end local v19           #duration:Lcom/android/calendarcommon2/Duration;
    .end local v20           #durationMillis:J
    .restart local v30       #location:Ljava/lang/String;
    .restart local v44       #sequence:Ljava/lang/String;
    .restart local v50       #titleId:I
    :sswitch_0
    const-string v7, "0"

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1823
    const v50, 0x7f050007

    goto/16 :goto_7

    .line 1827
    :sswitch_1
    const v50, 0x7f050003

    .line 1828
    goto/16 :goto_7

    .line 1830
    :sswitch_2
    const v50, 0x7f050004

    .line 1831
    goto/16 :goto_7

    .line 1833
    :sswitch_3
    const v50, 0x7f050005

    .line 1834
    goto/16 :goto_7

    .line 1836
    :sswitch_4
    const v50, 0x7f050006

    goto/16 :goto_7

    .line 1850
    .restart local v41       #resources:Landroid/content/res/Resources;
    .restart local v49       #title:Ljava/lang/String;
    :cond_1a
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v49, v7, v8

    move-object/from16 v0, v41

    move/from16 v1, v50

    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v32

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_8

    .line 1863
    .restart local v17       #date:Ljava/util/Date;
    .restart local v18       #dateString:Ljava/lang/String;
    .restart local v43       #sb:Ljava/lang/StringBuilder;
    :cond_1b
    const v7, 0x7f050010

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v18, v8, v9

    move-object/from16 v0, v41

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1878
    .end local v17           #date:Ljava/util/Date;
    .end local v18           #dateString:Ljava/lang/String;
    .restart local v14       #ade:Ljava/lang/Integer;
    .restart local v48       #text:Ljava/lang/String;
    :cond_1c
    const-string v7, "TRUE"

    goto/16 :goto_a

    .line 1910
    .end local v14           #ade:Ljava/lang/Integer;
    .restart local v4       #toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    .restart local v26       #i$:Ljava/util/Iterator;
    .restart local v33       #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v34       #ncvUri:Landroid/net/Uri;
    .restart local v35       #ncvValues:Landroid/content/ContentValues;
    .restart local v36       #organizerEmail:Ljava/lang/String;
    .restart local v37       #organizerName:Ljava/lang/String;
    .restart local v40       #relationship:Ljava/lang/Integer;
    :cond_1d
    const-string v7, "attendeeEmail"

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1911
    .local v6, attendeeEmail:Ljava/lang/String;
    const-string v7, "attendeeName"

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1914
    .local v5, attendeeName:Ljava/lang/String;
    if-eqz v6, :cond_10

    .line 1916
    if-eqz p5, :cond_1e

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_1e
    move/from16 v7, p2

    move-object/from16 v8, p4

    .line 1921
    invoke-static/range {v3 .. v8}, Lcom/android/exchange/utility/CalendarUtilities;->addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/emailcommon/provider/Account;)V

    goto/16 :goto_b

    .line 1928
    .end local v5           #attendeeName:Ljava/lang/String;
    .end local v6           #attendeeEmail:Ljava/lang/String;
    .end local v33           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v34           #ncvUri:Landroid/net/Uri;
    .end local v35           #ncvValues:Landroid/content/ContentValues;
    .end local v40           #relationship:Ljava/lang/Integer;
    :cond_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_20

    if-eqz p5, :cond_20

    .line 1929
    const/4 v9, 0x0

    move-object v7, v3

    move-object v8, v4

    move-object/from16 v10, p5

    move/from16 v11, p2

    move-object/from16 v12, p4

    invoke-static/range {v7 .. v12}, Lcom/android/exchange/utility/CalendarUtilities;->addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/emailcommon/provider/Account;)V

    .line 1933
    :cond_20
    if-eqz v36, :cond_22

    .line 1934
    const-string v27, "ORGANIZER"

    .line 1937
    .local v27, icalTag:Ljava/lang/String;
    if-eqz v37, :cond_21

    .line 1938
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";CN="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v37 .. v37}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1940
    :cond_21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MAILTO:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v7}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    if-eqz v29, :cond_22

    .line 1942
    if-nez v37, :cond_23

    new-instance v7, Lcom/android/emailcommon/mail/Address;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;)V

    :goto_f
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1948
    .end local v27           #icalTag:Ljava/lang/String;
    :cond_22
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_24

    const/16 v32, 0x0

    goto/16 :goto_c

    .line 1942
    .restart local v27       #icalTag:Ljava/lang/String;
    :cond_23
    new-instance v7, Lcom/android/emailcommon/mail/Address;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-direct {v7, v0, v1}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 1951
    .end local v27           #icalTag:Ljava/lang/String;
    :cond_24
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [Lcom/android/emailcommon/mail/Address;

    move-object/from16 v51, v0

    .line 1952
    .local v51, toArray:[Lcom/android/emailcommon/mail/Address;
    const/16 v24, 0x0

    .line 1953
    .local v24, i:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    move/from16 v25, v24

    .end local v24           #i:I
    .local v25, i:I
    :goto_10
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/emailcommon/mail/Address;

    .line 1954
    .local v13, address:Lcom/android/emailcommon/mail/Address;
    add-int/lit8 v24, v25, 0x1

    .end local v25           #i:I
    .restart local v24       #i:I
    aput-object v13, v51, v25

    move/from16 v25, v24

    .end local v24           #i:I
    .restart local v25       #i:I
    goto :goto_10

    .line 1956
    .end local v13           #address:Lcom/android/emailcommon/mail/Address;
    :cond_25
    invoke-static/range {v51 .. v51}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v32

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 1958
    const-string v7, "CLASS"

    const-string v8, "PUBLIC"

    invoke-virtual {v3, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    const-string v8, "STATUS"

    const/16 v7, 0x20

    move/from16 v0, p2

    if-ne v0, v7, :cond_26

    const-string v7, "CANCELLED"

    :goto_11
    invoke-virtual {v3, v8, v7}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    const-string v7, "TRANSP"

    const-string v8, "OPAQUE"

    invoke-virtual {v3, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    const-string v7, "PRIORITY"

    const-string v8, "5"

    invoke-virtual {v3, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    const-string v7, "SEQUENCE"

    move-object/from16 v0, v44

    invoke-virtual {v3, v7, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    const-string v7, "END"

    const-string v8, "VEVENT"

    invoke-virtual {v3, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    const-string v7, "END"

    const-string v8, "VCALENDAR"

    invoke-virtual {v3, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    new-instance v16, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct/range {v16 .. v16}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 1969
    .local v16, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->getBytes()[B

    move-result-object v7

    move-object/from16 v0, v16

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 1970
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "text/calendar; method="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 1971
    const-string v7, "invite.ics"

    move-object/from16 v0, v16

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1972
    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    array-length v7, v7

    int-to-long v7, v7

    move-object/from16 v0, v16

    iput-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 1974
    const/4 v7, 0x1

    move-object/from16 v0, v16

    iput v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1977
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 1978
    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1959
    .end local v16           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_26
    const-string v7, "CONFIRMED"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_11

    .line 1799
    .end local v4           #toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    .end local v25           #i:I
    .end local v26           #i$:Ljava/util/Iterator;
    .end local v30           #location:Ljava/lang/String;
    .end local v36           #organizerEmail:Ljava/lang/String;
    .end local v37           #organizerName:Ljava/lang/String;
    .end local v41           #resources:Landroid/content/res/Resources;
    .end local v43           #sb:Ljava/lang/StringBuilder;
    .end local v44           #sequence:Ljava/lang/String;
    .end local v48           #text:Ljava/lang/String;
    .end local v49           #title:Ljava/lang/String;
    .end local v50           #titleId:I
    .end local v51           #toArray:[Lcom/android/emailcommon/mail/Address;
    .restart local v19       #duration:Lcom/android/calendarcommon2/Duration;
    .restart local v20       #durationMillis:J
    :catch_1
    move-exception v7

    goto/16 :goto_d

    .line 1820
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_4
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0x100 -> :sswitch_3
    .end sparse-switch
.end method

.method public static createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 7
    .parameter "context"
    .parameter "eventId"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2008
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 8
    .parameter "context"
    .parameter "eventId"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"
    .parameter "specifiedAttendee"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2015
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2016
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v7

    .line 2020
    .local v7, eventIterator:Landroid/content/EntityIterator;
    :try_start_0
    invoke-interface {v7}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2021
    invoke-interface {v7}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    .local v2, entity:Landroid/content/Entity;
    move-object v1, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2022
    invoke-static/range {v1 .. v6}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2026
    .end local v2           #entity:Landroid/content/Entity;
    :cond_0
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 2028
    return-object v2

    .line 2026
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    throw v1
.end method

.method static findNextTransition(J[Ljava/util/GregorianCalendar;)J
    .locals 7
    .parameter "startingMillis"
    .parameter "transitions"

    .prologue
    .line 686
    move-object v0, p2

    .local v0, arr$:[Ljava/util/GregorianCalendar;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 687
    .local v3, transition:Ljava/util/GregorianCalendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 688
    .local v4, transitionMillis:J
    cmp-long v6, v4, p0

    if-lez v6, :cond_0

    .line 692
    .end local v3           #transition:Ljava/util/GregorianCalendar;
    .end local v4           #transitionMillis:J
    :goto_1
    return-wide v4

    .line 686
    .restart local v3       #transition:Ljava/util/GregorianCalendar;
    .restart local v4       #transitionMillis:J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    .end local v3           #transition:Ljava/util/GregorianCalendar;
    .end local v4           #transitionMillis:J
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method static findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;
    .locals 12
    .parameter "tz"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "startInDaylightTime"

    .prologue
    .line 353
    move-wide v6, p3

    .line 354
    .local v6, startingEndTime:J
    const/4 v4, 0x0

    .line 357
    .local v4, date:Ljava/util/Date;
    :goto_0
    sub-long v8, p3, p1

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 358
    add-long v8, p1, p3

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long v2, v8, v10

    .line 359
    .local v2, checkTime:J
    new-instance v4, Ljava/util/Date;

    .end local v4           #date:Ljava/util/Date;
    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 360
    .restart local v4       #date:Ljava/util/Date;
    invoke-virtual {p0, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    .line 361
    .local v5, inDaylightTime:Z
    move/from16 v0, p5

    if-eq v5, v0, :cond_0

    .line 362
    move-wide p3, v2

    goto :goto_0

    .line 364
    :cond_0
    move-wide p1, v2

    goto :goto_0

    .line 369
    .end local v2           #checkTime:J
    .end local v5           #inDaylightTime:Z
    :cond_1
    cmp-long v8, p3, v6

    if-nez v8, :cond_2

    .line 370
    const/4 v1, 0x0

    .line 376
    :goto_1
    return-object v1

    .line 374
    :cond_2
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 375
    .local v1, calendar:Ljava/util/GregorianCalendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1
.end method

.method static formatTwo(I)Ljava/lang/String;
    .locals 1
    .parameter "num"

    .prologue
    .line 922
    const/16 v0, 0xc

    if-gt p0, v0, :cond_0

    .line 923
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTwoCharacterNumbers:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 925
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "dow"

    .prologue
    .line 1105
    const/4 v2, 0x0

    .line 1106
    .local v2, bits:I
    const/4 v1, 0x1

    .line 1107
    .local v1, bit:I
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 1109
    .local v5, token:Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 1110
    or-int/2addr v2, v1

    .line 1112
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 1107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1114
    .end local v5           #token:Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z
    .locals 17
    .parameter "tz"
    .parameter "toDaylightCalendars"
    .parameter "toStandardCalendars"

    .prologue
    .line 553
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .line 554
    .local v16, maxYears:I
    move-object/from16 v0, p2

    array-length v2, v0

    move/from16 v0, v16

    if-eq v2, v0, :cond_0

    .line 555
    const/4 v2, 0x0

    .line 585
    :goto_0
    return v2

    .line 558
    :cond_0
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 559
    new-instance v1, Ljava/util/GregorianCalendar;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 560
    .local v1, cal:Ljava/util/GregorianCalendar;
    sget v2, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    add-int/2addr v2, v15

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 561
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 563
    .local v3, startTime:J
    const-wide v8, 0x757b12c00L

    add-long/2addr v8, v3

    const-wide/32 v10, 0x1499700

    add-long v5, v8, v10

    .line 564
    .local v5, endOfYearTime:J
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 565
    .local v14, date:Ljava/util/Date;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v7

    .local v7, startInDaylightTime:Z
    move-object/from16 v2, p0

    .line 567
    invoke-static/range {v2 .. v7}, Lcom/android/exchange/utility/CalendarUtilities;->findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 568
    if-nez v1, :cond_1

    .line 569
    const/4 v2, 0x0

    goto :goto_0

    .line 570
    :cond_1
    if-eqz v7, :cond_2

    .line 571
    aput-object v1, p2, v15

    .line 576
    :goto_2
    if-nez v7, :cond_3

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v8, p0

    move-wide v9, v3

    move-wide v11, v5

    invoke-static/range {v8 .. v13}, Lcom/android/exchange/utility/CalendarUtilities;->findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 577
    if-nez v1, :cond_4

    .line 578
    const/4 v2, 0x0

    goto :goto_0

    .line 573
    :cond_2
    aput-object v1, p1, v15

    goto :goto_2

    .line 576
    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    .line 579
    :cond_4
    if-eqz v7, :cond_5

    .line 580
    aput-object v1, p1, v15

    .line 558
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 582
    :cond_5
    aput-object v1, p2, v15

    goto :goto_4

    .line 585
    .end local v1           #cal:Ljava/util/GregorianCalendar;
    .end local v3           #startTime:J
    .end local v5           #endOfYearTime:J
    .end local v7           #startInDaylightTime:Z
    .end local v14           #date:Ljava/util/Date;
    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getIntegerValueAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 2
    .parameter "values"
    .parameter "columnName"

    .prologue
    .line 2039
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2040
    .local v0, intValue:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J
    .locals 2
    .parameter "time"
    .parameter "localTimeZone"

    .prologue
    .line 1048
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0, p2}, Lcom/android/exchange/utility/CalendarUtilities;->transposeAllDayTime(JLjava/util/TimeZone;Ljava/util/TimeZone;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLong([BI)I
    .locals 3
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 198
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method static getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J
    .locals 3
    .parameter "timeZone"
    .parameter "tzd"

    .prologue
    .line 331
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 332
    .local v0, testCalendar:Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    sget v2, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 333
    const/4 v1, 0x2

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->month:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 334
    const/4 v1, 0x7

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->dayOfWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 335
    const/16 v1, 0x8

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 336
    const/16 v1, 0xb

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 337
    const/16 v1, 0xc

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 338
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 339
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method static getString([BII)Ljava/lang/String;
    .locals 4
    .parameter "bytes"
    .parameter "offset"
    .parameter "size"

    .prologue
    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 224
    add-int v3, p1, v1

    aget-byte v0, p0, v3

    .line 225
    .local v0, ch:I
    if-nez v0, :cond_1

    .line 231
    .end local v0           #ch:I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 228
    .restart local v0       #ch:I
    :cond_1
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .locals 6
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 287
    new-instance v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    invoke-direct {v3}, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;-><init>()V

    .line 290
    .local v3, tzd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    add-int/lit8 v4, p1, 0x0

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 291
    .local v2, num:I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->year:Ljava/lang/String;

    .line 295
    add-int/lit8 v4, p1, 0x2

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 296
    if-nez v2, :cond_0

    .line 297
    const/4 v3, 0x0

    .line 321
    .end local v3           #tzd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    :goto_0
    return-object v3

    .line 299
    .restart local v3       #tzd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    :cond_0
    add-int/lit8 v4, v2, -0x1

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->month:I

    .line 303
    add-int/lit8 v4, p1, 0x4

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->dayOfWeek:I

    .line 306
    add-int/lit8 v4, p1, 0x6

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 308
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 309
    const/4 v4, -0x1

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    .line 315
    :goto_1
    add-int/lit8 v4, p1, 0x8

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v0

    .line 316
    .local v0, hour:I
    iput v0, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    .line 317
    add-int/lit8 v4, p1, 0xa

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v1

    .line 318
    .local v1, minute:I
    iput v1, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->minute:I

    .line 319
    const v4, 0x36ee80

    mul-int/2addr v4, v0

    const v5, 0xea60

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->time:I

    goto :goto_0

    .line 311
    .end local v0           #hour:I
    .end local v1           #minute:I
    :cond_1
    iput v2, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    goto :goto_1
.end method

.method static getTrueTransitionHour(Ljava/util/GregorianCalendar;)I
    .locals 2
    .parameter "calendar"

    .prologue
    .line 1004
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1005
    .local v0, hour:I
    add-int/lit8 v0, v0, 0x1

    .line 1006
    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 1007
    const/4 v0, 0x0

    .line 1009
    :cond_0
    return v0
.end method

.method static getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I
    .locals 2
    .parameter "calendar"

    .prologue
    .line 990
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 991
    .local v0, minute:I
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 992
    const/4 v0, 0x0

    .line 994
    :cond_0
    return v0
.end method

.method public static getUidFromGlobalObjId(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "globalObjId"

    .prologue
    .line 1436
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1439
    .local v8, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1440
    .local v4, idBytes:[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 1444
    .local v5, idString:Ljava/lang/String;
    const-string v9, "vCal-Uid"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1445
    .local v6, index:I
    if-lez v6, :cond_0

    .line 1448
    add-int/lit8 v9, v6, 0xc

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1460
    .end local v4           #idBytes:[B
    .end local v5           #idString:Ljava/lang/String;
    .end local v6           #index:I
    .end local p0
    :goto_0
    return-object p0

    .line 1453
    .restart local v4       #idBytes:[B
    .restart local v5       #idString:Ljava/lang/String;
    .restart local v6       #index:I
    .restart local p0
    :cond_0
    move-object v0, v4

    .local v0, arr$:[B
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v7, :cond_1

    aget-byte v1, v0, v3

    .line 1454
    .local v1, b:B
    invoke-static {v8, v1}, Lcom/android/emailcommon/utility/Utility;->byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 1453
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1456
    .end local v1           #b:B
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 1458
    .end local v0           #arr$:[B
    .end local v3           #i$:I
    .end local v4           #idBytes:[B
    .end local v5           #idString:Ljava/lang/String;
    .end local v6           #index:I
    .end local v7           #len$:I
    :catch_0
    move-exception v2

    .line 1460
    .local v2, e:Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public static getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J
    .locals 2
    .parameter "time"
    .parameter "localTimeZone"

    .prologue
    .line 1039
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-static {p0, p1, p2, v0}, Lcom/android/exchange/utility/CalendarUtilities;->transposeAllDayTime(JLjava/util/TimeZone;Ljava/util/TimeZone;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getWord([BI)I
    .locals 3
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 212
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    return v1
.end method

.method static inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .locals 14
    .parameter "calendars"

    .prologue
    .line 460
    const/4 v12, 0x0

    aget-object v1, p0, v12

    .line 461
    .local v1, calendar:Ljava/util/GregorianCalendar;
    if-nez v1, :cond_0

    const/4 v12, 0x0

    .line 510
    :goto_0
    return-object v12

    .line 462
    :cond_0
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 463
    .local v8, month:I
    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 464
    .local v2, date:I
    const/4 v12, 0x7

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 465
    .local v4, dayOfWeek:I
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 466
    .local v11, week:I
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v7

    .line 467
    .local v7, maxWeek:I
    const/4 v3, 0x0

    .line 468
    .local v3, dateRule:Z
    const/4 v5, 0x0

    .line 469
    .local v5, dayOfWeekRule:Z
    const/4 v6, 0x1

    .local v6, i:I
    :goto_1
    array-length v12, p0

    if-ge v6, v12, :cond_a

    .line 470
    aget-object v0, p0, v6

    .line 471
    .local v0, cal:Ljava/util/GregorianCalendar;
    if-nez v0, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    .line 473
    :cond_1
    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-eq v12, v8, :cond_2

    .line 474
    const/4 v12, 0x0

    goto :goto_0

    .line 475
    :cond_2
    const/4 v12, 0x7

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v4, v12, :cond_7

    .line 477
    if-eqz v3, :cond_3

    .line 478
    const/4 v12, 0x0

    goto :goto_0

    .line 480
    :cond_3
    const/4 v5, 0x1

    .line 481
    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 482
    .local v10, thisWeek:I
    if-eq v11, v10, :cond_5

    .line 483
    if-ltz v11, :cond_4

    if-ne v11, v7, :cond_6

    .line 484
    :cond_4
    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v9

    .line 485
    .local v9, thisMaxWeek:I
    if-ne v10, v9, :cond_6

    .line 487
    const/4 v11, -0x1

    .line 469
    .end local v9           #thisMaxWeek:I
    .end local v10           #thisWeek:I
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 491
    .restart local v10       #thisWeek:I
    :cond_6
    const/4 v12, 0x0

    goto :goto_0

    .line 493
    .end local v10           #thisWeek:I
    :cond_7
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v2, v12, :cond_9

    .line 495
    if-eqz v5, :cond_8

    .line 496
    const/4 v12, 0x0

    goto :goto_0

    .line 498
    :cond_8
    const/4 v3, 0x1

    goto :goto_2

    .line 500
    :cond_9
    const/4 v12, 0x0

    goto :goto_0

    .line 504
    .end local v0           #cal:Ljava/util/GregorianCalendar;
    :cond_a
    if-eqz v3, :cond_b

    .line 505
    new-instance v12, Lcom/android/exchange/utility/CalendarUtilities$RRule;

    add-int/lit8 v13, v8, 0x1

    invoke-direct {v12, v13, v2}, Lcom/android/exchange/utility/CalendarUtilities$RRule;-><init>(II)V

    goto :goto_0

    .line 510
    :cond_b
    new-instance v12, Lcom/android/exchange/utility/CalendarUtilities$RRule;

    add-int/lit8 v13, v8, 0x1

    invoke-direct {v12, v13, v4, v11}, Lcom/android/exchange/utility/CalendarUtilities$RRule;-><init>(III)V

    goto :goto_0
.end method

.method public static millisToEasDateTime(J)Ljava/lang/String;
    .locals 2
    .parameter "millis"

    .prologue
    .line 932
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;
    .locals 3
    .parameter "millis"
    .parameter "tz"
    .parameter "withTime"

    .prologue
    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 961
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 962
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 963
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 964
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    if-eqz p3, :cond_0

    .line 967
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 968
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    if-ne p2, v2, :cond_0

    .line 972
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 975
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static putRuleIntoTimeZoneInformation([BILcom/android/exchange/utility/CalendarUtilities$RRule;II)V
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "rrule"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 254
    add-int/lit8 v0, p1, 0x2

    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->month:I

    invoke-static {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 256
    add-int/lit8 v0, p1, 0x4

    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->dayOfWeek:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 258
    add-int/lit8 v1, p1, 0x6

    iget v0, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->week:I

    if-gez v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 260
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 261
    add-int/lit8 v0, p1, 0xa

    invoke-static {p0, v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 262
    return-void

    .line 258
    :cond_0
    iget v0, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->week:I

    goto :goto_0
.end method

.method static putTransitionMillisIntoSystemTime([BIJ)V
    .locals 4
    .parameter "bytes"
    .parameter "offset"
    .parameter "millis"

    .prologue
    .line 266
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 268
    .local v0, cal:Ljava/util/GregorianCalendar;
    const-wide/16 v2, 0x7530

    add-long/2addr v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 271
    add-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 273
    add-int/lit8 v2, p1, 0x4

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 276
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 278
    .local v1, wom:I
    add-int/lit8 v2, p1, 0x6

    if-gez v1, :cond_0

    const/4 v1, 0x5

    .end local v1           #wom:I
    :cond_0
    invoke-static {p0, v2, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 281
    add-int/lit8 v2, p1, 0x8

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 282
    add-int/lit8 v2, p1, 0xa

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 283
    return-void
.end method

.method public static recurrenceFromRrule(Ljava/lang/String;JLcom/android/exchange/adapter/Serializer;)V
    .locals 10
    .parameter "rrule"
    .parameter "startTime"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1218
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_0

    .line 1219
    const-string v7, "CalendarUtility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RRULE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :cond_0
    const-string v7, "FREQ="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1225
    .local v6, freq:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1226
    const-string v7, "DAILY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1227
    const/16 v7, 0x11b

    invoke-virtual {p3, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1228
    const/16 v7, 0x11c

    const-string v8, "0"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1229
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1230
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1308
    :cond_1
    :goto_0
    return-void

    .line 1231
    :cond_2
    const-string v7, "WEEKLY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1232
    const/16 v7, 0x11b

    invoke-virtual {p3, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1233
    const/16 v7, 0x11c

    const-string v8, "1"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1235
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1236
    const-string v7, "BYDAY="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, byDay:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1238
    const/16 v7, 0x120

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1240
    const-string v7, "-1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1241
    const/16 v7, 0x122

    const-string v8, "5"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1249
    :cond_3
    :goto_1
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1243
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1244
    .local v4, c:C
    const/16 v7, 0x31

    if-lt v4, v7, :cond_3

    const/16 v7, 0x34

    if-gt v4, v7, :cond_3

    .line 1245
    const/16 v7, 0x122

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_1

    .line 1250
    .end local v0           #byDay:Ljava/lang/String;
    .end local v4           #c:C
    :cond_5
    const-string v7, "MONTHLY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1251
    const-string v7, "BYMONTHDAY="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1252
    .local v2, byMonthDay:Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 1253
    const/16 v7, 0x11b

    invoke-virtual {p3, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1255
    const-string v7, "-1"

    if-ne v2, v7, :cond_6

    .line 1256
    const/16 v7, 0x11c

    const-string v8, "3"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1257
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1258
    const/16 v7, 0x120

    const-string v8, "127"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1265
    :goto_2
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 1261
    :cond_6
    const/16 v7, 0x11c

    const-string v8, "2"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1262
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1263
    const/16 v7, 0x121

    invoke-virtual {p3, v7, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_2

    .line 1267
    :cond_7
    const-string v7, "BYDAY="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1268
    .restart local v0       #byDay:Ljava/lang/String;
    const-string v7, "BYSETPOS="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1269
    .local v3, bySetpos:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1270
    const/16 v7, 0x11b

    invoke-virtual {p3, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1271
    const/16 v7, 0x11c

    const-string v8, "3"

    invoke-virtual {p3, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1272
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1273
    if-eqz v3, :cond_8

    .line 1274
    invoke-static {v0, v3, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addByDaySetpos(Ljava/lang/String;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1278
    :goto_3
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 1276
    :cond_8
    invoke-static {v0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    goto :goto_3

    .line 1281
    .end local v0           #byDay:Ljava/lang/String;
    .end local v2           #byMonthDay:Ljava/lang/String;
    .end local v3           #bySetpos:Ljava/lang/String;
    :cond_9
    const-string v7, "YEARLY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1282
    const-string v7, "BYMONTH="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1283
    .local v1, byMonth:Ljava/lang/String;
    const-string v7, "BYMONTHDAY="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1284
    .restart local v2       #byMonthDay:Ljava/lang/String;
    const-string v7, "BYDAY="

    invoke-static {p0, v7}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1285
    .restart local v0       #byDay:Ljava/lang/String;
    if-nez v1, :cond_a

    if-nez v2, :cond_a

    .line 1287
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1288
    .local v5, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v5, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1289
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1290
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1291
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1293
    .end local v5           #cal:Ljava/util/GregorianCalendar;
    :cond_a
    if-eqz v1, :cond_1

    if-nez v2, :cond_b

    if-eqz v0, :cond_1

    .line 1294
    :cond_b
    const/16 v7, 0x11b

    invoke-virtual {p3, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1295
    const/16 v8, 0x11c

    if-nez v0, :cond_c

    const-string v7, "5"

    :goto_4
    invoke-virtual {p3, v8, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1296
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1297
    const/16 v7, 0x123

    invoke-virtual {p3, v7, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1299
    if-eqz v2, :cond_d

    .line 1300
    const/16 v7, 0x121

    invoke-virtual {p3, v7, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1304
    :goto_5
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 1295
    :cond_c
    const-string v7, "6"

    goto :goto_4

    .line 1302
    :cond_d
    invoke-static {v0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    goto :goto_5
.end method

.method static recurrenceUntilToEasUntil(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "until"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1145
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1147
    .local v0, localCalendar:Ljava/util/GregorianCalendar;
    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1150
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1151
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    const-string v2, "T000000Z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static rruleFromRecurrence(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "type"
    .parameter "occurrences"
    .parameter "interval"
    .parameter "dow"
    .parameter "dom"
    .parameter "wom"
    .parameter "moy"
    .parameter "until"

    .prologue
    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FREQ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTypeToFreq:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1326
    .local v0, rrule:Ljava/lang/StringBuilder;
    if-lez p1, :cond_0

    .line 1327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    :cond_0
    if-lez p2, :cond_1

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";INTERVAL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 1369
    :cond_2
    :goto_0
    :pswitch_0
    if-eqz p7, :cond_3

    .line 1370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";UNTIL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    :cond_3
    sget-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v1, :cond_4

    .line 1374
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created rrule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1337
    :pswitch_1
    if-lez p3, :cond_2

    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 1340
    :pswitch_2
    if-lez p4, :cond_2

    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    goto :goto_0

    .line 1344
    :pswitch_3
    const/16 v1, 0x7f

    if-ne p3, v1, :cond_5

    .line 1345
    const-string v1, ";BYMONTHDAY=-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1347
    :cond_5
    const/4 v1, 0x5

    if-eq p5, v1, :cond_6

    const/4 v1, 0x1

    if-ne p5, v1, :cond_8

    :cond_6
    const/16 v1, 0x3e

    if-eq p3, v1, :cond_7

    const/16 v1, 0x41

    if-ne p3, v1, :cond_8

    .line 1348
    :cond_7
    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addBySetpos(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 1349
    :cond_8
    if-lez p3, :cond_2

    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 1352
    :pswitch_4
    if-lez p4, :cond_9

    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    .line 1353
    :cond_9
    if-lez p6, :cond_2

    .line 1354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";BYMONTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1358
    :pswitch_5
    if-lez p3, :cond_a

    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    .line 1359
    :cond_a
    if-lez p4, :cond_b

    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    .line 1360
    :cond_b
    if-lez p6, :cond_2

    .line 1361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";BYMONTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static setLong([BII)V
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 204
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 205
    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 206
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 207
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 208
    return-void
.end method

.method static setWord([BII)V
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 217
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 218
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 219
    return-void
.end method

.method public static timeZoneToTziString(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 5
    .parameter "tz"

    .prologue
    .line 386
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 387
    .local v0, tziString:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 388
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_0

    .line 389
    const-string v2, "CalendarUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TZI string for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found in cache."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v1, v0

    .line 396
    .end local v0           #tziString:Ljava/lang/String;
    .local v1, tziString:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 394
    .end local v1           #tziString:Ljava/lang/String;
    .restart local v0       #tziString:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToTziStringImpl(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 395
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 396
    .end local v0           #tziString:Ljava/lang/String;
    .restart local v1       #tziString:Ljava/lang/String;
    goto :goto_0
.end method

.method static timeZoneToTziStringImpl(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 21
    .parameter "tz"

    .prologue
    .line 704
    const/16 v18, 0xac

    move/from16 v0, v18

    new-array v15, v0, [B

    .line 705
    .local v15, tziBytes:[B
    invoke-virtual/range {p0 .. p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    move/from16 v0, v18

    neg-int v9, v0

    .line 706
    .local v9, standardBias:I
    const v18, 0xea60

    div-int v9, v9, v18

    .line 707
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0, v9}, Lcom/android/exchange/utility/CalendarUtilities;->setLong([BII)V

    .line 709
    invoke-virtual/range {p0 .. p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 710
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v13, v0, [Ljava/util/GregorianCalendar;

    .line 711
    .local v13, toDaylightCalendars:[Ljava/util/GregorianCalendar;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v14, v0, [Ljava/util/GregorianCalendar;

    .line 714
    .local v14, toStandardCalendars:[Ljava/util/GregorianCalendar;
    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/exchange/utility/CalendarUtilities;->getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 716
    invoke-static {v13}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v3

    .line 717
    .local v3, daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v14}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v10

    .line 718
    .local v10, standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    if-eqz v3, :cond_2

    iget v0, v3, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    if-eqz v10, :cond_2

    iget v0, v10, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 722
    const/16 v18, 0x44

    const/16 v19, 0x0

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v19

    const/16 v20, 0x0

    aget-object v20, v14, v20

    invoke-static/range {v20 .. v20}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v15, v0, v10, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->putRuleIntoTimeZoneInformation([BILcom/android/exchange/utility/CalendarUtilities$RRule;II)V

    .line 726
    const/16 v18, 0x98

    const/16 v19, 0x0

    aget-object v19, v13, v19

    invoke-static/range {v19 .. v19}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v19

    const/16 v20, 0x0

    aget-object v20, v13, v20

    invoke-static/range {v20 .. v20}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v15, v0, v3, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->putRuleIntoTimeZoneInformation([BILcom/android/exchange/utility/CalendarUtilities$RRule;II)V

    .line 745
    .end local v3           #daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .end local v10           #standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v6

    .line 746
    .local v6, dstOffset:I
    const/16 v18, 0xa8

    neg-int v0, v6

    move/from16 v19, v0

    const v20, 0xea60

    div-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setLong([BII)V

    .line 748
    .end local v6           #dstOffset:I
    .end local v13           #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    .end local v14           #toStandardCalendars:[Ljava/util/GregorianCalendar;
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v16

    .line 749
    .local v16, tziEncodedBytes:[B
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 750
    .local v17, tziString:Ljava/lang/String;
    return-object v17

    .line 733
    .end local v16           #tziEncodedBytes:[B
    .end local v17           #tziString:Ljava/lang/String;
    .restart local v3       #daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .restart local v10       #standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .restart local v13       #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    .restart local v14       #toStandardCalendars:[Ljava/util/GregorianCalendar;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 734
    .local v7, now:J
    invoke-static {v7, v8, v14}, Lcom/android/exchange/utility/CalendarUtilities;->findNextTransition(J[Ljava/util/GregorianCalendar;)J

    move-result-wide v11

    .line 735
    .local v11, standardTransition:J
    invoke-static {v7, v8, v13}, Lcom/android/exchange/utility/CalendarUtilities;->findNextTransition(J[Ljava/util/GregorianCalendar;)J

    move-result-wide v4

    .line 737
    .local v4, daylightTransition:J
    const-wide/16 v18, 0x0

    cmp-long v18, v11, v18

    if-eqz v18, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-eqz v18, :cond_0

    .line 738
    const/16 v18, 0x44

    move/from16 v0, v18

    invoke-static {v15, v0, v11, v12}, Lcom/android/exchange/utility/CalendarUtilities;->putTransitionMillisIntoSystemTime([BIJ)V

    .line 740
    const/16 v18, 0x98

    move/from16 v0, v18

    invoke-static {v15, v0, v4, v5}, Lcom/android/exchange/utility/CalendarUtilities;->putTransitionMillisIntoSystemTime([BIJ)V

    goto :goto_0
.end method

.method static timeZoneToVTimezone(Ljava/util/TimeZone;Lcom/android/exchange/utility/SimpleIcsWriter;)V
    .locals 14
    .parameter "tz"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    const v11, 0xea60

    div-int v5, v10, v11

    .line 615
    .local v5, rawOffsetMinutes:I
    invoke-static {v5}, Lcom/android/exchange/utility/CalendarUtilities;->utcOffsetString(I)Ljava/lang/String;

    move-result-object v6

    .line 618
    .local v6, standardOffsetString:Ljava/lang/String;
    const-string v10, "BEGIN"

    const-string v11, "VTIMEZONE"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v10, "TZID"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v10, "X-LIC-LOCATION"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v10

    if-nez v10, :cond_0

    .line 624
    invoke-static {p1, p0, v6}, Lcom/android/exchange/utility/CalendarUtilities;->writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V

    .line 678
    :goto_0
    return-void

    .line 628
    :cond_0
    const/4 v4, 0x3

    .line 629
    .local v4, maxYears:I
    new-array v8, v4, [Ljava/util/GregorianCalendar;

    .line 630
    .local v8, toDaylightCalendars:[Ljava/util/GregorianCalendar;
    new-array v9, v4, [Ljava/util/GregorianCalendar;

    .line 631
    .local v9, toStandardCalendars:[Ljava/util/GregorianCalendar;
    invoke-static {p0, v8, v9}, Lcom/android/exchange/utility/CalendarUtilities;->getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 632
    invoke-static {p1, p0, v6}, Lcom/android/exchange/utility/CalendarUtilities;->writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_1
    invoke-static {v8}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v1

    .line 637
    .local v1, daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v9}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v7

    .line 638
    .local v7, standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v10

    const v11, 0xea60

    div-int/2addr v10, v11

    add-int/2addr v10, v5

    invoke-static {v10}, Lcom/android/exchange/utility/CalendarUtilities;->utcOffsetString(I)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, daylightOffsetString:Ljava/lang/String;
    if-eqz v1, :cond_4

    if-eqz v7, :cond_4

    const/4 v2, 0x1

    .line 645
    .local v2, hasRule:Z
    :goto_1
    const-string v10, "BEGIN"

    const-string v11, "DAYLIGHT"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v10, "TZOFFSETFROM"

    invoke-virtual {p1, v10, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v10, "TZOFFSETTO"

    invoke-virtual {p1, v10, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v10, "DTSTART"

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v11, v12, p0, v13}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    if-eqz v2, :cond_5

    .line 652
    const-string v10, "RRULE"

    invoke-virtual {v1}, Lcom/android/exchange/utility/CalendarUtilities$RRule;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_2
    const-string v10, "END"

    const-string v11, "DAYLIGHT"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v10, "BEGIN"

    const-string v11, "STANDARD"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v10, "TZOFFSETFROM"

    invoke-virtual {p1, v10, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v10, "TZOFFSETTO"

    invoke-virtual {p1, v10, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v10, "DTSTART"

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-static {v11, v12, p0, v13}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    if-eqz v2, :cond_6

    .line 668
    const-string v10, "RRULE"

    invoke-virtual {v7}, Lcom/android/exchange/utility/CalendarUtilities$RRule;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_3
    const-string v10, "END"

    const-string v11, "STANDARD"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v10, "END"

    const-string v11, "VTIMEZONE"

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 642
    .end local v2           #hasRule:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 654
    .restart local v2       #hasRule:Z
    :cond_5
    const/4 v3, 0x1

    .local v3, i:I
    :goto_2
    if-ge v3, v4, :cond_2

    .line 655
    const-string v10, "RDATE"

    aget-object v11, v8, v3

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v11, v12, p0, v13}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 670
    .end local v3           #i:I
    :cond_6
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v4, :cond_3

    .line 671
    const-string v10, "RDATE"

    aget-object v11, v9, v3

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v11, v12, p0, v13}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method static tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "rrule"
    .parameter "token"

    .prologue
    .line 1124
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1125
    .local v4, start:I
    if-gez v4, :cond_0

    const/4 v5, 0x0

    .line 1134
    :goto_0
    return-object v5

    .line 1126
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1127
    .local v3, len:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 1128
    move v1, v4

    .line 1131
    .local v1, end:I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1           #end:I
    .local v2, end:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1132
    .local v0, c:C
    const/16 v5, 0x3b

    if-eq v0, v5, :cond_1

    if-ne v2, v3, :cond_3

    .line 1133
    :cond_1
    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    .line 1134
    .end local v2           #end:I
    .restart local v1       #end:I
    :goto_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .end local v1           #end:I
    .restart local v2       #end:I
    :cond_2
    move v1, v2

    .end local v2           #end:I
    .restart local v1       #end:I
    goto :goto_2

    .end local v1           #end:I
    .restart local v2       #end:I
    :cond_3
    move v1, v2

    .end local v2           #end:I
    .restart local v1       #end:I
    goto :goto_1
.end method

.method static transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;
    .locals 3
    .parameter "millis"
    .parameter "tz"
    .parameter "dst"

    .prologue
    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1021
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1022
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1023
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1024
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1027
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static transposeAllDayTime(JLjava/util/TimeZone;Ljava/util/TimeZone;)J
    .locals 8
    .parameter "time"
    .parameter "fromTimeZone"
    .parameter "toTimeZone"

    .prologue
    const/4 v4, 0x0

    .line 1053
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1054
    .local v7, fromCalendar:Ljava/util/GregorianCalendar;
    invoke-virtual {v7, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1055
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1057
    .local v0, toCalendar:Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1060
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 1061
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static tziStringToTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 1
    .parameter "timeZoneString"

    .prologue
    .line 784
    const v0, 0xea60

    invoke-static {p0, v0}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZone(Ljava/lang/String;I)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method static tziStringToTimeZone(Ljava/lang/String;I)Ljava/util/TimeZone;
    .locals 4
    .parameter "timeZoneString"
    .parameter "precision"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 762
    sget-object v1, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    .line 763
    .local v0, timeZone:Ljava/util/TimeZone;
    if-eqz v0, :cond_1

    .line 764
    sget-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v1, :cond_0

    .line 765
    const-string v1, "CalendarUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Using cached TimeZone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_0
    :goto_0
    return-object v0

    .line 768
    :cond_1
    invoke-static {p0, p1}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZoneImpl(Ljava/lang/String;I)Ljava/util/TimeZone;

    move-result-object v0

    .line 769
    if-nez v0, :cond_2

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeZone not found using default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 773
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 775
    :cond_2
    sget-object v1, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static tziStringToTimeZoneImpl(Ljava/lang/String;I)Ljava/util/TimeZone;
    .locals 27
    .parameter "timeZoneString"
    .parameter "precision"

    .prologue
    .line 796
    const/16 v18, 0x0

    .line 798
    .local v18, timeZone:Ljava/util/TimeZone;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v19

    .line 804
    .local v19, timeZoneBytes:[B
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getLong([BI)I

    move-result v24

    mul-int/lit8 v24, v24, -0x1

    const v25, 0xea60

    mul-int v6, v24, v25

    .line 808
    .local v6, bias:I
    invoke-static {v6}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v23

    .line 809
    .local v23, zoneIds:[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_f

    .line 812
    const/16 v24, 0x44

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    move-result-object v8

    .line 814
    .local v8, dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    if-nez v8, :cond_5

    .line 816
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 817
    .local v7, defaultTimeZone:Ljava/util/TimeZone;
    invoke-virtual {v7}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 819
    sget-boolean v24, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v24, :cond_0

    .line 820
    const-string v24, "CalendarUtility"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "TimeZone without DST found to be default: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    .end local v7           #defaultTimeZone:Ljava/util/TimeZone;
    .end local v8           #dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    :cond_0
    :goto_0
    return-object v7

    .line 828
    .restart local v7       #defaultTimeZone:Ljava/util/TimeZone;
    .restart local v8       #dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    :cond_1
    move-object/from16 v4, v23

    .local v4, arr$:[Ljava/lang/String;
    array-length v13, v4

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v13, :cond_4

    aget-object v22, v4, v12

    .line 829
    .local v22, zoneId:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    .line 830
    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v24

    if-nez v24, :cond_3

    .line 831
    sget-boolean v24, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v24, :cond_2

    .line 832
    const-string v24, "CalendarUtility"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "TimeZone without DST found by offset: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v7, v18

    .line 835
    goto :goto_0

    .line 828
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 839
    .end local v22           #zoneId:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 841
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #defaultTimeZone:Ljava/util/TimeZone;
    .end local v12           #i$:I
    .end local v13           #len$:I
    :cond_5
    const/16 v24, 0x98

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    move-result-object v11

    .line 844
    .local v11, dstStart:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    const/16 v24, 0xa8

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getLong([BI)I

    move-result v24

    mul-int/lit8 v24, v24, -0x1

    const v25, 0xea60

    mul-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v9, v0

    .line 849
    .local v9, dstSavings:J
    move-object/from16 v4, v23

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v13, v4

    .restart local v13       #len$:I
    const/4 v12, 0x0

    .restart local v12       #i$:I
    :goto_2
    if-ge v12, v13, :cond_8

    aget-object v22, v4, v12

    .line 851
    .restart local v22       #zoneId:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    .line 860
    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/android/exchange/utility/CalendarUtilities;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J

    move-result-wide v15

    .line 861
    .local v15, millisAtTransition:J
    new-instance v5, Ljava/util/Date;

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sub-long v24, v15, v24

    move-wide/from16 v0, v24

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 862
    .local v5, before:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v15

    move-wide/from16 v0, v24

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 863
    .local v3, after:Ljava/util/Date;
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 849
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 864
    :cond_7
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 867
    move-object/from16 v0, v18

    invoke-static {v0, v8}, Lcom/android/exchange/utility/CalendarUtilities;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J

    move-result-wide v15

    .line 870
    new-instance v5, Ljava/util/Date;

    .end local v5           #before:Ljava/util/Date;
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v9

    sub-long v24, v15, v24

    move-wide/from16 v0, v24

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 871
    .restart local v5       #before:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    .end local v3           #after:Ljava/util/Date;
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v15

    move-wide/from16 v0, v24

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 872
    .restart local v3       #after:Ljava/util/Date;
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 873
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 876
    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v24, v9, v24

    if-nez v24, :cond_6

    move-object/from16 v7, v18

    .line 877
    goto/16 :goto_0

    .line 879
    .end local v3           #after:Ljava/util/Date;
    .end local v5           #before:Ljava/util/Date;
    .end local v15           #millisAtTransition:J
    .end local v22           #zoneId:Ljava/lang/String;
    :cond_8
    const/4 v14, 0x0

    .line 880
    .local v14, lenient:Z
    const/16 v17, 0x0

    .line 881
    .local v17, name:Z
    iget v0, v11, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    move/from16 v24, v0

    iget v0, v8, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_a

    const v24, 0xea60

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 882
    const v24, 0xdbba00

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZoneImpl(Ljava/lang/String;I)Ljava/util/TimeZone;

    move-result-object v18

    .line 883
    const/4 v14, 0x1

    .line 902
    :goto_3
    sget-boolean v24, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v24, :cond_9

    .line 903
    const-string v25, "CalendarUtility"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "No TimeZone with correct DST settings; using "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    if-eqz v17, :cond_d

    const-string v24, "name"

    :goto_4
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, ": "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object/from16 v7, v18

    .line 908
    goto/16 :goto_0

    .line 888
    :cond_a
    const/16 v24, 0x4

    const/16 v25, 0x20

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getString([BII)Ljava/lang/String;

    move-result-object v21

    .line 890
    .local v21, tzName:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_c

    .line 891
    invoke-static/range {v21 .. v21}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v20

    .line 892
    .local v20, tz:Ljava/util/TimeZone;
    if-eqz v20, :cond_b

    .line 893
    move-object/from16 v18, v20

    .line 894
    const/16 v17, 0x1

    goto :goto_3

    .line 896
    :cond_b
    const/16 v24, 0x0

    aget-object v24, v23, v24

    invoke-static/range {v24 .. v24}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    goto :goto_3

    .line 899
    .end local v20           #tz:Ljava/util/TimeZone;
    :cond_c
    const/16 v24, 0x0

    aget-object v24, v23, v24

    invoke-static/range {v24 .. v24}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    goto :goto_3

    .line 903
    .end local v21           #tzName:Ljava/lang/String;
    :cond_d
    if-eqz v14, :cond_e

    const-string v24, "lenient"

    goto :goto_4

    :cond_e
    const-string v24, "first"

    goto :goto_4

    .line 911
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .end local v9           #dstSavings:J
    .end local v11           #dstStart:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v14           #lenient:Z
    .end local v17           #name:Z
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method static utcOffsetString(I)Ljava/lang/String;
    .locals 6
    .parameter "offsetMinutes"

    .prologue
    const/16 v5, 0x30

    const/16 v4, 0xa

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    .local v2, sb:Ljava/lang/StringBuilder;
    div-int/lit8 v0, p0, 0x3c

    .line 522
    .local v0, hours:I
    if-gez v0, :cond_2

    .line 523
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    rsub-int/lit8 v0, v0, 0x0

    .line 528
    :goto_0
    rem-int/lit8 v1, p0, 0x3c

    .line 529
    .local v1, minutes:I
    if-ge v0, v4, :cond_0

    .line 530
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 532
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    if-ge v1, v4, :cond_1

    .line 534
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 526
    .end local v1           #minutes:I
    :cond_2
    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 3
    .parameter "writer"
    .parameter "tz"
    .parameter "offsetString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    const-string v0, "BEGIN"

    const-string v1, "STANDARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v0, "TZOFFSETFROM"

    invoke-virtual {p0, v0, p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v0, "TZOFFSETTO"

    invoke-virtual {p0, v0, p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v0, "DTSTART"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v0, "END"

    const-string v1, "STANDARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v0, "END"

    const-string v1, "VTIMEZONE"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    return-void
.end method
