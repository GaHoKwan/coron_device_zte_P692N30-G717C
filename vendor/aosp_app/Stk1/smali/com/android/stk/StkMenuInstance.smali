.class Lcom/android/stk/StkMenuInstance;
.super Ljava/lang/Object;
.source "StkMenuInstance.java"


# static fields
.field static final FINISH_CAUSE_FLIGHT_MODE:I = 0x2

.field static final FINISH_CAUSE_NO:I = 0x1

.field static final FINISH_CAUSE_NOT_AVAILABLE:I = 0x5

.field static final FINISH_CAUSE_NULL_MENU:I = 0x4

.field static final FINISH_CAUSE_NULL_SERVICE:I = 0x3

.field static final FINISH_CAUSE_SIM_REMOVED:I = 0x6

.field private static final LOGTAG:Ljava/lang/String; = "Stk-MI"

.field private static final MSG_ID_TIMEOUT:I = 0x1

.field static final STATE_END:I = 0x3

.field static final STATE_MAIN:I = 0x1

.field static final STATE_SECONDARY:I = 0x2


# instance fields
.field appService:Lcom/android/stk/StkAppService;

.field mAcceptUsersInput:Z

.field mContext:Landroid/content/Context;

.field protected mSendResp:Z

.field mSimId:I

.field mState:I

.field mStkMenu:Lcom/android/internal/telephony/cat/Menu;

