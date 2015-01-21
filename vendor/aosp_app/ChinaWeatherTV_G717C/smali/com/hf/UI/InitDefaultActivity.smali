.class public Lcom/hf/UI/InitDefaultActivity;
.super Landroid/app/Activity;
.source "InitDefaultActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/hf/location/HFLocationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/hf/location/HFLocationListener;"
    }
.end annotation


# static fields
.field private static final DIALOG_LOCATING:I = 0x3ea

.field private static final DIALOG_NOTICE:I = 0x3eb

.field private static final DIALOG_QUERYING:I = 0x3e9

.field private static final HANDLER_QUERY_FAILED:I = 0x3ec

.field private static final HANDLER_QUERY_SUCCESS:I = 0x3eb

.field private static final QUERY_CITY_TOKEN:I = 0xa

.field private static final VOICE_RECOGNITION_REQUEST_CODE:I = 0x4d2


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field mEditTextWatcher:Landroid/text/TextWatcher;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mLocationButton:Landroid/widget/ImageButton;

.field private mLocationManager:Lcom/hf/location/HFLocationManager;

.field private mNetSwitch:Z

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchAdapter:Lcom/hf/UI/SearchCityAdapter;

.field private mSearchLineView:Landroid/view/View;

.field private mVoiceButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    new-instance v0, Lcom/hf/UI/InitDefaultActivity$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/InitDefaultActivity$1;-><init>(Lcom/hf/UI/InitDefaultActivity;)V

    iput-object v0, p0, Lcom/hf/UI/InitDefaultActivity;->mHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/hf/UI/InitDefaultActivity$2;

    invoke-direct {v0, p0}, Lcom/hf/UI/InitDefaultActivity$2;-><init>(Lcom/hf/UI/InitDefaultActivity;)V

    iput-object v0, p0, Lcom/hf/UI/InitDefaultActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/InitDefaultActivity;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/hf/UI/InitDefaultActivity;->showHttpDialog(Lcom/hf/model/CityModel;)V

    return-void
.end method

.method static synthetic access$1(Lcom/hf/UI/InitDefaultActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/hf/UI/InitDefaultActivity;->mNetSwitch:Z

    return v0
.end method

.method static synthetic access$2(Lcom/hf/UI/InitDefaultActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/hf/UI/InitDefaultActivity;->queryCity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/hf/UI/InitDefaultActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/hf/UI/InitDefaultActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/hf/UI/InitDefaultActivity;)Lcom/hf/UI/SearchCityAdapter;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hf/UI/InitDefaultActivity;->mSearchAdapter:Lcom/hf/UI/SearchCityAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/hf/UI/InitDefaultActivity;)Lcom/hf/location/HFLocationManager;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/hf/UI/InitDefaultActivity;->mLocationManager:Lcom/hf/location/HFLocationManager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/hf/UI/InitDefaultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/hf/UI/InitDefaultActivity;->getCityFormLocation()V

    return-void
.end method

