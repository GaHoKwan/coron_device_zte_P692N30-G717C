.class public Lcom/android/calendar/TimezoneAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TimezoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/calendar/TimezoneAdapter$TimezoneRow;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_RECENT_TIMEZONES:Ljava/lang/String; = "preferences_recent_timezones"

.field private static final MAX_RECENT_TIMEZONES:I = 0x3

.field private static final RECENT_TIMEZONES_DELIMITER:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "TimezoneAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTimezone:Ljava/lang/String;

.field private mDateTime:Ljava/util/Date;

.field private mShowingAll:Z

.field private mTime:J

.field private mTimezones:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/TimezoneAdapter$TimezoneRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .parameter "context"
    .parameter "currentTimezone"
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    .line 220
    const v0, 0x1090009

    const v1, 0x1020014

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 204
    iput-boolean v3, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 221
    iput-object p1, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    .line 222
    iput-object p2, p0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    .line 223
    iput-wide p3, p0, Lcom/android/calendar/TimezoneAdapter;->mTime:J

    .line 224
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/calendar/TimezoneAdapter;->mTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/android/calendar/TimezoneAdapter;->mDateTime:Ljava/util/Date;

    .line 225
    iput-boolean v3, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 226
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->showInitialTimezones()V

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/TimezoneAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/android/calendar/TimezoneAdapter;->mTime:J

    return-wide v0
.end method

.method private loadFromResources(Landroid/content/res/Resources;)V
    .locals 9
    .parameter "resources"

    .prologue
    .line 398
    iget-object v4, p0, Lcom/android/calendar/TimezoneAdapter;->mTimezones:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_1

    .line 399
    const v4, 0x7f070009

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, ids:[Ljava/lang/String;
    const v4, 0x7f070008

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, labels:[Ljava/lang/String;
    array-length v3, v1

    .line 403
    .local v3, length:I
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v4, p0, Lcom/android/calendar/TimezoneAdapter;->mTimezones:Ljava/util/LinkedHashMap;

    .line 405
    array-length v4, v1

    array-length v5, v2

    if-eq v4, v5, :cond_0

    .line 406
    const-string v4, "TimezoneAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ids length ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") and labels length("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") should be equal but aren\'t."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 410
    iget-object v4, p0, Lcom/android/calendar/TimezoneAdapter;->mTimezones:Ljava/util/LinkedHashMap;

    aget-object v5, v1, v0

    new-instance v6, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    aget-object v7, v1, v0

    aget-object v8, v2, v0

    invoke-direct {v6, p0, v7, v8}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;-><init>(Lcom/android/calendar/TimezoneAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    .end local v0           #i:I
    .end local v1           #ids:[Ljava/lang/String;
    .end local v2           #labels:[Ljava/lang/String;
    .end local v3           #length:I
    :cond_1
    return-void
.end method


# virtual methods
.method public getAllTimezones()[[Ljava/lang/CharSequence;
    .locals 9

    .prologue
    .line 386
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/calendar/TimezoneAdapter;->mTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    filled-new-array {v7, v8}, [I

    move-result-object v7

    const-class v8, Ljava/lang/CharSequence;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/CharSequence;

    .line 387
    .local v5, timeZones:[[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/TimezoneAdapter;->mTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 388
    .local v3, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/calendar/TimezoneAdapter;->mTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 389
    .local v6, timezones:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendar/TimezoneAdapter$TimezoneRow;>;"
    const/4 v0, 0x0

    .line 390
    .local v0, i:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 391
    .local v4, row:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    const/4 v7, 0x0

    aget-object v8, v5, v7

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    aput-object v7, v8, v0

    .line 392
    const/4 v7, 0x1

    aget-object v7, v5, v7

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 394
    .end local v4           #row:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    :cond_0
    return-object v5
.end method

.method public getRowById(Ljava/lang/String;)I
    .locals 2
    .parameter "id"

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/calendar/TimezoneAdapter;->mTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 238
    .local v0, timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    if-nez v0, :cond_0

    .line 239
    const/4 v1, -0x1

    .line 241
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public isAllTimezonesShown()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    return v0
.end method

.method public saveRecentTimezone(Ljava/lang/String;)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x3

    .line 359
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 360
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_recent_timezones"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, recentsString:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    .local v1, recents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v5, :cond_1

    .line 370
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 365
    .end local v1           #recents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1       #recents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 372
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    const-string v3, ","

    invoke-static {v1, v3}, Lcom/android/calendar/Utils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    const-string v4, "preferences_recent_timezones"

    invoke-static {v3, v4, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public setCurrentTimezone(Ljava/lang/String;)V
    .locals 1
    .parameter "currentTimezone"

    .prologue
    .line 327
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iput-object p1, p0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    .line 329
    iget-boolean v0, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    if-nez v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->showInitialTimezones()V

    .line 333
    :cond_0
    return-void
.end method

.method public setTime(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/android/calendar/TimezoneAdapter;->mTime:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 343
    iput-wide p1, p0, Lcom/android/calendar/TimezoneAdapter;->mTime:J

    .line 344
    iget-object v0, p0, Lcom/android/calendar/TimezoneAdapter;->mDateTime:Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/calendar/TimezoneAdapter;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/TimezoneAdapter;->mTimezones:Ljava/util/LinkedHashMap;

    .line 346
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->showInitialTimezones()V

    .line 348
    :cond_0
    return-void
.end method

.method public showAllTimezones()V
    .locals 4

    .prologue
    .line 310
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter;->mTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 311
    .local v2, timezones:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendar/TimezoneAdapter$TimezoneRow;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 312
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 313
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 314
    .local v1, timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    invoke-virtual {v1}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->buildGmtDisplayName()V

    .line 315
    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 317
    .end local v1           #timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 318
    return-void
.end method

.method public showInitialTimezones()V
    .locals 17

    .prologue
    .line 257
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 260
    .local v5, ids:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 261
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 269
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string v13, "preferences_recent_timezones"

    const/4 v14, 0x0

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 270
    .local v11, recentsString:Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 271
    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 272
    .local v10, recents:[Ljava/lang/String;
    move-object v1, v10

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v9, v1, v3

    .line 273
    .local v9, recent:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 274
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v9           #recent:Ljava/lang/String;
    .end local v10           #recents:[Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 281
    const-class v14, Lcom/android/calendar/TimezoneAdapter;

    monitor-enter v14

    .line 282
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/calendar/TimezoneAdapter;->loadFromResources(Landroid/content/res/Resources;)V

    .line 283
    const-string v13, "GMT"

    invoke-static {v13}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 284
    .local v2, gmt:Ljava/util/TimeZone;
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 285
    .local v4, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/TimezoneAdapter;->mTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 287
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 291
    .local v7, newTz:Ljava/util/TimeZone;
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/TimezoneAdapter;->mDateTime:Ljava/util/Date;

    invoke-virtual {v7, v13}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v13

    const/4 v15, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v13, v15, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 295
    .local v12, tzDisplayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/TimezoneAdapter;->mTimezones:Ljava/util/LinkedHashMap;

    new-instance v15, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v4, v12}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;-><init>(Lcom/android/calendar/TimezoneAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .end local v7           #newTz:Ljava/util/TimeZone;
    .end local v12           #tzDisplayName:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/TimezoneAdapter;->mTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 302
    .end local v2           #gmt:Ljava/util/TimeZone;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .restart local v2       #gmt:Ljava/util/TimeZone;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 304
    return-void
.end method
