.class public interface abstract Lcom/mediatek/protect/emailcommon/provider/SmartPushContent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCOUNT_KEY:Ljava/lang/String; = "accountKey"

.field public static final CONTENT_PROJECTION:[Ljava/lang/String; = null

.field public static final EVENT_TYPE:Ljava/lang/String; = "eventType"

.field public static final HABIT_PROJECTION:[Ljava/lang/String; = null

.field public static final HABIT_SELECTION:Ljava/lang/String; = "accountKey =?"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TYPE_DURATION:I = 0x2

.field public static final TYPE_MAIL:I = 0x1

.field public static final TYPE_OPEN:I = 0x3

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "eventType"

    aput-object v1, v0, v2

    const-string v1, "timestamp"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/protect/emailcommon/provider/SmartPushContent;->HABIT_PROJECTION:[Ljava/lang/String;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "accountKey"

    aput-object v1, v0, v3

    const-string v1, "eventType"

    aput-object v1, v0, v4

    const-string v1, "timestamp"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/protect/emailcommon/provider/SmartPushContent;->CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method
