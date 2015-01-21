.class public Lcom/android/utk/UtkDialogActivity;
.super Landroid/app/Activity;
.source "UtkDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CANCEL_BUTTON:I = 0x7f070011

.field private static final MIN_LENGTH:I = 0x6

.field private static final MIN_WIDTH:I = 0xaa

.field private static final MSG_ID_TIMEOUT:I = 0x1

.field public static final OK_BUTTON:I = 0x7f070006

.field private static final TEXT:Ljava/lang/String; = "text"


# instance fields
.field appService:Lcom/android/utk/UtkAppService;

.field mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

.field mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    invoke-static {}, Lcom/android/utk/UtkAppService;->getInstance()Lcom/android/utk/UtkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/utk/UtkDialogActivity;->appService:Lcom/android/utk/UtkAppService;

    .line 48
    new-instance v0, Lcom/android/utk/UtkDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/utk/UtkDialogActivity$1;-><init>(Lcom/android/utk/UtkDialogActivity;)V

    iput-object v0, p0, Lcom/android/utk/UtkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/utk/UtkDialogActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/utk/UtkDialogActivity;->sendResponse(I)V

    return-void
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/utk/UtkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v0, p0, Lcom/android/utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private sendResponse(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 188
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/utk/UtkDialogActivity;->sendResponse(IZ)V

    .line 189
    return-void
.end method

.method private sendResponse(IZ)V
    .locals 3
    .parameter "resId"
    .parameter "confirmed"

    .prologue
    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const-string v1, "confirm"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/utk/UtkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 185
    return-void
.end method

.method private startTimeOut()V
    .locals 5

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->userClear:Z

    if-nez v1, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/android/utk/UtkDialogActivity;->cancelTimeOut()V

    .line 209
    iget-object v1, p0, Lcom/android/utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->duration:Lcom/android/internal/telephony/cdma/utk/Duration;

    invoke-static {v1}, Lcom/android/utk/UtkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cdma/utk/Duration;)I

    move-result v0

    .line 210
    .local v0, dialogDuration:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==========>   dialogDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    if-nez v0, :cond_0

    .line 212
    const v0, 0x9c40

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/utk/UtkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/utk/UtkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 217
    .end local v0           #dialogDuration:I
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0xd

    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, input:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 119
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OK Clicked! isCurCmdSetupCall["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/utk/UtkDialogActivity;->appService:Lcom/android/utk/UtkAppService;

    invoke-virtual {v3}, Lcom/android/utk/UtkAppService;->isCurCmdSetupCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/android/utk/UtkDialogActivity;->appService:Lcom/android/utk/UtkAppService;

    invoke-virtual {v2}, Lcom/android/utk/UtkAppService;->isCurCmdSetupCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const-string v2, "stk call sendBroadcast(STKCALL_REGISTER_SPEECH_INFO)"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.stk.STKCALL_REGISTER_SPEECH_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v4, v2}, Lcom/android/utk/UtkDialogActivity;->sendResponse(IZ)V

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 130
    :sswitch_1
    const/4 v2, 0x0

    invoke-direct {p0, v4, v2}, Lcom/android/utk/UtkDialogActivity;->sendResponse(IZ)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x7f070006 -> :sswitch_0
        0x7f070011 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x7

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/utk/UtkDialogActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 78
    iget-object v6, p0, Lcom/android/utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    if-nez v6, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 112
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0, v7}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 86
    .local v5, window:Landroid/view/Window;
    const v6, 0x7f030004

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 87
    const v6, 0x7f030005

    invoke-virtual {v5, v7, v6}, Landroid/view/Window;->setFeatureInt(II)V

    .line 88
    const v6, 0x7f070012

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 89
    .local v4, titleTv:Landroid/widget/TextView;
    const v6, 0x7f07000f

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 92
    .local v2, mMessageView:Landroid/widget/TextView;
    const v6, 0x7f070006

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 93
    .local v3, okButton:Landroid/widget/Button;
    const v6, 0x7f070011

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 95
    .local v0, cancelButton:Landroid/widget/Button;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v6, p0, Lcom/android/utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/utk/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v6, p0, Lcom/android/utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/utk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v6, :cond_4

    .line 100
    :cond_1
    iget-object v6, p0, Lcom/android/utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_3

    .line 101
    :cond_2
    const/16 v6, 0xaa

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 103
    :cond_3
    iget-object v6, p0, Lcom/android/utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_4
    const v6, 0x7f07000a

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 107
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/utk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v6, :cond_5

    .line 108
    const v6, 0x108054f

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 110
    :cond_5
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/utk/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 163
    invoke-direct {p0}, Lcom/android/utk/UtkDialogActivity;->cancelTimeOut()V

    .line 164
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 138
    packed-switch p1, :pswitch_data_0

    .line 144
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 140
    :pswitch_0
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/utk/UtkDialogActivity;->sendResponse(I)V

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 157
    invoke-direct {p0}, Lcom/android/utk/UtkDialogActivity;->cancelTimeOut()V

    .line 158
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 176
    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object v0, p0, Lcom/android/utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 177
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 150
    invoke-direct {p0}, Lcom/android/utk/UtkDialogActivity;->startTimeOut()V

    .line 151
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 169
    const-string v0, "text"

    iget-object v1, p0, Lcom/android/utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 170
    return-void
.end method
