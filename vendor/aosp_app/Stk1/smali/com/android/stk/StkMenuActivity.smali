.class public Lcom/android/stk/StkMenuActivity;
.super Landroid/app/ListActivity;
.source "StkMenuActivity.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Stk-MA "


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

    .line 94
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 95
    new-instance v0, Lcom/android/stk/StkMenuInstance;

    invoke-direct {v0}, Lcom/android/stk/StkMenuInstance;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    .line 96
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 97
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    .line 98
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    .line 104
    new-instance v0, Lcom/android/stk/StkMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuActivity$1;-><init>(Lcom/android/stk/StkMenuActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    new-instance v0, Lcom/android/stk/StkMenuActivity$2;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuActivity$2;-><init>(Lcom/android/stk/StkMenuActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/StkMenuActivity;)Lcom/android/stk/StkMenuInstance;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    return-object v0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 247
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 249
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 263
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 251
    :pswitch_0
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {v3}, Lcom/android/stk/StkMenuInstance;->cancelTimeOut()V

    .line 252
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/stk/StkMenuInstance;->mAcceptUsersInput:Z

    .line 253
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lcom/android/stk/StkMenuInstance;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v1

    .line 254
    .local v1, stkItem:Lcom/android/internal/telephony/cat/Item;
    if-eqz v1, :cond_0

    .line 258
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    const/16 v4, 0xb

    iget v5, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/stk/StkMenuInstance;->sendResponse(IIZ)V

    goto :goto_0

    .line 249
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

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const-string v0, "Stk-MA "

    const-string v1, "onCreate+"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 136
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 138
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    .line 140
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    .line 141
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/stk/StkMenuInstance;->handleOnCreate(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string v0, "Stk-MA "

    const-string v1, "finish!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    const-string v0, "Stk-MA "

    const-string v1, "onCreate-"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
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

    .line 268
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 269
    const v0, 0x7f060006

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 270
    const/4 v0, 0x2

    invoke-interface {p1, v1, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 271
    const/4 v0, 0x4

    invoke-interface {p1, v1, v0, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 272
    return v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 227
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    const-string v0, "Stk-MA "

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {v1, p1, p2}, Lcom/android/stk/StkMenuInstance;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 181
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 184
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
    .line 173
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 175
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p3, v1}, Lcom/android/stk/StkMenuInstance;->handleListItemClick(ILandroid/widget/ProgressBar;)V

    .line 176
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 163
    const-string v0, "Stk-MA "

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/stk/StkMenuInstance;->handleNewIntent(Landroid/content/Intent;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const-string v0, "Stk-MA "

    const-string v1, "finish!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 169
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1, v2}, Lcom/android/stk/StkMenuInstance;->handleOptionItemSelected(Landroid/view/MenuItem;Landroid/widget/ProgressBar;)Z

    move-result v0

    .line 285
    .local v0, result:Z
    const-string v1, "Stk-MA "

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

    .line 286
    if-eqz v0, :cond_0

    .line 289
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
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 220
    const-string v0, "Stk-MA "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget v2, v2, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {v0}, Lcom/android/stk/StkMenuInstance;->handlePause()V

    .line 222
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 279
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {v0, p1}, Lcom/android/stk/StkMenuInstance;->handlePrepareOptionMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    const-string v1, "STATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/stk/StkMenuInstance;->mState:I

    .line 301
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    const-string v0, "MENU"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Menu;

    iput-object v0, v1, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 302
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 191
    const-string v1, "Stk-MA "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget v3, v3, Lcom/android/stk/StkMenuInstance;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v3, p0, v4}, Lcom/android/stk/StkMenuInstance;->handleResume(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/app/ListActivity;Landroid/widget/ProgressBar;)I

    move-result v0

    .line 193
    .local v0, res:I
    packed-switch v0, :pswitch_data_0

    .line 215
    :goto_0
    return-void

    .line 196
    :pswitch_0
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060042

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/stk/StkMenuInstance;->showTextToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 200
    :pswitch_1
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060040

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/stk/StkMenuInstance;->showTextToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 207
    :pswitch_3
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060043

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/stk/StkMenuInstance;->showTextToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 211
    :pswitch_4
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060044

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/stk/StkMenuInstance;->showTextToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 193
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
    .line 294
    const-string v0, "STATE"

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget v1, v1, Lcom/android/stk/StkMenuInstance;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    const-string v0, "MENU"

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;

    iget-object v1, v1, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 296
    return-void
.end method
