.class public Lcom/mediatek/settings/plugin/ZonePicker;
.super Landroid/app/ListFragment;
.source "ZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/plugin/ZonePicker$ZoneSelectionListener;,
        Lcom/mediatek/settings/plugin/ZonePicker$MyComparator;
    }
.end annotation


# static fields
.field private static final HOURS_1:I = 0x36ee80

.field public static final INPUT_ACTION:Ljava/lang/String; = "INPUT_ACTION"

.field public static final INPUT_CONTENT:Ljava/lang/String; = "INPUT_CONTENT"

.field private static final KEY_DISPLAYNAME:Ljava/lang/String; = "name"

.field private static final KEY_GMT:Ljava/lang/String; = "gmt"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_OFFSET:Ljava/lang/String; = "offset"

.field private static final KEY_TIME_AND_DATE:Ljava/lang/String; = "time_date"

.field private static final TAG:Ljava/lang/String; = "ZonePicker"

.field private static final XMLTAG_TIMEZONE:Ljava/lang/String; = "timezone"

.field private static sCurrentOffset:I


# instance fields
.field private isFirstCreate:Z

.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mListener:Lcom/mediatek/settings/plugin/ZonePicker$ZoneSelectionListener;

.field private mQueryString:Ljava/lang/String;

.field private final mTimeReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeZoneIntentFilter:Landroid/content/IntentFilter;

