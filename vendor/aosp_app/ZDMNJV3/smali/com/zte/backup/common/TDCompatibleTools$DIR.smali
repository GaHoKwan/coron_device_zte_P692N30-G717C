.class Lcom/zte/backup/common/TDCompatibleTools$DIR;
.super Ljava/lang/Object;
.source "TDCompatibleTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/backup/common/TDCompatibleTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DIR"
.end annotation


# static fields
.field public static final ALARMS_DIR_TD:Ljava/lang/String; = "alarm"

.field public static final CALENDAR_DIR_TD:Ljava/lang/String; = "calendar"

.field public static final CALLHISTORY_DIR_TD:Ljava/lang/String; = "calllog"

.field public static final CONTACT_DIR_TD:Ljava/lang/String; = "contacts"

.field public static final MMS_DIR_TD:Ljava/lang/String; = "mms"

.field public static final NOTES_DIR_TD:Ljava/lang/String; = "notepad"

.field public static final SMS_DIR_TD:Ljava/lang/String; = "message"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
