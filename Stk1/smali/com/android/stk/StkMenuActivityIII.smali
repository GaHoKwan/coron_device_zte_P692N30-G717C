.class public Lcom/android/stk/StkMenuActivityIII;
.super Landroid/app/ListActivity;
.source "StkMenuActivityIII.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Stk2-MA "


# instance fields
.field private mMenuInstance:Lcom/android/stk/StkMenuInstance;

.field private final mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mProgressView:Landroid/widget/ProgressBar;

.field private final mSIMStateChangeFilter:Landroid/content/IntentFilter;

.field private final mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTitleIconView:Landroid/widget/ImageView;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 102
    new-instance v0, Lcom/android/stk/StkMenuInstance;

    invoke-direct {v0}, Lcom/android/stk/StkMenuInstance;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    .line 103
    iput-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mTitleTextView:Landroid/widget/TextView;

    .line 104
    iput-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mTitleIconView:Landroid/widget/ImageView;

    .line 105
    iput-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mProgressView:Landroid/widget/ProgressBar;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    .line 111
    new-instance v0, Lcom/android/stk/StkMenuActivityIII$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuActivityIII$1;-><init>(Lcom/android/stk/StkMenuActivityIII;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    new-instance v0, Lcom/android/stk/StkMenuActivityIII$2;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuActivityIII$2;-><init>(Lcom/android/stk/StkMenuActivityIII;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/StkMenuActivityIII;)Lcom/android/stk/StkMenuInstance;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    return-object v0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 253
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 255
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 269
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 257
    :pswitch_0
    iget-object v3, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {v3}, Lcom/android/stk/StkMenuInstance;->cancelTimeOut()V

    .line 258
    iget-object v3, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 259
    iget-object v3, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lcom/android/stk/StkMenuInstance;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v1

    .line 260
    .local v1, stkItem:Lcom/android/internal/telephony/cat/Item;
    if-eqz v1, :cond_0

    .line 264
    iget-object v3, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    const/16 v4, 0xb

    iget v5, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/stk/StkMenuInstance;->sendResponse(IIZ)V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const-string v0, "Stk2-MA "

    const-string v1, "onCreate+"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 142
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 144
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mTitleTextView:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mTitleIconView:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mProgressView:Landroid/widget/ProgressBar;

    .line 147
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/stk/StkMenuInstance;->handleOnCreate(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, "Stk2-MA "

    const-string v1, "finish!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    const-string v0, "Stk2-MA "

    const-string v1, "onCreate-"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const v4, 0x7f060007

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 274
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 275
    const v0, 0x7f060006

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 276
    const/4 v0, 0x2

    invoke-interface {p1, v1, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 277
    const/4 v0, 0x4

    invoke-interface {p1, v1, v0, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 278
    return v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 233
    iget-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    const-string v0, "Stk2-MA "

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {v1, p1, p2}, Lcom/android/stk/StkMenuInstance;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 187
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 190
    .end local v0           #result:Z
    :goto_0
    return v0

    .restart local v0       #result:Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 179
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 181
    iget-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p3, v1}, Lcom/android/stk/StkMenuInstance;->handleListItemClick(ILandroid/widget/ProgressBar;)V

    .line 182
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 169
    const-string v0, "Stk2-MA "

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/stk/StkMenuInstance;->handleNewIntent(Landroid/content/Intent;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string v0, "Stk2-MA "

    const-string v1, "finish!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 175
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivityIII;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1, v2}, Lcom/android/stk/StkMenuInstance;->handleOptionItemSelected(Landroid/view/MenuItem;Landroid/widget/ProgressBar;)Z

    move-result v0

    .line 291
    .local v0, result:Z
    const-string v1, "Stk2-MA "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    if-eqz v0, :cond_0

    .line 295
    .end local v0           #result:Z
    :goto_0
    return v0

    .restart local v0       #result:Z
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 226
    const-string v0, "Stk2-MA "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget v2, v2, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {v0}, Lcom/android/stk/StkMenuInstance;->handlePause()V

    .line 228
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 285
    iget-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {v0, p1}, Lcom/android/stk/StkMenuInstance;->handlePrepareOptionMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    const-string v1, "STATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/stk/StkMenuInstance;->mState:I

    .line 307
    iget-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    const-string v0, "MENU"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Menu;

    iput-object v0, v1, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 308
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 197
    const-string v1, "Stk2-MA "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget v3, v3, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivityIII;->mTitleIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/stk/StkMenuActivityIII;->mTitleTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/stk/StkMenuActivityIII;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v3, p0, v4}, Lcom/android/stk/StkMenuInstance;->handleResume(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/app/ListActivity;Landroid/widget/ProgressBar;)I

    move-result v0

    .line 199
    .local v0, res:I
    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060042

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/stk/StkMenuInstance;->showTextToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060040

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/stk/StkMenuInstance;->showTextToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 210
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 213
    :pswitch_3
    iget-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060043

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/stk/StkMenuInstance;->showTextToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 217
    :pswitch_4
    iget-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060044

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/stk/StkMenuInstance;->showTextToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 300
    const-string v0, "STATE"

    iget-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget v1, v1, Lcom/android/stk/StkMenuInstance;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    const-string v0, "MENU"

    iget-object v1, p0, Lcom/android/stk/StkMenuActivityIII;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget-object v1, v1, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 302
    return-void
.end method
