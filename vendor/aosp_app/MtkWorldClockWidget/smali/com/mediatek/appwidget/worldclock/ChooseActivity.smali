.class public Lcom/mediatek/appwidget/worldclock/ChooseActivity;
.super Landroid/app/Activity;
.source "ChooseActivity.java"


# static fields
.field private static final AUTOCOMPLETECHOOSEACTIVITYRESULTCODE:I = 0xa

.field private static final CHOOSEACTIVITYREQUESTCODE:I = 0xa

.field private static final DELETE_INTENT:Ljava/lang/String; = "android.intent.action.mtk.worldclock.deleteIntent"

.field private static final MENU_ADD:I = 0x1

.field private static final MENU_UPDATE:I = 0x2

.field private static final MTKWORLDCLOCKCHOOSE:Ljava/lang/String; = "mtkworldclockchoose"

.field private static final ON_CLICK_APPWIDGETID:Ljava/lang/String; = "onClickAppWidgetId"

.field private static final TAG:Ljava/lang/String; = "MTKWORLDCHOOSE"

.field private static final TIMEZONE_ID:I = 0x0

.field private static final WEATHER_ID:I = 0x1

.field private static mAppwidgetId:I

.field private static mPosition:I


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAdapterCityArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapterLocalCityArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChooserAdapter:Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;

.field private mCityNameArrayBak:Ljava/util/ArrayList;
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

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mNoCity:Landroid/widget/TextView;

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

