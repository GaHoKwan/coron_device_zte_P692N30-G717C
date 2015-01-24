.class public Lcom/android/stk/StkInputInstance;
.super Ljava/lang/Object;
.source "StkInputInstance.java"


# static fields
.field private static final DELAY_TIME:I = 0x12c

.field static final LARGE_FONT_FACTOR:F = 2.0f

.field private static final LOGTAG:Ljava/lang/String; = "Stk-IA "

.field static final MSG_ID_FINISH:I = 0x2

.field static final MSG_ID_TIMEOUT:I = 0x1

.field static final NORMAL_FONT_FACTOR:F = 1.0f

.field static final NO_STR_RESPONSE:Ljava/lang/String; = "NO"

.field static final SMALL_FONT_FACTOR:F = 0.0f

.field static final STATE_TEXT:I = 0x1

.field static final STATE_YES_NO:I = 0x2

.field static final YES_STR_RESPONSE:Ljava/lang/String; = "YES"


# instance fields
.field appService:Lcom/android/stk/StkAppService;

.field mContext:Landroid/content/Context;

.field mSimId:I

.field mState:I

.field mStkInput:Lcom/android/internal/telephony/cat/Input;

.field mTimeoutHandler:Landroid/os/Handler;

.field mbSendResp:Z

.field parent:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    .line 119
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkInputInstance;->appService:Lcom/android/stk/StkAppService;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkInputInstance;->mbSendResp:Z

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkInputInstance;->mSimId:I

    .line 125
    new-instance v0, Lcom/android/stk/StkInputInstance$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkInputInstance$1;-><init>(Lcom/android/stk/StkInputInstance;)V

    iput-object v0, p0, Lcom/android/stk/StkInputInstance;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method private getFontSizeFactor(Lcom/android/internal/telephony/cat/FontSize;)F
    .locals 2
    .parameter "size"

    .prologue
    .line 359
    const/4 v1, 0x3

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 362
    .local v0, fontSizes:[F
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    return v1

    .line 359
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private verfiyTypedText(Landroid/widget/EditText;)Z
    .locals 2
    .parameter "edit"

    .prologue
    .line 281
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v1, v1, Lcom/android/internal/telephony/cat/Input;->minLen:I

    if-ge v0, v1, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method cancelTimeOut()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/stk/StkInputInstance;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    iget-object v0, p0, Lcom/android/stk/StkInputInstance;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    return-void
.end method

.method delayFinish()V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/stk/StkInputInstance;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkInputInstance;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 302
    return-void
.end method

.method handleAfterTextChanged(Landroid/text/Editable;Landroid/widget/EditText;)V
    .locals 6
    .parameter "s"
    .parameter "edit"

    .prologue
    const/16 v5, 0x77

    .line 262
    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 263
    .local v1, iStart:I
    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 264
    .local v0, iEnd:I
    iget-object v3, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 265
    iget-object v3, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v3, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    if-le v3, v5, :cond_0

    .line 266
    iget-object v3, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iput v5, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 268
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v4, v4, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    if-le v3, v4, :cond_2

    .line 269
    iget-object v3, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v3, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {p1, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 270
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    const/4 v2, 0x0

    .line 272
    .local v2, temp:I
    if-lez v1, :cond_1

    .line 273
    iget-object v3, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v3, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    if-le v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v2, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 275
    :cond_1
    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 277
    .end local v2           #temp:I
    :cond_2
    return-void

    .line 273
    .restart local v2       #temp:I
    :cond_3
    add-int/lit8 v2, v1, -0x1

    goto :goto_0
.end method

.method handleBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 253
    return-void
.end method

.method public handleClick(Landroid/view/View;Landroid/widget/EditText;)Z
    .locals 5
    .parameter "v"
    .parameter "edit"

    .prologue
    .line 145
    const/4 v1, 0x1

    .line 146
    .local v1, result:Z
    const/4 v0, 0x0

    .line 148
    .local v0, input:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 167
    :goto_0
    :pswitch_0
    const-string v3, "Stk-IA "

    const-string v4, "handleClick, ready to response"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v4}, Lcom/android/stk/StkInputInstance;->sendResponse(ILjava/lang/String;Z)V

    move v2, v1

    .line 169
    .end local v1           #result:Z
    .local v2, result:I
    :goto_1
    return v2

    .line 151
    .end local v2           #result:I
    .restart local v1       #result:Z
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/stk/StkInputInstance;->verfiyTypedText(Landroid/widget/EditText;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    const/4 v1, 0x0

    .line 153
    const-string v3, "Stk-IA "

    const-string v4, "handleClick, invalid text"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 154
    .restart local v2       #result:I
    goto :goto_1

    .line 156
    .end local v2           #result:I
    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    goto :goto_0

    .line 160
    :pswitch_2
    const-string v0, "YES"

    .line 161
    goto :goto_0

    .line 163
    :pswitch_3
    const-string v0, "NO"

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x7f070006
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method handleConfigInputDisplay(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .parameter "prompt"
    .parameter "edit"
    .parameter "numOfCharsView"
    .parameter "inTypeView"
    .parameter "YN"
    .parameter "Normal"

    .prologue
    const/4 v6, 0x1

    .line 305
    const v0, 0x7f06000f

    .line 306
    .local v0, inTypeId:I
    iget-object v5, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v4, v5, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 308
    .local v4, promptText:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    if-ne v5, v6, :cond_0

    .line 309
    const-string v4, ""

    .line 311
    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget v5, p0, Lcom/android/stk/StkInputInstance;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 351
    :goto_0
    iget-object v5, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    if-eqz v5, :cond_1

    .line 352
    invoke-static {}, Lcom/android/stk/StkDigitsKeyListener;->getInstance()Lcom/android/stk/StkDigitsKeyListener;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 353
    const v0, 0x7f060010

    .line 355
    :cond_1
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 356
    return-void

    .line 316
    :pswitch_0
    iget-object v5, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v2, v5, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 317
    .local v2, maxLen:I
    iget-object v5, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v3, v5, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 319
    .local v3, minLen:I
    iget-object v5, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    if-ne v5, v6, :cond_2

    .line 320
    iget-object v5, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget v5, v5, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    const/16 v6, 0x77

    if-le v5, v6, :cond_2

    .line 321
    iget-object v5, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    const/16 v2, 0x77

    iput v2, v5, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 325
    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, lengthLimit:Ljava/lang/String;
    if-eq v2, v3, :cond_3

    .line 327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    :cond_3
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v5, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/Input;->echo:Z

    if-nez v5, :cond_4

    .line 332
    const/16 v5, 0x81

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 335
    :cond_4
    iget-object v5, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 336
    iget-object v5, p0, Lcom/android/stk/StkInputInstance;->mStkInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 339
    :cond_5
    const-string v5, ""

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    .line 345
    .end local v1           #lengthLimit:Ljava/lang/String;
    .end local v2           #maxLen:I
    .end local v3           #minLen:I
    :pswitch_1
    const/4 v5, 0x0

    invoke-virtual {p5, v5}, Landroid/view/View;->setVisibility(I)V

    .line 346
    const/16 v5, 0x8

    invoke-virtual {p6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method handleDestroy()V
    .locals 3

    .prologue
    .line 192
    const-string v0, "Stk-IA "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDestroy - before Send End Session mbSendResp["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkInputInstance;->mbSendResp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-boolean v0, p0, Lcom/android/stk/StkInputInstance;->mbSendResp:Z

    if-nez v0, :cond_0

    .line 194
    const-string v0, "Stk-IA "

    const-string v1, "handleDestroy - Send End Session"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/stk/StkInputInstance;->sendResponse(I)V

    .line 197
    :cond_0
    return-void
.end method

.method handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, need_finish:Z
    packed-switch p1, :pswitch_data_0

    .line 209
    :goto_0
    return v0

    .line 204
    :pswitch_0
    const-string v1, "Stk-IA "

    const-string v2, "handleKeyDown - KEYCODE_BACK"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/stk/StkInputInstance;->sendResponse(ILjava/lang/String;Z)V

    .line 206
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method handlePause()V
    .locals 3

    .prologue
    .line 183
    const-string v0, "Stk-IA "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePause - mbSendResp["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkInputInstance;->mbSendResp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/stk/StkInputInstance;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/stk/StkInputInstance;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/stk/StkInputInstance;->mSimId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->indicateInputVisibility(ZI)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkInputInstance;->cancelTimeOut()V

    .line 188
    return-void
.end method

.method handleResume()V
    .locals 3

    .prologue
    .line 174
    const-string v0, "Stk-IA "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResume - mbSendResp["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkInputInstance;->mbSendResp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkInputInstance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/stk/StkInputInstance;->appService:Lcom/android/stk/StkAppService;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/stk/StkInputInstance;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/stk/StkInputInstance;->mSimId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/stk/StkAppService;->indicateInputVisibility(ZI)V

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkInputInstance;->startTimeOut()V

    .line 179
    return-void
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/stk/StkInputInstance;->startTimeOut()V

    .line 258
    return-void
.end method

.method sendResponse(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 213
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/stk/StkInputInstance;->sendResponse(ILjava/lang/String;Z)V

    .line 214
    return-void
.end method

.method sendResponse(ILjava/lang/String;Z)V
    .locals 7
    .parameter "resId"
    .parameter "input"
    .parameter "help"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 217
    iget v2, p0, Lcom/android/stk/StkInputInstance;->mSimId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 219
    const-string v2, "Stk-IA "

    const-string v3, "sim id is invalid"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 224
    const-string v2, "Stk-IA "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StkAppService is null, Ignore response: id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkInputInstance;->mSimId:I

    invoke-virtual {v2, v3}, Lcom/android/stk/StkAppService;->haveEndSession(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    const-string v2, "Stk-IA "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore response, id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    const-string v2, "Stk-IA "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendResponse resID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] input["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 235
    iput-boolean v5, p0, Lcom/android/stk/StkInputInstance;->mbSendResp:Z

    .line 236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v0, args:Landroid/os/Bundle;
    new-array v1, v6, [I

    .line 238
    .local v1, op:[I
    const/4 v2, 0x0

    aput v6, v1, v2

    .line 239
    iget v2, p0, Lcom/android/stk/StkInputInstance;->mSimId:I

    aput v2, v1, v5

    .line 240
    const-string v2, "op"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 241
    const-string v2, "response id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    if-eqz p2, :cond_3

    .line 243
    const-string v2, "input"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_3
    const-string v2, "help"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    iget-object v2, p0, Lcom/android/stk/StkInputInstance;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/stk/StkInputInstance;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/stk/StkAppService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method startTimeOut()V
    .locals 4

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/stk/StkInputInstance;->cancelTimeOut()V

    .line 295
    iget-object v0, p0, Lcom/android/stk/StkInputInstance;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkInputInstance;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 297
    return-void
.end method
