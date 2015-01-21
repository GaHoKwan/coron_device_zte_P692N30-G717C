.class public Lcom/android/utk/UtkMenuActivity;
.super Landroid/app/ListActivity;
.source "UtkMenuActivity.java"


# static fields
.field private static final MSG_ID_TIMEOUT:I = 0x1

.field static final STATE_MAIN:I = 0x1

.field static final STATE_SECONDARY:I = 0x2


# instance fields
.field appService:Lcom/android/utk/UtkAppService;

.field private mAcceptUsersInput:Z

.field private mContext:Landroid/content/Context;

.field private mProgressView:Landroid/widget/ProgressBar;

.field private final mSIMStateChangeFilter:Landroid/content/IntentFilter;

.field private final mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mState:I

.field mTimeoutHandler:Landroid/os/Handler;

.field private mTitleIconView:Landroid/widget/ImageView;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    .line 59
    iput v1, p0, Lcom/android/utk/UtkMenuActivity;->mState:I

    .line 60
    iput-boolean v1, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    .line 62
    iput-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 63
    iput-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    .line 64
    iput-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    .line 66
    invoke-static {}, Lcom/android/utk/UtkAppService;->getInstance()Lcom/android/utk/UtkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/utk/UtkMenuActivity;->appService:Lcom/android/utk/UtkAppService;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    .line 71
    new-instance v0, Lcom/android/utk/UtkMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/android/utk/UtkMenuActivity$1;-><init>(Lcom/android/utk/UtkMenuActivity;)V

    iput-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    new-instance v0, Lcom/android/utk/UtkMenuActivity$2;

    invoke-direct {v0, p0}, Lcom/android/utk/UtkMenuActivity$2;-><init>(Lcom/android/utk/UtkMenuActivity;)V

    iput-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/utk/UtkMenuActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/utk/UtkMenuActivity;->cancelTimeOut()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/utk/UtkMenuActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/utk/UtkMenuActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/utk/UtkMenuActivity;->sendResponse(I)V

    return-void
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    return-void
.end method

.method private displayMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/Menu;->titleIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/utk/Menu;->titleIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 325
    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    :goto_0
    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/utk/Menu;->titleIconSelfExplanatory:Z

    if-nez v1, :cond_3

    .line 330
    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/Menu;->title:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 332
    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 340
    :goto_1
    new-instance v0, Lcom/android/utk/UtkMenuAdapter;

    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    iget-object v2, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cdma/utk/Menu;->itemsIconSelfExplanatory:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/android/utk/UtkMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 343
    .local v0, adapter:Lcom/android/utk/UtkMenuAdapter;
    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 345
    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iget v1, v1, Lcom/android/internal/telephony/cdma/utk/Menu;->defaultItem:I

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setSelection(I)V

    .line 347
    .end local v0           #adapter:Lcom/android/utk/UtkMenuAdapter;
    :cond_0
    return-void

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/utk/Menu;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 337
    :cond_3
    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private getSelectedItem(I)Lcom/android/internal/telephony/cdma/utk/Item;
    .locals 4
    .parameter "position"

    .prologue
    .line 361
    const/4 v2, 0x0

    .line 362
    .local v2, item:Lcom/android/internal/telephony/cdma/utk/Item;
    iget-object v3, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    if-eqz v3, :cond_0

    .line 364
    :try_start_0
    iget-object v3, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/Item;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    :cond_0
    :goto_0
    return-object v2

    .line 365
    :catch_0
    move-exception v1

    .line 367
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "Invalid menu"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 371
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "Invalid menu"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 350
    const-string v0, "initFromIntent"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    if-eqz p1, :cond_0

    .line 352
    const-string v0, "STATE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/utk/UtkMenuActivity;->mState:I

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/utk/UtkMenuActivity;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAcceptUsersInput:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 355
    :cond_0
    const-string v0, "initFromIntent null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private sendResponse(I)V
    .locals 1
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 379
    invoke-direct {p0, p1, v0, v0}, Lcom/android/utk/UtkMenuActivity;->sendResponse(IIZ)V

    .line 380
    return-void
.end method

.method private sendResponse(IIZ)V
    .locals 5
    .parameter "resId"
    .parameter "itemId"
    .parameter "help"

    .prologue
    .line 383
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 384
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResponse resId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    const-string v1, "menu selection"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    const-string v1, "help"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 389
    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/utk/UtkMenuActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/utk/UtkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 391
    return-void
.end method

.method private startTimeOut()V
    .locals 4

    .prologue
    .line 310
    iget v0, p0, Lcom/android/utk/UtkMenuActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/android/utk/UtkMenuActivity;->cancelTimeOut()V

    .line 313
    iget-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 316
    :cond_0
    return-void
.end method