.field private mWeatherIDArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mPosition:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mTimeZoneArray:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mCityNameArrayBak:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mWeatherIDArray:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mAdapterCityArray:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mAdapterLocalCityArray:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->data:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/appwidget/worldclock/ChooseActivity;Ljava/lang/String;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->setCityInfoByWeatherID(Ljava/lang/String;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mAppwidgetId:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    sput p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mPosition:I

    return p0
.end method

.method private getCityNameBYWeatherId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "weatherId"

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, cityName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mWeatherIDArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mWeatherIDArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mCityNameArrayBak:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cityName:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 201
    .restart local v0       #cityName:Ljava/lang/String;
    :cond_0
    return-object v0

    .line 195
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getData(Ljava/lang/String;)V
    .locals 14
    .parameter "citynamefromautoweatherids"

    .prologue
    const/4 v13, 0x0

    .line 147
    iget-object v10, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->data:Ljava/util/ArrayList;

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 148
    :cond_0
    iget-object v10, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 150
    :cond_1
    if-eqz p1, :cond_6

    .line 151
    const-string v10, "chooseshared"

    invoke-virtual {p0, v10, v13}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 153
    .local v7, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v10, "mtkworldclockchoose"

    const-string v11, "first"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, chooses:Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, sac:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v10, v6

    if-ge v5, v10, :cond_4

    .line 158
    aget-object v10, v6, v5

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 160
    const-string p1, ""

    .line 161
    aget-object v10, v6, v5

    invoke-direct {p0, v10}, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->getCityNameBYWeatherId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, text:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 163
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, temp:[Ljava/lang/String;
    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v8, v10

    .line 166
    .end local v8           #temp:[Ljava/lang/String;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07000e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 167
    iget-object v10, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mContext:Landroid/content/Context;

    invoke-static {v10, v9, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 157
    .end local v9           #text:Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 170
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 171
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 172
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "mtkworldclockchoose"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_5
    const-string v10, "mtkworldclockchoose"

    const-string v11, "first"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x5

    if-le v10, v11, :cond_6

    .line 178
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, datass:[Ljava/lang/String;
    const/4 v5, 0x1

    :goto_1
    array-length v10, v2

    if-ge v5, v10, :cond_6

    .line 180
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v4, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "chooselistviewimageview"

    const v11, 0x7f020004

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    aget-object v10, v2, v5

    invoke-direct {p0, v10}, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->getCityNameBYWeatherId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, cityNameFromWeatherid:Ljava/lang/String;
    const-string v10, "chooselistviewtextview"

    invoke-virtual {v4, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v10, "chooselistviewweatherid"

    aget-object v11, v2, v5

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v10, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 190
    .end local v0           #chooses:Ljava/lang/String;
    .end local v1           #cityNameFromWeatherid:Ljava/lang/String;
    .end local v2           #datass:[Ljava/lang/String;
    .end local v4           #hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #i:I
    .end local v6           #sac:[Ljava/lang/String;
    .end local v7           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_6
    return-void
.end method

.method private getLocalGMTString()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x30

    const/16 v8, 0xa

    .line 258
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 259
    .local v5, tz:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 260
    .local v3, offset:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 261
    .local v4, p:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v2, name:Ljava/lang/StringBuilder;
    const-string v6, "GMT"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    if-gez v3, :cond_1

    .line 264
    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    :goto_0
    const v6, 0x36ee80

    div-int v0, v4, v6

    .line 269
    .local v0, hour:I
    if-ge v0, v8, :cond_2

    .line 270
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    :goto_1
    const/16 v6, 0x3a

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    const v6, 0xea60

    div-int v1, v4, v6

    .line 277
    .local v1, min:I
    rem-int/lit8 v1, v1, 0x3c

    .line 278
    if-ge v1, v8, :cond_0

    .line 279
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 266
    .end local v0           #hour:I
    .end local v1           #min:I
    :cond_1
    const/16 v6, 0x2b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 273
    .restart local v0       #hour:I
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private setCityInfoByWeatherID(Ljava/lang/String;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    .locals 5
    .parameter "weatherID"

    .prologue
    .line 396
    new-instance v0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    invoke-direct {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;-><init>()V

    .line 397
    .local v0, cityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    invoke-virtual {v0, p1}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setWeatherID(Ljava/lang/String;)V

    .line 398
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mWeatherIDArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 399
    iget-object v4, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mWeatherIDArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 400
    iget-object v4, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mTimeZoneArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 401
    .local v3, timezone:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mCityNameArrayBak:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 402
    .local v1, cityName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setTimeZone(Ljava/lang/String;)V

    .line 403
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setIndex(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0, v1}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setCityName(Ljava/lang/String;)V

    .line 408
    .end local v1           #cityName:Ljava/lang/String;
    .end local v3           #timezone:Ljava/lang/String;
    :cond_0
    return-object v0

    .line 398
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getZones()V
    .locals 13

    .prologue
    .line 205
    const/4 v10, 0x0

    .line 206
    .local v10, xrp:Landroid/content/res/XmlResourceParser;
    invoke-direct {p0}, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->getLocalGMTString()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, localCity:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f040001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 209
    :cond_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 212
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    .line 213
    const/4 v4, 0x0

    .line 214
    .local v4, readCount:I
    const/16 v11, 0x1f4

    new-array v5, v11, [Ljava/lang/String;

    .line 215
    .local v5, tempCitys:[Ljava/lang/String;
    const/16 v11, 0x1f4

    new-array v7, v11, [Ljava/lang/String;

    .line 216
    .local v7, tempZones:[Ljava/lang/String;
    const/16 v11, 0x1f4

    new-array v6, v11, [Ljava/lang/String;

    .line 217
    .local v6, tempWeahterID:[Ljava/lang/String;
    :goto_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_8

    .line 218
    :goto_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 219
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 251
    if-eqz v10, :cond_1

    .line 252
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 255
    .end local v4           #readCount:I
    .end local v5           #tempCitys:[Ljava/lang/String;
    .end local v6           #tempWeahterID:[Ljava/lang/String;
    .end local v7           #tempZones:[Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 222
    .restart local v4       #readCount:I
    .restart local v5       #tempCitys:[Ljava/lang/String;
    .restart local v6       #tempWeahterID:[Ljava/lang/String;
    .restart local v7       #tempZones:[Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 246
    .end local v4           #readCount:I
    .end local v5           #tempCitys:[Ljava/lang/String;
    .end local v6           #tempWeahterID:[Ljava/lang/String;
    .end local v7           #tempZones:[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 247
    .local v9, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v11, "aaa"

    const-string v12, "Ill-formatted timezones.xml file"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    if-eqz v10, :cond_1

    .line 252
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 224
    .end local v9           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4       #readCount:I
    .restart local v5       #tempCitys:[Ljava/lang/String;
    .restart local v6       #tempWeahterID:[Ljava/lang/String;
    .restart local v7       #tempZones:[Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "timezone"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 225
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, id:Ljava/lang/String;
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, weatherID:Ljava/lang/String;
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, displayName:Ljava/lang/String;
    const/16 v11, 0x1f4

    if-ge v4, v11, :cond_5

    .line 229
    iget-object v11, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mCityNameArrayBak:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v11, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mAdapterCityArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v11, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mTimeZoneArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 233
    iget-object v11, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mAdapterLocalCityArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_4
    iget-object v11, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mWeatherIDArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v4, v4, 0x1

    .line 239
    .end local v0           #displayName:Ljava/lang/String;
    .end local v1           #id:Ljava/lang/String;
    .end local v8           #weatherID:Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_6

    .line 240
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 248
    .end local v4           #readCount:I
    .end local v5           #tempCitys:[Ljava/lang/String;
    .end local v6           #tempWeahterID:[Ljava/lang/String;
    .end local v7           #tempZones:[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 249
    .local v2, ioe:Ljava/io/IOException;
    :try_start_4
    const-string v11, "bbb"

    const-string v12, "Unable to read timezones.xml file"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    if-eqz v10, :cond_1

    .line 252
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 242
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v4       #readCount:I
    .restart local v5       #tempCitys:[Ljava/lang/String;
    .restart local v6       #tempWeahterID:[Ljava/lang/String;
    .restart local v7       #tempZones:[Ljava/lang/String;
    :cond_6
    :try_start_5
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 251
    .end local v4           #readCount:I
    .end local v5           #tempCitys:[Ljava/lang/String;
    .end local v6           #tempWeahterID:[Ljava/lang/String;
    .end local v7           #tempZones:[Ljava/lang/String;
    :catchall_0
    move-exception v11

    if-eqz v10, :cond_7

    .line 252
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v11

    .line 244
    .restart local v4       #readCount:I
    .restart local v5       #tempCitys:[Ljava/lang/String;
    .restart local v6       #tempWeahterID:[Ljava/lang/String;
    .restart local v7       #tempZones:[Ljava/lang/String;
    :cond_8
    :try_start_6
    iput v4, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mCityNumberInXml:I

    .line 245
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 251
    if-eqz v10, :cond_1

    .line 252
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v1, 0xa

    .line 137
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    if-ne p1, v1, :cond_0

    if-ne p2, v1, :cond_0

    .line 140
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "citynamefromautoweatherid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, citynamefromautoweatherids:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->getData(Ljava/lang/String;)V

    .line 144
    .end local v0           #citynamefromautoweatherids:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const-string v1, "MTKWORLDCHOOSE"

    const-string v2, "on create ...."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 104
    const-string v1, "onClickAppWidgetId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mAppwidgetId:I

    .line 106
    :cond_0
    const-string v1, "MTKWORLDCHOOSE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAppwidgetId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mAppwidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-object p0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mContext:Landroid/content/Context;

    .line 108
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 109
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mListView:Landroid/widget/ListView;

    .line 110
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mNoCity:Landroid/widget/TextView;

    .line 111
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 115
    const/4 v0, 0x1

    const v1, 0x7f07000b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 122
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 130
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 124
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, intentAutoCompleteTextView:Landroid/content/Intent;
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 128
    const/4 v1, 0x1

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 414
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 415
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 416
    const-string v1, "onClickAppWidgetId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mAppwidgetId:I

    .line 418
    :cond_0
    const-string v1, "MTKWORLDCHOOSE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent mAppwidgetId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mAppwidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 423
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 424
    if-eqz p1, :cond_0

    .line 425
    const-string v0, "onClickAppWidgetId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mAppwidgetId:I

    .line 426
    const-string v0, "MTKWORLDCHOOSE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState mAppwidgetId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mAppwidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 299
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->getData(Ljava/lang/String;)V

    .line 301
    new-instance v0, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;

    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->data:Ljava/util/ArrayList;

    sget v2, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mAppwidgetId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mChooserAdapter:Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;

    .line 302
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mNoCity:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mChooserAdapter:Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 308
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/mediatek/appwidget/worldclock/ChooseActivity$1;

    invoke-direct {v1, p0}, Lcom/mediatek/appwidget/worldclock/ChooseActivity$1;-><init>(Lcom/mediatek/appwidget/worldclock/ChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;

    invoke-direct {v1, p0}, Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;-><init>(Lcom/mediatek/appwidget/worldclock/ChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 390
    sget v0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mListView:Landroid/widget/ListView;

    sget v1, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 393
    :cond_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mNoCity:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 433
    const-string v0, "onClickAppWidgetId"

    sget v1, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mAppwidgetId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 289
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->mTimeZoneArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "MTKWORLDCHOOSE"

    const-string v1, "mTimeZoneArray.isEmpty()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->getZones()V

    .line 293
    :cond_0
    return-void
.end method