.field mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object v1, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 110
    iput v0, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    .line 111
    iput-boolean v0, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 112
    iput-object v1, p0, Lcom/android/stk/StkMenuInstance;->mContext:Landroid/content/Context;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    .line 116
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuInstance;->appService:Lcom/android/stk/StkAppService;

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkMenuInstance;->mSendResp:Z

    .line 136
    new-instance v0, Lcom/android/stk/StkMenuInstance$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuInstance$1;-><init>(Lcom/android/stk/StkMenuInstance;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuInstance;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method private hasIccCard(I)Z
    .locals 6
    .parameter "slot"

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 570
    .local v0, bRet:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 571
    .local v2, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 572
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 588
    .end local v2           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string v3, "Stk-MI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasIccCard - sim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return v0

    .line 574
    :catch_0
    move-exception v1

    .line 575
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private initFromIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 443
    const/4 v0, 0x1

    .line 444
    .local v0, nothing:Z
    if-eqz p1, :cond_1

    .line 445
    const-string v1, "STATE"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    .line 446
    const-string v1, "sim id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    .line 447
    const-string v1, "Stk-MI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget v1, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 452
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method cancelTimeOut()V
    .locals 3

    .prologue
    .line 365
    const-string v0, "Stk-MI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTimeOut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/android/stk/StkMenuInstance;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    return-void
.end method

.method displayMenu(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/app/ListActivity;)V
    .locals 6
    .parameter "iconView"
    .parameter "textView"
    .parameter "list"

    .prologue
    const/4 v4, 0x0

    .line 382
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_5

    .line 384
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 385
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    :goto_0
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    if-nez v3, :cond_2

    .line 391
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 393
    const/high16 v2, 0x7f06

    .line 407
    .local v2, resId:I
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 415
    .end local v2           #resId:I
    :goto_1
    const/4 v1, 0x0

    .line 416
    .local v1, i:I
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 418
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 420
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 421
    const-string v3, "Stk-MI"

    const-string v4, "Remove null item from menu.items"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 388
    .end local v1           #i:I
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 409
    :cond_1
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 412
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 424
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 426
    :cond_4
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 428
    const-string v3, "Stk-MI"

    const-string v4, "should not display the SET_UP_MENU because no item"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .end local v1           #i:I
    :cond_5
    :goto_3
    return-void

    .line 432
    .restart local v1       #i:I
    :cond_6
    new-instance v0, Lcom/android/stk/StkMenuAdapter;

    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    iget-object v5, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    invoke-direct {v0, p3, v3, v4, v5}, Lcom/android/stk/StkMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[BZ)V

    .line 435
    .local v0, adapter:Lcom/android/stk/StkMenuAdapter;
    invoke-virtual {p3, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 437
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget v3, v3, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-virtual {p3, v3}, Landroid/app/ListActivity;->setSelection(I)V

    goto :goto_3
.end method

.method getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;
    .locals 5
    .parameter "position"

    .prologue
    .line 458
    const/4 v2, 0x0

    .line 459
    .local v2, item:Lcom/android/internal/telephony/cat/Item;
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_0

    .line 461
    :try_start_0
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 472
    :cond_0
    :goto_0
    return-object v2

    .line 462
    :catch_0
    move-exception v1

    .line 464
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "Stk-MI"

    const-string v4, "Invalid menu"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 468
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "Stk-MI"

    const-string v4, "Invalid menu"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    const-string v2, "Stk-MI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleKeyDown, mAcceptUsersInput: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-boolean v2, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    if-nez v2, :cond_0

    .line 221
    :goto_0
    return v0

    .line 205
    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 221
    goto :goto_0

    .line 207
    :pswitch_0
    const-string v2, "Stk-MI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleKeyDown - KEYCODE_BACK - mState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 210
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/stk/StkMenuInstance;->cancelTimeOut()V

    .line 211
    iput-boolean v1, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 212
    const-string v1, "Stk-MI"

    const-string v2, "onKeyDown - KEYCODE_BACK - STATE_SECONDARY"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuInstance;->sendResponse(I)V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 208
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public handleListItemClick(ILandroid/widget/ProgressBar;)V
    .locals 7
    .parameter "position"
    .parameter "bar"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 172
    iget-boolean v2, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    if-nez v2, :cond_0

    .line 173
    const-string v2, "Stk-MI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleListItemClick, mAcceptUsersInput: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/stk/StkMenuInstance;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v1

    .line 178
    .local v1, item:Lcom/android/internal/telephony/cat/Item;
    if-nez v1, :cond_1

    .line 179
    const-string v2, "Stk-MI"

    const-string v3, "handleListItemClick, item is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_1
    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    if-ne v2, v6, :cond_2

    .line 186
    const-string v2, "Stk-MI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast intent to clear the sim\'s DISPLAY_TEXT dialog, mSimId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.clear_display_text"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "SIM_ID"

    iget v3, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    iget-object v2, p0, Lcom/android/stk/StkMenuInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const/16 v2, 0xb

    iget v3, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/stk/StkMenuInstance;->sendResponse(IIZ)V

    .line 192
    iput-boolean v5, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 193
    const-string v2, "Stk-MI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onListItemClick, id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mAcceptUsersInput: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 195
    invoke-virtual {p2, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0
.end method

.method public handleNewIntent(Landroid/content/Intent;Z)Z
    .locals 4
    .parameter "intent"
    .parameter "access_user_input"

    .prologue
    .line 161
    const/4 v0, 0x1

    .line 163
    .local v0, nothing:Z
    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuInstance;->initFromIntent(Landroid/content/Intent;)Z

    move-result v0

    .line 164
    iput-boolean p2, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/stk/StkMenuInstance;->mSendResp:Z

    .line 166
    const-string v1, "Stk-MI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNewIntent, return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAcceptUsersInput: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return v0
.end method

.method public handleOnCreate(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "access_user_input"

    .prologue
    .line 150
    const/4 v0, 0x1

    .line 152
    .local v0, nothing:Z
    iput-object p1, p0, Lcom/android/stk/StkMenuInstance;->mContext:Landroid/content/Context;

    .line 153
    invoke-direct {p0, p2}, Lcom/android/stk/StkMenuInstance;->initFromIntent(Landroid/content/Intent;)Z

    move-result v0

    .line 154
    iput-boolean p3, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 155
    const-string v1, "Stk-MI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOnCreate, return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAcceptUsersInput: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return v0
.end method

.method public handleOptionItemSelected(Landroid/view/MenuItem;Landroid/widget/ProgressBar;)Z
    .locals 8
    .parameter "item"
    .parameter "bar"

    .prologue
    const/16 v7, 0xb

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 324
    iget-boolean v5, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    if-nez v5, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v3

    .line 327
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v3, v4

    .line 361
    goto :goto_0

    .line 329
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/stk/StkMenuInstance;->cancelTimeOut()V

    .line 330
    iput-boolean v4, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 332
    const/16 v4, 0x16

    invoke-virtual {p0, v4}, Lcom/android/stk/StkMenuInstance;->sendResponse(I)V

    goto :goto_0

    .line 335
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/stk/StkMenuInstance;->cancelTimeOut()V

    .line 336
    iput-boolean v4, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, position:I
    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuInstance;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v2

    .line 340
    .local v2, stkItem:Lcom/android/internal/telephony/cat/Item;
    if-eqz v2, :cond_2

    .line 344
    iget v4, v2, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {p0, v7, v4, v3}, Lcom/android/stk/StkMenuInstance;->sendResponse(IIZ)V

    goto :goto_0

    .line 347
    .end local v1           #position:I
    .end local v2           #stkItem:Lcom/android/internal/telephony/cat/Item;
    :pswitch_3
    iget-object v5, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v5, :cond_0

    .line 348
    iget-object v5, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    iget-object v6, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget v6, v6, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    .line 349
    .local v0, defaultItem:Lcom/android/internal/telephony/cat/Item;
    if-eqz v0, :cond_0

    .line 352
    iget v5, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {p0, v7, v5, v4}, Lcom/android/stk/StkMenuInstance;->sendResponse(IIZ)V

    .line 354
    iput-boolean v4, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 355
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 356
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handlePause()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/stk/StkMenuInstance;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(ZI)V

    .line 285
    invoke-virtual {p0}, Lcom/android/stk/StkMenuInstance;->cancelTimeOut()V

    .line 286
    return-void
.end method

.method public handlePrepareOptionMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, helpVisible:Z
    const/4 v2, 0x0

    .line 293
    .local v2, mainVisible:Z
    iget v3, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 294
    const/4 v2, 0x1

    .line 296
    :cond_0
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_1

    .line 297
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v0, v3, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 300
    :cond_1
    if-eqz v2, :cond_2

    .line 301
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f060006

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 303
    :cond_2
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 305
    if-eqz v0, :cond_3

    .line 306
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f060007

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 308
    :cond_3
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 310
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_5

    .line 311
    iget-object v3, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget v4, v4, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    .line 312
    .local v1, item:Lcom/android/internal/telephony/cat/Item;
    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 313
    :cond_4
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 319
    .end local v1           #item:Lcom/android/internal/telephony/cat/Item;
    :cond_5
    :goto_0
    return v5

    .line 315
    .restart local v1       #item:Lcom/android/internal/telephony/cat/Item;
    :cond_6
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 316
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public handleResume(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/app/ListActivity;Landroid/widget/ProgressBar;)I
    .locals 4
    .parameter "iconView"
    .parameter "textView"
    .parameter "list"
    .parameter "bar"

    .prologue
    const/4 v3, 0x1

    .line 226
    const/4 v0, 0x1

    .line 229
    .local v0, nothing:I
    invoke-virtual {p0}, Lcom/android/stk/StkMenuInstance;->isOnFlightMode()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 230
    const-string v1, "Stk-MI"

    const-string v2, "flight mode - don\'t make stk be visible"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x2

    .line 278
    :goto_0
    const-string v1, "Stk-MI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResume, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return v0

    .line 234
    :cond_0
    iget v1, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-direct {p0, v1}, Lcom/android/stk/StkMenuInstance;->hasIccCard(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    const-string v1, "Stk-MI"

    const-string v2, "SIM card was removed"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x6

    .line 237
    goto :goto_0

    .line 239
    :cond_1
    iget v1, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuInstance;->isOnLockMode(I)Z

    move-result v1

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuInstance;->isRadioOnState(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 240
    :cond_2
    const-string v1, "Stk-MI"

    const-string v2, "radio off - don\'t make stk be visible"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x5

    .line 242
    goto :goto_0

    .line 244
    :cond_3
    iget-object v1, p0, Lcom/android/stk/StkMenuInstance;->appService:Lcom/android/stk/StkAppService;

    if-nez v1, :cond_4

    .line 245
    const-string v1, "Stk-MI"

    const-string v2, "can not launch stk menu \'cause null StkAppService"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x3

    .line 247
    goto :goto_0

    .line 257
    :cond_4
    iget-object v1, p0, Lcom/android/stk/StkMenuInstance;->appService:Lcom/android/stk/StkAppService;

    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v1, v3, v2}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(ZI)V

    .line 258
    iget-object v1, p0, Lcom/android/stk/StkMenuInstance;->appService:Lcom/android/stk/StkAppService;

    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/stk/StkAppService;->getMenu(I)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 259
    iget-object v1, p0, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-nez v1, :cond_5

    .line 260
    const/4 v0, 0x4

    .line 261
    goto :goto_0

    .line 263
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/stk/StkMenuInstance;->displayMenu(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/app/ListActivity;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/stk/StkMenuInstance;->startTimeOut()V

    .line 268
    iget-boolean v1, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    if-nez v1, :cond_6

    .line 269
    iput v3, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    .line 270
    iput-boolean v3, p0, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 274
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 275
    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method isOnFlightMode()Z
    .locals 5

    .prologue
    .line 531
    const/4 v1, 0x0

    .line 533
    .local v1, mode:I
    :try_start_0
    iget-object v2, p0, Lcom/android/stk/StkMenuInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 539
    :goto_0
    const-string v2, "Stk-MI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airlane mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "Stk-MI"

    const-string v3, "fail to get airlane mode"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/4 v1, 0x0

    goto :goto_0

    .line 540
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method isOnLockMode(I)Z
    .locals 4
    .parameter "sim_id"

    .prologue
    .line 517
    const/4 v0, 0x0

    .line 519
    .local v0, simState:I
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v0

    .line 523
    const-string v1, "Stk-MI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    .line 525
    :cond_0
    const/4 v1, 0x1

    .line 527
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isRadioOnState(I)Z
    .locals 6
    .parameter "sim_id"

    .prologue
    .line 544
    const/4 v2, 0x1

    .line 545
    .local v2, radio_on:Z
    const-string v3, "Stk-MI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRadioOnState check = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 549
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 551
    const-string v3, "Stk-MI"

    const-string v4, "isRadioOnState MTK_GEMINI_SUPPORT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v2

    .line 556
    const-string v3, "Stk-MI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRadioOnState - SET_UP_MENU radio_on["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 560
    const-string v3, "Stk-MI"

    const-string v4, "isRadioOnState - SET_UP_MENU Exception happen ===="

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendResponse(I)V
    .locals 1
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 476
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/stk/StkMenuInstance;->sendResponse(IIZ)V

    .line 477
    return-void
.end method

.method sendResponse(IIZ)V
    .locals 7
    .parameter "resId"
    .parameter "itemId"
    .parameter "help"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 485
    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 487
    const-string v2, "Stk-MI"

    const-string v3, "sim id is invalid"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :goto_0
    return-void

    .line 491
    :cond_0
    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    if-eq v5, v2, :cond_1

    const/16 v2, 0x16

    if-ne v2, p1, :cond_1

    .line 492
    const-string v2, "Stk-MI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore response of End Session in mState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_1
    const-string v2, "Stk-MI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendResponse resID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] itemId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] help["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iput-boolean v6, p0, Lcom/android/stk/StkMenuInstance;->mSendResp:Z

    .line 498
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 499
    .local v0, args:Landroid/os/Bundle;
    new-array v1, v5, [I

    .line 500
    .local v1, op:[I
    const/4 v2, 0x0

    aput v5, v1, v2

    .line 501
    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    aput v2, v1, v6

    .line 502
    const-string v2, "op"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 503
    const-string v2, "response id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 504
    const-string v2, "menu selection"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 505
    const-string v2, "help"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 506
    iget-object v2, p0, Lcom/android/stk/StkMenuInstance;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/stk/StkMenuInstance;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/stk/StkAppService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method showTextToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 511
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 512
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 513
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 514
    return-void
.end method

.method startTimeOut()V
    .locals 4

    .prologue
    .line 370
    iget v0, p0, Lcom/android/stk/StkMenuInstance;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/android/stk/StkMenuInstance;->cancelTimeOut()V

    .line 373
    const-string v0, "Stk-MI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTimeOut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/android/stk/StkMenuInstance;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkMenuInstance;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 377
    :cond_0
    return-void
.end method