# virtual methods
.method isOnFlightMode()Z
    .locals 4

    .prologue
    .line 394
    const/4 v1, 0x0

    .line 396
    .local v1, mode:I
    :try_start_0
    iget-object v2, p0, Lcom/android/utk/UtkMenuActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 402
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "airlane mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "fail to get airlane mode"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    const/4 v1, 0x0

    goto :goto_0

    .line 403
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 119
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 121
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    .line 124
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/utk/UtkMenuActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 127
    iput-boolean v1, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    .line 129
    iget-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 238
    const v0, 0x7f060001

    invoke-interface {p1, v4, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 239
    const/4 v0, 0x3

    const/4 v1, 0x2

    const v2, 0x7f060002

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 240
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 231
    iget-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 165
    const-string v1, "onKeyDown"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/utk/UtkMenuActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mAcceptUsersInput:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-boolean v1, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    if-nez v1, :cond_0

    .line 184
    :goto_0
    return v0

    .line 170
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    packed-switch p1, :pswitch_data_0

    .line 184
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 173
    :pswitch_0
    iget v1, p0, Lcom/android/utk/UtkMenuActivity;->mState:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 175
    :pswitch_1
    invoke-direct {p0}, Lcom/android/utk/UtkMenuActivity;->cancelTimeOut()V

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    .line 177
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/android/utk/UtkMenuActivity;->sendResponse(I)V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 173
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 145
    const-string v1, "onListItemClick"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/utk/UtkMenuActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mAcceptUsersInput:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-boolean v1, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/utk/UtkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cdma/utk/Item;

    move-result-object v0

    .line 152
    .local v0, item:Lcom/android/internal/telephony/cdma/utk/Item;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    if-eqz v0, :cond_0

    .line 156
    const/16 v1, 0xb

    iget v2, v0, Lcom/android/internal/telephony/cdma/utk/Item;->id:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/utk/UtkMenuActivity;->sendResponse(IIZ)V

    .line 157
    iput-boolean v3, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    .line 158
    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 136
    const-string v0, "onNewIntent"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/android/utk/UtkMenuActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    .line 139
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 264
    iget-boolean v3, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    if-nez v3, :cond_0

    .line 286
    :goto_0
    return v2

    .line 267
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 286
    :cond_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-direct {p0}, Lcom/android/utk/UtkMenuActivity;->cancelTimeOut()V

    .line 270
    iput-boolean v4, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    .line 272
    const/16 v3, 0x16

    invoke-direct {p0, v3}, Lcom/android/utk/UtkMenuActivity;->sendResponse(I)V

    goto :goto_0

    .line 275
    :pswitch_2
    invoke-direct {p0}, Lcom/android/utk/UtkMenuActivity;->cancelTimeOut()V

    .line 276
    iput-boolean v4, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    .line 277
    invoke-virtual {p0}, Landroid/app/ListActivity;->getSelectedItemPosition()I

    move-result v0

    .line 278
    .local v0, position:I
    invoke-direct {p0, v0}, Lcom/android/utk/UtkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cdma/utk/Item;

    move-result-object v1

    .line 279
    .local v1, utkItem:Lcom/android/internal/telephony/cdma/utk/Item;
    if-eqz v1, :cond_1

    .line 283
    const/16 v3, 0xb

    iget v4, v1, Lcom/android/internal/telephony/cdma/utk/Item;->id:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/utk/UtkMenuActivity;->sendResponse(IIZ)V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 223
    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/utk/UtkMenuActivity;->appService:Lcom/android/utk/UtkAppService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/utk/UtkAppService;->indicateMenuVisibility(Z)V

    .line 225
    invoke-direct {p0}, Lcom/android/utk/UtkMenuActivity;->cancelTimeOut()V

    .line 226
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 245
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, helpVisible:Z
    const/4 v1, 0x0

    .line 249
    .local v1, mainVisible:Z
    iget v2, p0, Lcom/android/utk/UtkMenuActivity;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 250
    const/4 v1, 0x1

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    if-eqz v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iget-boolean v0, v2, Lcom/android/internal/telephony/cdma/utk/Menu;->helpAvailable:Z

    .line 256
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 257
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 259
    return v4
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 299
    const-string v0, "onRestoreInstanceState"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/utk/UtkMenuActivity;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAcceptUsersInput:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    const-string v0, "STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/utk/UtkMenuActivity;->mState:I

    .line 302
    const-string v0, "MENU"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/Menu;

    iput-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    .line 303
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 191
    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/utk/UtkMenuActivity;->isOnFlightMode()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 193
    const-string v0, "Utk can\'t be launched in flight mode"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/utk/UtkMenuActivity;->showTextToast(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 218
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/utk/UtkMenuActivity;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAcceptUsersInput:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/utk/UtkMenuActivity;->appService:Lcom/android/utk/UtkAppService;

    invoke-virtual {v0, v2}, Lcom/android/utk/UtkAppService;->indicateMenuVisibility(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/utk/UtkMenuActivity;->appService:Lcom/android/utk/UtkAppService;

    invoke-virtual {v0}, Lcom/android/utk/UtkAppService;->getMenu()Lcom/android/internal/telephony/cdma/utk/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    .line 202
    iget-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    if-nez v0, :cond_1

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/android/utk/UtkMenuActivity;->displayMenu()V

    .line 207
    invoke-direct {p0}, Lcom/android/utk/UtkMenuActivity;->startTimeOut()V

    .line 211
    iget-boolean v0, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    if-nez v0, :cond_2

    .line 212
    iput v2, p0, Lcom/android/utk/UtkMenuActivity;->mState:I

    .line 213
    iput-boolean v2, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/utk/UtkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 291
    const-string v0, "onSaveInstanceState"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/utk/UtkMenuActivity;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAcceptUsersInput:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    const-string v0, "STATE"

    iget v1, p0, Lcom/android/utk/UtkMenuActivity;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    const-string v0, "MENU"

    iget-object v1, p0, Lcom/android/utk/UtkMenuActivity;->mUtkMenu:Lcom/android/internal/telephony/cdma/utk/Menu;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 295
    return-void
.end method

.method showTextToast(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 407
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 408
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 409
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 410
    return-void
.end method
