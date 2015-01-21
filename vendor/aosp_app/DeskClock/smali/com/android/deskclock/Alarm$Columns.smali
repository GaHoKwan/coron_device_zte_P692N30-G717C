.class public Lcom/android/deskclock/Alarm$Columns;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ALARM_ALERT_INDEX:I = 0x8

.field public static final ALARM_DAYS_OF_WEEK_INDEX:I = 0x3

.field public static final ALARM_ENABLED_INDEX:I = 0x5

.field static final ALARM_FULL_QUERY_COLUMNS:[Ljava/lang/String; = null

.field public static final ALARM_HOUR_INDEX:I = 0x1

.field public static final ALARM_ID_INDEX:I = 0x0

.field public static final ALARM_MESSAGE_INDEX:I = 0x7

.field public static final ALARM_MINUTES_INDEX:I = 0x2

.field public static final ALARM_PATH_INDEX:I = 0x9

.field static final ALARM_QUERY_COLUMNS:[Ljava/lang/String; = null

.field public static final ALARM_TIME:Ljava/lang/String; = "alarmtime"

.field public static final ALARM_TIME_INDEX:I = 0x4

.field public static final ALARM_VIBRATE_INDEX:I = 0x6

.field public static final ALERT:Ljava/lang/String; = "alert"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DAYS_OF_WEEK:Ljava/lang/String; = "daysofweek"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "hour, minutes ASC, _id DESC"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final HOUR:Ljava/lang/String; = "hour"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final MINUTES:Ljava/lang/String; = "minutes"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final WHERE_ENABLED:Ljava/lang/String; = "enabled=1"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    const-string v0, "content://com.android.deskclock/alarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    .line 143
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "hour"

    aput-object v1, v0, v4

    const-string v1, "minutes"

    aput-object v1, v0, v5

    const-string v1, "daysofweek"

    aput-object v1, v0, v6

    const-string v1, "alarmtime"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "message"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "alert"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/deskclock/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    .line 147
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "hour"

    aput-object v1, v0, v4

    const-string v1, "minutes"

    aput-object v1, v0, v5

    const-string v1, "daysofweek"

    aput-object v1, v0, v6

    const-string v1, "alarmtime"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "message"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "alert"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/deskclock/Alarm$Columns;->ALARM_FULL_QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