.method static synthetic access$7(Lcom/hf/UI/InitDefaultActivity;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/hf/UI/InitDefaultActivity;->searchWeather(Lcom/hf/model/CityModel;)V

    return-void
.end method

.method static synthetic access$8(Lcom/hf/UI/InitDefaultActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/hf/UI/InitDefaultActivity;->mNetSwitch:Z

    return-void
.end method

.method private getCityFormLocation()V
    .locals 4

    .prologue
    .line 484
    invoke-static {p0}, Lcom/hf/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 485
    .local v0, available:Z
    if-nez v0, :cond_0

    .line 486
    const v2, 0x7f080008

    invoke-static {p0, v2}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 494
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 490
    .local v1, message:Landroid/os/Message;
    const/16 v2, 0xc8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 491
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 492
    iget-object v2, p0, Lcom/hf/UI/InitDefaultActivity;->mLocationManager:Lcom/hf/location/HFLocationManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/hf/location/HFLocationManager;->start(Lcom/hf/location/HFLocationListener;Z)V

    goto :goto_0
.end method

.method private initQueryHandler()V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Lcom/hf/UI/InitDefaultActivity$4;

    invoke-virtual {p0}, Lcom/hf/UI/InitDefaultActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hf/UI/InitDefaultActivity$4;-><init>(Lcom/hf/UI/InitDefaultActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/hf/UI/InitDefaultActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 273
    return-void
.end method

.method private initResource()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 275
    const v3, 0x7f0b00a3

    invoke-virtual {p0, v3}, Lcom/hf/UI/InitDefaultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mEditText:Landroid/widget/EditText;

    .line 276
    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/hf/UI/InitDefaultActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 277
    const v3, 0x7f0b00a4

    invoke-virtual {p0, v3}, Lcom/hf/UI/InitDefaultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mSearchLineView:Landroid/view/View;

    .line 278
    const v3, 0x7f0b00a2

    invoke-virtual {p0, v3}, Lcom/hf/UI/InitDefaultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mLocationButton:Landroid/widget/ImageButton;

    .line 279
    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mLocationButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    const v3, 0x7f0b00a5

    invoke-virtual {p0, v3}, Lcom/hf/UI/InitDefaultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mVoiceButton:Landroid/widget/ImageButton;

    .line 281
    invoke-virtual {p0}, Lcom/hf/UI/InitDefaultActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 282
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 283
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mSearchLineView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :goto_0
    const v3, 0x7f0b0068

    invoke-virtual {p0, v3}, Lcom/hf/UI/InitDefaultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mListView:Landroid/widget/ListView;

    .line 293
    new-instance v3, Lcom/hf/UI/SearchCityAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/hf/UI/SearchCityAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mSearchAdapter:Lcom/hf/UI/SearchCityAdapter;

    .line 294
    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/hf/UI/InitDefaultActivity;->mSearchAdapter:Lcom/hf/UI/SearchCityAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 295
    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 296
    return-void

    .line 287
    :cond_0
    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 288
    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mSearchLineView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mLocationButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 290
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private queryCity(Ljava/lang/String;)V
    .locals 8
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 299
    const/4 v5, 0x0

    .line 300
    .local v5, selection:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v5, "is_hot=1"

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/hf/UI/InitDefaultActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0xa

    sget-object v3, Lcom/hf/data/Constant$CITY;->CITY_URI:Landroid/net/Uri;

    sget-object v4, Lcom/hf/UI/SearchCityAdapter;->QUERY_CITY_PROJECTION:[Ljava/lang/String;

    const-string v7, "id asc"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "name LIKE \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    const-string v1, "englishName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 305
    const-string v1, "pinyin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private registBroadcast()V
    .locals 2

    .prologue
    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.hf.ADD_CITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "com.hf.UPDATE_WEATHER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v1, "com.hf.QUERY_WEATHER_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v1, "com.hf.CHANGE_DEFAULT_CITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    new-instance v1, Lcom/hf/UI/InitDefaultActivity$3;

    invoke-direct {v1, p0}, Lcom/hf/UI/InitDefaultActivity$3;-><init>(Lcom/hf/UI/InitDefaultActivity;)V

    iput-object v1, p0, Lcom/hf/UI/InitDefaultActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 234
    iget-object v1, p0, Lcom/hf/UI/InitDefaultActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/hf/UI/InitDefaultActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    return-void
.end method

.method private searchWeather(Lcom/hf/model/CityModel;)V
    .locals 4
    .parameter "city"

    .prologue
    .line 441
    const/16 v2, 0x3e9

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/hf/UI/InitDefaultActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    iget-object v2, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/hf/utils/Util;->hasCity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 448
    .local v0, hasCity:Z
    if-eqz v0, :cond_0

    .line 449
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.hf.QUERY_WEATHER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "cityID"

    iget-object v3, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    :goto_1
    invoke-virtual {p0, v1}, Lcom/hf/UI/InitDefaultActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 459
    return-void

    .line 453
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.hf.QUERY_NEW_CITY_WEATHER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "cityID"

    iget-object v3, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 442
    .end local v0           #hasCity:Z
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private showHttpDialog(Lcom/hf/model/CityModel;)V
    .locals 4
    .parameter "city"

    .prologue
    .line 384
    invoke-static {p0}, Lcom/hf/utils/Util;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 385
    .local v1, net_type:I
    if-eqz v1, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 386
    :cond_0
    invoke-direct {p0, p1}, Lcom/hf/UI/InitDefaultActivity;->searchWeather(Lcom/hf/model/CityModel;)V

    .line 434
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-boolean v2, p0, Lcom/hf/UI/InitDefaultActivity;->mNetSwitch:Z

    if-eqz v2, :cond_2

    .line 391
    invoke-direct {p0, p1}, Lcom/hf/UI/InitDefaultActivity;->searchWeather(Lcom/hf/model/CityModel;)V

    goto :goto_0

    .line 394
    :cond_2
    new-instance v0, Lcom/hf/UI/HFDialog;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 395
    .local v0, dialog:Lcom/hf/UI/HFDialog;
    const v2, 0x7f0200b7

    invoke-virtual {v0, v2}, Lcom/hf/UI/HFDialog;->setIcon(I)V

    .line 396
    const v2, 0x7f08009f

    invoke-virtual {v0, v2}, Lcom/hf/UI/HFDialog;->setTitle(I)V

    .line 397
    const v2, 0x7f0800a0

    invoke-virtual {v0, v2}, Lcom/hf/UI/HFDialog;->setContent(I)V

    .line 398
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/hf/UI/HFDialog;->setTitlePaddingBottom(I)V

    .line 399
    const/high16 v2, 0x104

    new-instance v3, Lcom/hf/UI/InitDefaultActivity$9;

    invoke-direct {v3, p0, v0}, Lcom/hf/UI/InitDefaultActivity$9;-><init>(Lcom/hf/UI/InitDefaultActivity;Lcom/hf/UI/HFDialog;)V

    invoke-virtual {v0, v2, v3}, Lcom/hf/UI/HFDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 407
    const v2, 0x104000a

    new-instance v3, Lcom/hf/UI/InitDefaultActivity$10;

    invoke-direct {v3, p0, v0, p1}, Lcom/hf/UI/InitDefaultActivity$10;-><init>(Lcom/hf/UI/InitDefaultActivity;Lcom/hf/UI/HFDialog;Lcom/hf/model/CityModel;)V

    invoke-virtual {v0, v2, v3}, Lcom/hf/UI/HFDialog;->setNeutralButton(ILandroid/view/View$OnClickListener;)V

    .line 417
    const v2, 0x7f0800a1

    new-instance v3, Lcom/hf/UI/InitDefaultActivity$11;

    invoke-direct {v3, p0, v0, p1}, Lcom/hf/UI/InitDefaultActivity$11;-><init>(Lcom/hf/UI/InitDefaultActivity;Lcom/hf/UI/HFDialog;Lcom/hf/model/CityModel;)V

    invoke-virtual {v0, v2, v3}, Lcom/hf/UI/HFDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 432
    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 463
    const/16 v3, 0x4d2

    if-ne p1, v3, :cond_0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 464
    const-string v3, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 465
    .local v1, matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 466
    const/4 v2, 0x0

    .line 467
    .local v2, name:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 468
    .local v0, len:I
    if-lez v0, :cond_0

    .line 469
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #name:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 470
    .restart local v2       #name:Ljava/lang/String;
    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 475
    .end local v0           #len:I
    .end local v1           #matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 476
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 513
    .local v0, id:I
    const v2, 0x7f0b00a5

    if-ne v0, v2, :cond_1

    .line 515
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    const-string v2, "android.speech.extra.PROMPT"

    const v3, 0x7f080047

    invoke-virtual {p0, v3}, Lcom/hf/UI/InitDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const/16 v2, 0x4d2

    invoke-virtual {p0, v1, v2}, Lcom/hf/UI/InitDefaultActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 531
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    const v2, 0x7f0b00a2

    if-ne v0, v2, :cond_0

    .line 526
    :try_start_1
    invoke-direct {p0}, Lcom/hf/UI/InitDefaultActivity;->getCityFormLocation()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 527
    :catch_0
    move-exception v2

    goto :goto_0

    .line 520
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 173
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 174
    invoke-direct {p0}, Lcom/hf/UI/InitDefaultActivity;->initQueryHandler()V

    .line 175
    invoke-direct {p0}, Lcom/hf/UI/InitDefaultActivity;->registBroadcast()V

    .line 176
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Lcom/hf/UI/InitDefaultActivity;->setContentView(I)V

    .line 179
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/hf/UI/InitDefaultActivity;->queryCity(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/hf/UI/InitDefaultActivity;->initResource()V

    .line 182
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 183
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "dialog_net_notice_switch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hf/UI/InitDefaultActivity;->mNetSwitch:Z

    .line 185
    invoke-static {p0}, Lcom/hf/location/HFLocationManager;->getInstance(Landroid/content/Context;)Lcom/hf/location/HFLocationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/UI/InitDefaultActivity;->mLocationManager:Lcom/hf/location/HFLocationManager;

    .line 188
    const/16 v1, 0x3eb

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/hf/UI/InitDefaultActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 314
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 315
    new-instance v0, Lcom/hf/UI/HFDialog;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 316
    .local v0, dialog:Lcom/hf/UI/HFDialog;
    new-array v1, v3, [I

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setStyle([I)V

    .line 317
    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setContent(I)V

    .line 318
    new-instance v1, Lcom/hf/UI/InitDefaultActivity$5;

    invoke-direct {v1, p0}, Lcom/hf/UI/InitDefaultActivity$5;-><init>(Lcom/hf/UI/InitDefaultActivity;)V

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 371
    .end local v0           #dialog:Lcom/hf/UI/HFDialog;
    :goto_0
    return-object v0

    .line 332
    :cond_0
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_1

    .line 333
    new-instance v0, Lcom/hf/UI/HFDialog;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 334
    .restart local v0       #dialog:Lcom/hf/UI/HFDialog;
    new-array v1, v3, [I

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setStyle([I)V

    .line 335
    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setContent(I)V

    .line 336
    new-instance v1, Lcom/hf/UI/InitDefaultActivity$6;

    invoke-direct {v1, p0}, Lcom/hf/UI/InitDefaultActivity$6;-><init>(Lcom/hf/UI/InitDefaultActivity;)V

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 348
    .end local v0           #dialog:Lcom/hf/UI/HFDialog;
    :cond_1
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_2

    .line 349
    new-instance v0, Lcom/hf/UI/HFDialog;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 350
    .restart local v0       #dialog:Lcom/hf/UI/HFDialog;
    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setTitle(I)V

    .line 351
    const/high16 v1, 0x104

    new-instance v2, Lcom/hf/UI/InitDefaultActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/hf/UI/InitDefaultActivity$7;-><init>(Lcom/hf/UI/InitDefaultActivity;Lcom/hf/UI/HFDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/HFDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 359
    const v1, 0x104000a

    new-instance v2, Lcom/hf/UI/InitDefaultActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/hf/UI/InitDefaultActivity$8;-><init>(Lcom/hf/UI/InitDefaultActivity;Lcom/hf/UI/HFDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/HFDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 371
    .end local v0           #dialog:Lcom/hf/UI/HFDialog;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/hf/UI/InitDefaultActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/hf/UI/InitDefaultActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 242
    iget-object v0, p0, Lcom/hf/UI/InitDefaultActivity;->mSearchAdapter:Lcom/hf/UI/SearchCityAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hf/UI/SearchCityAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 243
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/SearchCityAdapter$CityItem;

    .line 376
    .local v0, cityItem:Lcom/hf/UI/SearchCityAdapter$CityItem;
    iget-object v1, v0, Lcom/hf/UI/SearchCityAdapter$CityItem;->city:Lcom/hf/model/CityModel;

    invoke-direct {p0, v1}, Lcom/hf/UI/InitDefaultActivity;->showHttpDialog(Lcom/hf/model/CityModel;)V

    .line 377
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 256
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onPause(Landroid/content/Context;)V

    .line 257
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onPause(Landroid/content/Context;)V

    .line 258
    return-void
.end method

.method public onResult(ILcom/hf/model/CityModel;)V
    .locals 2
    .parameter "result"
    .parameter "city"

    .prologue
    .line 537
    iget-object v1, p0, Lcom/hf/UI/InitDefaultActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 538
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 539
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 540
    iget-object v1, p0, Lcom/hf/UI/InitDefaultActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 541
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 248
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onResume(Landroid/content/Context;)V

    .line 249
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onResume(Landroid/content/Context;)V

    .line 250
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 499
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 502
    const/16 v0, 0x3e9

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/hf/UI/InitDefaultActivity;->removeDialog(I)V

    .line 503
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/hf/UI/InitDefaultActivity;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    goto :goto_0
.end method
