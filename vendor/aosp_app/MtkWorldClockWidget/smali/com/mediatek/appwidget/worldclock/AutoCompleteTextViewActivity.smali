.class public Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;
.super Landroid/app/Activity;
.source "AutoCompleteTextViewActivity.java"


# static fields
.field static final AUTO_CITY_NAME:Ljava/lang/String; = "citynamefromauto"

.field public static final AUTO_WEATHER_ID:Ljava/lang/String; = "citynamefromautoweatherid"

.field private static final LEN:I = 0x32

.field private static final ON_CLICK_APPWIDGETID:Ljava/lang/String; = "onClickAppWidgetId"

.field static final TAG:Ljava/lang/String; = "AutoCompleteTextViewActivity"

.field private static final TIMEZONE_ID:I = 0x0

.field private static final WEATHER_ID:I = 0x1


# instance fields
.field buttonListener:Landroid/view/View$OnClickListener;

.field private final focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mAdapterCityArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdapterLocalCityArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppwidgetId:I

.field private mAutoComplete:Landroid/widget/AutoCompleteTextView;

.field private mCityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

.field private final mCityNameArrayBak:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCityNumberInXml:I

.field private final mTimeZoneArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeatherIDArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onkeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mCityNameArrayBak:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mTimeZoneArray:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mWeatherIDArray:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAdapterCityArray:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAdapterLocalCityArray:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    invoke-direct {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mCityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    .line 109
    new-instance v0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$1;-><init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 126
    new-instance v0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$2;-><init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->onkeyListener:Landroid/view/View$OnKeyListener;

    .line 137
    new-instance v0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$3;-><init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->buttonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAutoComplete:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mCityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;Lcom/mediatek/appwidget/worldclock/ClockCityInfo;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mCityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;Ljava/lang/String;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->setCityInfo(Ljava/lang/String;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    move-result-object v0

    return-object v0
.end method

.method private getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    new-instance v0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$6;

    invoke-direct {v0, p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$6;-><init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)V

    .line 384
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/String;>;"
    return-object v0
.end method

.method private getLocalGMTString()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x30

    const/16 v8, 0xa

    .line 346
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 347
    .local v5, tz:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 348
    .local v3, offset:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 349
    .local v4, p:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v2, name:Ljava/lang/StringBuilder;
    const-string v6, "GMT"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    if-gez v3, :cond_1

    .line 353
    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    :goto_0
    const v6, 0x36ee80

    div-int v0, v4, v6

    .line 358
    .local v0, hour:I
    if-ge v0, v8, :cond_2

    .line 359
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    :goto_1
    const/16 v6, 0x3a

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    const v6, 0xea60

    div-int v1, v4, v6

    .line 367
    .local v1, min:I
    rem-int/lit8 v1, v1, 0x3c

    .line 369
    if-ge v1, v8, :cond_0

    .line 370
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 355
    .end local v0           #hour:I
    .end local v1           #min:I
    :cond_1
    const/16 v6, 0x2b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 362
    .restart local v0       #hour:I
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private setCityInfo(Ljava/lang/String;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    .locals 3
    .parameter "cityName"

    .prologue
    .line 163
    new-instance v0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    invoke-direct {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;-><init>()V

    .line 164
    .local v0, cityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    invoke-virtual {v0, p1}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setCityName(Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mCityNumberInXml:I

    if-ge v1, v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mCityNameArrayBak:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setIndex(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mTimeZoneArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setTimeZone(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mWeatherIDArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setWeatherID(Ljava/lang/String;)V

    .line 173
    :cond_0
    return-object v0

    .line 165
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getZones()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 296
    const/4 v7, 0x0

    .line 297
    .local v7, xrp:Landroid/content/res/XmlResourceParser;
    invoke-direct {p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->getLocalGMTString()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, localCity:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f040001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 300
    :cond_0
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 303
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    .line 304
    const/4 v4, 0x0

    .line 305
    .local v4, readCount:I
    :goto_0
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    if-eq v8, v12, :cond_8

    .line 306
    :goto_1
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    if-eq v8, v11, :cond_3

    .line 307
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-ne v8, v10, :cond_2

    .line 339
    if-eqz v7, :cond_1

    .line 340
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 343
    .end local v4           #readCount:I
    :cond_1
    :goto_2
    return-void

    .line 310
    .restart local v4       #readCount:I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 334
    .end local v4           #readCount:I
    :catch_0
    move-exception v6

    .line 335
    .local v6, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v8, "AutoCompleteTextViewActivity"

    const-string v9, "Ill-formatted timezones.xml file"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    if-eqz v7, :cond_1

    .line 340
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 312
    .end local v6           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4       #readCount:I
    :cond_3
    :try_start_3
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "timezone"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 313
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, id:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, weatherID:Ljava/lang/String;
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, displayName:Ljava/lang/String;
    const/16 v8, 0x1f4

    if-ge v4, v8, :cond_5

    .line 317
    iget-object v8, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mCityNameArrayBak:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v8, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAdapterCityArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v8, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mTimeZoneArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 321
    iget-object v8, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAdapterLocalCityArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_4
    iget-object v8, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mWeatherIDArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    add-int/lit8 v4, v4, 0x1

    .line 327
    .end local v0           #displayName:Ljava/lang/String;
    .end local v1           #id:Ljava/lang/String;
    .end local v5           #weatherID:Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    if-eq v8, v12, :cond_6

    .line 328
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 336
    .end local v4           #readCount:I
    :catch_1
    move-exception v2

    .line 337
    .local v2, ioe:Ljava/io/IOException;
    :try_start_4
    const-string v8, "AutoCompleteTextViewActivity"

    const-string v9, "Unable to read timezones.xml file"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 339
    if-eqz v7, :cond_1

    .line 340
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 330
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v4       #readCount:I
    :cond_6
    :try_start_5
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 339
    .end local v4           #readCount:I
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_7

    .line 340
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v8

    .line 332
    .restart local v4       #readCount:I
    :cond_8
    :try_start_6
    iput v4, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mCityNumberInXml:I

    .line 333
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 339
    if-eqz v7, :cond_1

    .line 340
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 179
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 180
    const-string v4, "AutoCompleteTextViewActivity"

    const-string v5, "bundle != null"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v4, "onClickAppWidgetId"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAppwidgetId:I

    .line 183
    :cond_0
    iget-object v4, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mTimeZoneArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    const-string v4, "AutoCompleteTextViewActivity"

    const-string v5, "mTimeZoneArray.isEmpty()"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->getZones()V

    .line 187
    :cond_1
    const-string v4, "AutoCompleteTextViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAppwidgetId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAppwidgetId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/high16 v4, 0x7f03

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 189
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    new-instance v0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x109000a

    iget-object v6, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAdapterCityArray:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAdapterCityArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 195
    .local v0, adapter:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    .line 196
    .local v2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/String;>;"
    invoke-virtual {v0, v2}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 197
    const/high16 v4, 0x7f09

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/AutoCompleteTextView;

    iput-object v4, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAutoComplete:Landroid/widget/AutoCompleteTextView;

    .line 198
    iget-object v4, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    iget-object v4, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAutoComplete:Landroid/widget/AutoCompleteTextView;

    new-instance v5, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$4;

    invoke-direct {v5, p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$4;-><init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    iget-object v4, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAutoComplete:Landroid/widget/AutoCompleteTextView;

    iget-object v5, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->onkeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 234
    iget-object v4, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAutoComplete:Landroid/widget/AutoCompleteTextView;

    iget-object v5, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 255
    const v4, 0x7f090001

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 256
    .local v3, nextButton:Landroid/widget/Button;
    iget-object v4, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v4, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAutoComplete:Landroid/widget/AutoCompleteTextView;

    new-instance v5, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$5;

    invoke-direct {v5, p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$5;-><init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 285
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 290
    return-void
.end method
