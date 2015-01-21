.class Lcom/android/deskclock/SettingsActivity$TimeZoneRow;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeZoneRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/deskclock/SettingsActivity$TimeZoneRow;",
        ">;"
    }
.end annotation


# static fields
.field private static final SHOW_DAYLIGHT_SAVINGS_INDICATOR:Z


# instance fields
.field public final mDisplayName:Ljava/lang/String;

.field public final mId:Ljava/lang/String;

.field public final mOffset:I

.field final synthetic this$0:Lcom/android/deskclock/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "id"
    .parameter "name"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->this$0:Lcom/android/deskclock/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p2, p0, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->mId:Ljava/lang/String;

    .line 229
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 230
    .local v0, tz:Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v1

    .line 231
    .local v1, useDaylightTime:Z
    #getter for: Lcom/android/deskclock/SettingsActivity;->mTime:J
    invoke-static {p1}, Lcom/android/deskclock/SettingsActivity;->access$000(Lcom/android/deskclock/SettingsActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->mOffset:I

    .line 232
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->buildGmtDisplayName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->mDisplayName:Ljava/lang/String;

    .line 233
    return-void
.end method


# virtual methods
.method public buildGmtDisplayName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "id"
    .parameter "displayName"
    .parameter "useDaylightTime"

    .prologue
    .line 241
    iget v3, p0, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->mOffset:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 242
    .local v2, p:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "(GMT"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, name:Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->mOffset:I

    if-gez v3, :cond_2

    const/16 v3, 0x2d

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    int-to-long v3, v2

    const-wide/32 v5, 0x36ee80

    div-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 246
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    const v3, 0xea60

    div-int v0, v2, v3

    .line 249
    .local v0, min:I
    rem-int/lit8 v0, v0, 0x3c

    .line 251
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 252
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    if-eqz p3, :cond_1

    .line 260
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 243
    .end local v0           #min:I
    :cond_2
    const/16 v3, 0x2b

    goto :goto_0
.end method

.method public compareTo(Lcom/android/deskclock/SettingsActivity$TimeZoneRow;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 237
    iget v0, p0, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->mOffset:I

    iget v1, p1, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->mOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 220
    check-cast p1, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/deskclock/SettingsActivity$TimeZoneRow;->compareTo(Lcom/android/deskclock/SettingsActivity$TimeZoneRow;)I

    move-result v0

    return v0
.end method
