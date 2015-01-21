.class public Lcom/mediatek/vcalendar/parameter/Value;
.super Lcom/mediatek/vcalendar/parameter/Parameter;
.source "Value.java"


# static fields
.field public static final BINARY:Ljava/lang/String; = "BINARY"

.field public static final BOOLEAN:Ljava/lang/String; = "BOOLEAN"

.field public static final CAL_ADDRESS:Ljava/lang/String; = "CAL-ADDRESS"

.field public static final DATE:Ljava/lang/String; = "DATE"

.field public static final DATE_TIME:Ljava/lang/String; = "DATE-TIME"

.field public static final DURATION:Ljava/lang/String; = "DURATION"

.field public static final FLOAT:Ljava/lang/String; = "FLOAT"

.field public static final INTEGER:Ljava/lang/String; = "INTEGER"

.field public static final PERIOD:Ljava/lang/String; = "PERIOD"

.field public static final RECUR:Ljava/lang/String; = "RECUR"

.field private static final TAG:Ljava/lang/String; = "Value"

.field public static final TEXT:Ljava/lang/String; = "TEXT"

.field public static final TIME:Ljava/lang/String; = "TIME"

.field public static final URI:Ljava/lang/String; = "URI"

.field public static final UTC_OFFSET:Ljava/lang/String; = "UTC-OFFSET"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 64
    const-string v0, "VALUE"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/parameter/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "Value"

    const-string v1, "Constructor: value parameter created"

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
