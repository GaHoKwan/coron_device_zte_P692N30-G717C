.class public Lcom/android/stk/StkDialogInstance;
.super Ljava/lang/Object;
.source "StkDialogInstance.java"


# static fields
.field public static final CANCEL_BUTTON:I = 0x7f070012

.field private static final LOGTAG:Ljava/lang/String; = "Stk-DI "

.field protected static final MIN_LENGTH:I = 0x6

.field protected static final MIN_WIDTH:I = 0xaa

.field private static final MSG_ID_TIMEOUT:I = 0x1

.field public static final OK_BUTTON:I = 0x7f070006


# instance fields
.field appService:Lcom/android/stk/StkAppService;

.field protected mSimId:I

.field mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field mTimeoutHandler:Landroid/os/Handler;

.field protected mbSendResp:Z

.field parent:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkDialogInstance;->mbSendResp:Z

    .line 92
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    .line 94
    new-instance v0, Lcom/android/stk/StkDialogInstance$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkDialogInstance$1;-><init>(Lcom/android/stk/StkDialogInstance;)V

    iput-object v0, p0, Lcom/android/stk/StkDialogInstance;->mTimeoutHandler:Landroid/os/Handler;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    return-void
.end method


# virtual methods
.method protected cancelTimeOut()V
    .locals 3

    .prologue
    .line 252
    const-string v0, "Stk-DI "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTimeOut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    return-void
.end method

.method protected handleOnClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/16 v6, 0xd

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, input:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 133
    :sswitch_0
    const-string v2, "Stk-DI "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OK Clicked! isCurCmdSetupCall["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    iget v5, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/stk/StkAppService;->isCurCmdSetupCall(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], mSimId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    iget v3, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v2, v3}, Lcom/android/stk/StkAppService;->isCurCmdSetupCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const-string v2, "Stk-DI "

    const-string v3, "stk call sendBroadcast(STKCALL_REGISTER_SPEECH_INFO)"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.stk.STKCALL_REGISTER_SPEECH_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/stk/StkDialogInstance;->parent:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v6, v2}, Lcom/android/stk/StkDialogInstance;->sendResponse(IZ)V

    .line 140
    iget-object v2, p0, Lcom/android/stk/StkDialogInstance;->parent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 143
    :sswitch_1
    const-string v2, "Stk-DI "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel Clicked!, mSimId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v2, 0x0

    invoke-virtual {p0, v6, v2}, Lcom/android/stk/StkDialogInstance;->sendResponse(IZ)V

    .line 145
    iget-object v2, p0, Lcom/android/stk/StkDialogInstance;->parent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 131
    :sswitch_data_0
    .sparse-switch
        0x7f070006 -> :sswitch_0
        0x7f070012 -> :sswitch_1
    .end sparse-switch
.end method

.method protected handleOnDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 187
    const-string v0, "Stk-DI "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy - before Send CONFIRM false mbSendResp["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkDialogInstance;->mbSendResp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-boolean v0, p0, Lcom/android/stk/StkDialogInstance;->mbSendResp:Z

    if-nez v0, :cond_0

    .line 189
    const-string v0, "Stk-DI "

    const-string v1, "onDestroy - Send CONFIRM false"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v3}, Lcom/android/stk/StkDialogInstance;->sendResponse(IZ)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v0, v3, v1}, Lcom/android/stk/StkAppService;->indicateDialogVisibility(ZI)V

    .line 195
    :cond_1
    const-string v0, "Stk-DI "

    const-string v1, "onDestroy-"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method protected handleOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 152
    packed-switch p1, :pswitch_data_0

    .line 159
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 154
    :pswitch_0
    const-string v0, "Stk-DI "

    const-string v1, "onKeyDown - KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/stk/StkDialogInstance;->sendResponse(I)V

    .line 156
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->parent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected handleOnNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 117
    const-string v0, "Stk-DI "

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "Stk-DI "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent - mbSendResp["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkDialogInstance;->mbSendResp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/stk/StkDialogInstance;->initFromIntent(Landroid/content/Intent;)V

    .line 121
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->parent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 125
    :cond_0
    return-void
.end method

.method protected handleOnPause()V
    .locals 3

    .prologue
    .line 178
    const-string v0, "Stk-DI "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->indicateDialogVisibility(ZI)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkDialogInstance;->cancelTimeOut()V

    .line 183
    return-void
.end method

.method protected handleOnResume()V
    .locals 4

    .prologue
    .line 164
    const-string v0, "Stk-DI "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume - mbSendResp["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkDialogInstance;->mbSendResp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "Stk-DI "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stk_Performance time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->indicateDialogVisibility(ZI)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkDialogInstance;->startTimeOut()V

    .line 174
    return-void
.end method

.method protected initFromIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 243
    const-string v0, "sim id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    .line 248
    :goto_0
    const-string v0, "Stk-DI "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFromIntent - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkDialogInstance;->parent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected sendResponse(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/stk/StkDialogInstance;->sendResponse(IZ)V

    .line 237
    return-void
.end method

.method protected sendResponse(IZ)V
    .locals 8
    .parameter "resId"
    .parameter "confirmed"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 199
    iget v3, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 201
    const-string v3, "Stk-DI "

    const-string v4, "sim id is invalid"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v3

    if-nez v3, :cond_2

    .line 206
    const-string v3, "Stk-DI "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore response: id is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v3

    iget v4, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v3, v4}, Lcom/android/stk/StkAppService;->haveEndSession(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 212
    const-string v3, "Stk-DI "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StkAppService is null, Ignore response, id is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_3
    const-string v3, "Stk-DI "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendResponse resID["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] confirmed["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iput-boolean v7, p0, Lcom/android/stk/StkDialogInstance;->mbSendResp:Z

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, args:Landroid/os/Bundle;
    new-array v1, v6, [I

    .line 220
    .local v1, op:[I
    const/4 v3, 0x0

    aput v6, v1, v3

    .line 221
    iget v3, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    aput v3, v1, v7

    .line 222
    const-string v3, "op"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 223
    const-string v3, "response id"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string v3, "confirm"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v2

    .line 229
    .local v2, service:Lcom/android/stk/StkAppService;
    if-eqz v2, :cond_0

    .line 230
    iget v3, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v2, v6, v0, v3}, Lcom/android/stk/StkAppService;->sendMessageToServiceHandler(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method protected startTimeOut()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 258
    invoke-virtual {p0}, Lcom/android/stk/StkDialogInstance;->cancelTimeOut()V

    .line 259
    iget-object v1, p0, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v1}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    .line 262
    .local v0, dialogDuration:I
    iget-object v1, p0, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkDialogInstance;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 266
    :cond_0
    if-nez v0, :cond_1

    .line 267
    const v0, 0x9c40

    .line 269
    :cond_1
    const-string v1, "Stk-DI "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTimeOut: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkDialogInstance;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/android/stk/StkDialogInstance;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/stk/StkDialogInstance;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