.field private sSimpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/settings/plugin/ZonePicker;->sCurrentOffset:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mQueryString:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm  yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/ZonePicker;->sSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/plugin/ZonePicker;->isFirstCreate:Z

    .line 107
    new-instance v0, Lcom/mediatek/settings/plugin/ZonePicker$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/ZonePicker$1;-><init>(Lcom/mediatek/settings/plugin/ZonePicker;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/plugin/ZonePicker;)Landroid/widget/SimpleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/settings/plugin/ZonePicker;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mAdapter:Landroid/widget/SimpleAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/mediatek/settings/plugin/ZonePicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method private addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16
    .parameter
    .parameter "id"
    .parameter "displayName"
    .parameter "date"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "id"

    move-object/from16 v0, p2

    invoke-virtual {v6, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v12, "name"

    move-object/from16 v0, p3

    invoke-virtual {v6, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static/range {p2 .. p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    .line 262
    .local v11, tz:Ljava/util/TimeZone;
    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    .line 263
    .local v9, offset:I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 264
    .local v10, p:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v8, name:Ljava/lang/StringBuilder;
    const-string v12, "GMT"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    if-gez v9, :cond_2

    .line 268
    const/16 v12, 0x2d

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    :goto_0
    const v12, 0x36ee80

    div-int v4, v10, v12

    .line 273
    .local v4, hour:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .local v5, hourStr:Ljava/lang/StringBuilder;
    const/16 v12, 0xa

    if-ge v4, v12, :cond_0

    .line 275
    const-string v12, "0"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 279
    const/16 v12, 0x3a

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    const v12, 0xea60

    div-int v7, v10, v12

    .line 281
    .local v7, min:I
    rem-int/lit8 v7, v7, 0x3c

    .line 282
    const/16 v12, 0xa

    if-ge v7, v12, :cond_1

    .line 283
    const/16 v12, 0x30

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    :cond_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    const-string v12, "gmt"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v12, "offset"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v3, Ljava/util/Date;

    int-to-long v12, v9

    add-long v12, v12, p4

    sget v14, Lcom/mediatek/settings/plugin/ZonePicker;->sCurrentOffset:I

    int-to-long v14, v14

    sub-long/2addr v12, v14

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 289
    .local v3, dt:Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/settings/plugin/ZonePicker;->sSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v12, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, dateTime:Ljava/lang/String;
    const-string v12, "time_date"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    return-void

    .line 270
    .end local v2           #dateTime:Ljava/lang/String;
    .end local v3           #dt:Ljava/util/Date;
    .end local v4           #hour:I
    .end local v5           #hourStr:Ljava/lang/StringBuilder;
    .end local v7           #min:I
    :cond_2
    const/16 v12, 0x2b

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static getCurrentOffset(Landroid/content/Context;)I
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 168
    .local v3, date:J
    const/4 v0, 0x0

    .line 169
    .local v0, currentOffset:I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, defaultId:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f040010

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 173
    .local v9, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    if-ne v10, v12, :cond_0

    .line 175
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    .line 176
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v10

    if-eq v10, v13, :cond_5

    .line 177
    :goto_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v10

    if-eq v10, v12, :cond_2

    .line 178
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    move v1, v0

    .line 208
    .end local v0           #currentOffset:I
    .end local v9           #xrp:Landroid/content/res/XmlResourceParser;
    .local v1, currentOffset:I
    :goto_2
    return v1

    .line 181
    .end local v1           #currentOffset:I
    .restart local v0       #currentOffset:I
    .restart local v9       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 203
    .end local v9           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v8

    .line 204
    .local v8, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v10, "ZonePicker"

    const-string v11, "Ill-formatted timezones.xml file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    move v1, v0

    .line 208
    .end local v0           #currentOffset:I
    .restart local v1       #currentOffset:I
    goto :goto_2

    .line 183
    .end local v1           #currentOffset:I
    .restart local v0       #currentOffset:I
    .restart local v9       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "timezone"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 184
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, id:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 188
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 189
    .local v2, currentTimeZone:Ljava/util/TimeZone;
    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    move v1, v0

    .line 192
    .end local v0           #currentOffset:I
    .restart local v1       #currentOffset:I
    goto :goto_2

    .line 197
    .end local v1           #currentOffset:I
    .end local v2           #currentTimeZone:Ljava/util/TimeZone;
    .end local v6           #id:Ljava/lang/String;
    .restart local v0       #currentOffset:I
    :cond_3
    :goto_4
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v10

    if-eq v10, v13, :cond_4

    .line 198
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 205
    .end local v9           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v7

    .line 206
    .local v7, ioe:Ljava/io/IOException;
    const-string v10, "ZonePicker"

    const-string v11, "Unable to read timezones.xml file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 200
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v9       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_4
    :try_start_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_0

    .line 202
    :cond_5
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method

.method public static getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I
    .locals 6
    .parameter "adapter"
    .parameter "tz"

    .prologue
    .line 151
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, defaultId:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v3

    .line 153
    .local v3, listSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 154
    invoke-virtual {p0, v1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 155
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    .local v2, id:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    .end local v1           #i:I
    .end local v2           #id:Ljava/lang/String;
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :goto_1
    return v1

    .line 153
    .restart local v1       #i:I
    .restart local v2       #id:Ljava/lang/String;
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v2           #id:Ljava/lang/String;
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getZones(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v1, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 215
    .local v4, date:J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x7f040010

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 216
    .local v10, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 218
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    .line 219
    :goto_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v13, :cond_7

    .line 220
    :goto_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 221
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_1

    .line 253
    .end local v10           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object v1

    .line 224
    .restart local v10       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 248
    .end local v10           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v9

    .line 249
    .local v9, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v0, "ZonePicker"

    const-string v11, "Ill-formatted timezones.xml file"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 226
    .end local v9           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v10       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_2
    :try_start_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "timezone"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, id:Ljava/lang/String;
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, displayName:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mQueryString:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mQueryString:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    move-object v0, p0

    .line 232
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/settings/plugin/ZonePicker;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    .line 242
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #displayName:Ljava/lang/String;
    :cond_4
    :goto_3
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v13, :cond_6

    .line 243
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 250
    .end local v10           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v6

    .line 251
    .local v6, ioe:Ljava/io/IOException;
    const-string v0, "ZonePicker"

    const-string v11, "Unable to read timezones.xml file"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 234
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v2       #id:Ljava/lang/String;
    .restart local v3       #displayName:Ljava/lang/String;
    .restart local v10       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, tempName:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 236
    .local v8, tempQuery:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p0

    .line 237
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/settings/plugin/ZonePicker;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    .line 245
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #displayName:Ljava/lang/String;
    .end local v7           #tempName:Ljava/lang/String;
    .end local v8           #tempQuery:Ljava/lang/String;
    :cond_6
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_0

    .line 247
    :cond_7
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method


# virtual methods
.method public constructTimezoneAdapter(Landroid/content/Context;I)Landroid/widget/SimpleAdapter;
    .locals 8
    .parameter "context"
    .parameter "layoutId"

    .prologue
    const/4 v7, 0x3

    .line 59
    const-string v1, "ZonePicker"

    const-string v3, "constructTimezoneAdapter"

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-array v4, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "name"

    aput-object v3, v4, v1

    const/4 v1, 0x1

    const-string v3, "gmt"

    aput-object v3, v4, v1

    const/4 v1, 0x2

    const-string v3, "time_date"

    aput-object v3, v4, v1

    .line 62
    .local v4, from:[Ljava/lang/String;
    new-array v5, v7, [I

    fill-array-data v5, :array_0

    .line 64
    .local v5, to:[I
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/ZonePicker;->getZones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 65
    .local v2, sortedList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v6, Lcom/mediatek/settings/plugin/ZonePicker$MyComparator;

    const-string v1, "offset"

    invoke-direct {v6, v1}, Lcom/mediatek/settings/plugin/ZonePicker$MyComparator;-><init>(Ljava/lang/String;)V

    .line 66
    .local v6, comparator:Lcom/mediatek/settings/plugin/ZonePicker$MyComparator;
    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    new-instance v0, Landroid/widget/SimpleAdapter;

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 69
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    return-object v0

    .line 62
    :array_0
    .array-data 0x4
        0xc5t 0x0t 0xbt 0x7ft
        0xc7t 0x0t 0xbt 0x7ft
        0xc6t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanseState"

    .prologue
    const/4 v4, 0x1

    .line 74
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    const-string v2, "ZonePicker"

    const-string v3, "onActivityCreated"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-boolean v4, p0, Lcom/mediatek/settings/plugin/ZonePicker;->isFirstCreate:Z

    .line 77
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/ZonePicker;->getCurrentOffset(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/mediatek/settings/plugin/ZonePicker;->sCurrentOffset:I

    .line 80
    const v2, 0x7f030033

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/settings/plugin/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;I)Landroid/widget/SimpleAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 81
    iget-object v2, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v2}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object v2, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/settings/plugin/ZonePicker;->getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v1

    .line 83
    .local v1, defaultIndex:I
    if-ltz v1, :cond_0

    .line 84
    invoke-virtual {p0, v1}, Landroid/app/ListFragment;->setSelection(I)V

    .line 86
    :cond_0
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 87
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mTimeZoneIntentFilter:Landroid/content/IntentFilter;

    .line 88
    iget-object v2, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mTimeZoneIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "INPUT_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "listView"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 93
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 94
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    const-string v5, "id"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 96
    .local v4, tzId:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 97
    .local v0, activity:Landroid/app/Activity;
    const-string v5, "alarm"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 98
    .local v1, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 99
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 100
    .local v3, tz:Ljava/util/TimeZone;
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mListener:Lcom/mediatek/settings/plugin/ZonePicker$ZoneSelectionListener;

    if-eqz v5, :cond_0

    .line 101
    iget-object v5, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mListener:Lcom/mediatek/settings/plugin/ZonePicker$ZoneSelectionListener;

    invoke-interface {v5, v3}, Lcom/mediatek/settings/plugin/ZonePicker$ZoneSelectionListener;->onZoneSelected(Ljava/util/TimeZone;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 146
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 147
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 133
    const-string v1, "ZonePicker"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 135
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mTimeZoneIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    iget-boolean v1, p0, Lcom/mediatek/settings/plugin/ZonePicker;->isFirstCreate:Z

    if-nez v1, :cond_0

    .line 137
    const v1, 0x7f030033

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/plugin/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;I)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 138
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ZonePicker;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/settings/plugin/ZonePicker;->isFirstCreate:Z

    .line 141
    return-void
.end method
