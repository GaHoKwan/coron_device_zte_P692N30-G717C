.class public Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;
.super Landroid/app/Activity;
.source "RfDesenseTxTestBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;
    }
.end annotation


# static fields
.field protected static final CHANNEL_DEFAULT:I = 0x0

.field protected static final CHANNEL_MAX:I = 0x2

.field protected static final CHANNEL_MAX2:I = 0x4

.field protected static final CHANNEL_MIN:I = 0x1

.field protected static final CHANNEL_MIN2:I = 0x3

.field protected static final PAUSE:I = 0x2

.field protected static final POWER_DEFAULT:I = 0x5

.field protected static final POWER_MAX:I = 0x7

.field protected static final POWER_MIN:I = 0x6

.field protected static final REBOOT:I = 0x3

.field protected static final START:I = 0x1

.field protected static final STATE_NONE:I = 0x0

.field protected static final STATE_PAUSED:I = 0x2

.field protected static final STATE_STARTED:I = 0x1

.field protected static final STATE_STOPPED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TxTestBase"

.field protected static final UPDATE_BUTTON:I = 0x4

.field protected static final UPDATE_DELAY:I = 0x3e8


# instance fields
.field protected mAfc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

.field protected mBand:Landroid/widget/Spinner;

.field protected mButtonPause:Landroid/widget/Button;

.field protected mButtonStart:Landroid/widget/Button;

.field protected mButtonStop:Landroid/widget/Button;

.field protected mChannel:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

.field protected mCurrentBand:I

.field protected mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field protected final mHandler:Landroid/os/Handler;

.field protected mPattern:Landroid/widget/Spinner;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field protected mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

.field protected mState:I

.field protected mTsc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    new-instance v0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-direct {v0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mChannel:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    .line 79
    new-instance v0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-direct {v0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    .line 80
    new-instance v0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-direct {v0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mAfc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    .line 81
    new-instance v0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-direct {v0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mTsc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mState:I

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mCurrentBand:I

    .line 176
    new-instance v0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$1;-><init>(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected checkValues()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 364
    new-array v1, v8, [Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mChannel:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    aput-object v7, v1, v5

    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    aput-object v7, v1, v6

    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mAfc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    aput-object v7, v1, v9

    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mTsc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    aput-object v7, v1, v10

    .line 365
    .local v1, editors:[Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;
    new-array v4, v8, [Ljava/lang/String;

    const-string v7, "Channel"

    aput-object v7, v4, v5

    const-string v7, "TX Power"

    aput-object v7, v4, v6

    const-string v7, "AFC"

    aput-object v7, v4, v9

    const-string v7, "TSC"

    aput-object v7, v4, v10

    .line 367
    .local v4, toast:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_1

    .line 368
    aget-object v0, v1, v2

    .line 369
    .local v0, editor:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;
    iget-object v7, v0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->editor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->check()Z

    move-result v7

    if-nez v7, :cond_0

    .line 370
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Valid range: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->getValidRange()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, text:Ljava/lang/String;
    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 376
    .end local v0           #editor:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;
    .end local v3           #text:Ljava/lang/String;
    :goto_1
    return v5

    .line 367
    .restart local v0       #editor:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #editor:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;
    :cond_1
    move v5, v6

    .line 376
    goto :goto_1
.end method

.method protected disableAllButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 388
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mButtonStart:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 389
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mButtonPause:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 390
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 391
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 221
    const v2, 0x7f030076

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 223
    const v2, 0x7f0b03ac

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mBand:Landroid/widget/Spinner;

    .line 225
    iget-object v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mChannel:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const v2, 0x7f0b03af

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v3, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->editor:Landroid/widget/EditText;

    .line 226
    iget-object v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const v2, 0x7f0b03b2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v3, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->editor:Landroid/widget/EditText;

    .line 227
    iget-object v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mAfc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const v2, 0x7f0b03b5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v3, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->editor:Landroid/widget/EditText;

    .line 228
    iget-object v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mTsc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const v2, 0x7f0b03b8

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v3, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->editor:Landroid/widget/EditText;

    .line 229
    const v2, 0x7f0b03ba

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mPattern:Landroid/widget/Spinner;

    .line 230
    const v2, 0x7f0b03bb

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mButtonStart:Landroid/widget/Button;

    .line 231
    const v2, 0x7f0b03bc

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mButtonPause:Landroid/widget/Button;

    .line 232
    const v2, 0x7f0b03bd

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mButtonStop:Landroid/widget/Button;

    .line 234
    new-instance v1, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;-><init>(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;)V

    .line 281
    .local v1, listener:Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mButtonStart:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mButtonPause:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    new-instance v0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$3;-><init>(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;)V

    .line 309
    .local v0, l:Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 310
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 320
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 321
    new-instance v1, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$4;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$4;-><init>(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;)V

    .line 334
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Reboot"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Reboot modem?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Reboot"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 341
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #listener:Landroid/content/DialogInterface$OnClickListener;
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 315
    invoke-virtual {p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->updateButtons()V

    .line 316
    return-void
.end method

.method protected sendAtCommand(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "str1"
    .parameter "str2"
    .parameter "what"

    .prologue
    const/4 v4, 0x0

    .line 345
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 346
    .local v0, cmd:[Ljava/lang/String;
    aput-object p1, v0, v4

    .line 347
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 348
    const-string v1, "TxTestBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v1, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 353
    iget-object v1, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V

    .line 358
    return-void
.end method

.method protected setDefaultValues()V
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->updateLimits()V

    .line 381
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mChannel:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->setToDefault()V

    .line 382
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->setToDefault()V

    .line 383
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mAfc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->setToDefault()V

    .line 384
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mTsc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->setToDefault()V

    .line 385
    return-void
.end method

.method protected updateButtons()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 394
    iget-object v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mButtonStart:Landroid/widget/Button;

    iget v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mState:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 395
    iget-object v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mButtonPause:Landroid/widget/Button;

    iget v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mState:I

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mButtonStop:Landroid/widget/Button;

    iget v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mState:I

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 397
    return-void

    :cond_1
    move v0, v1

    .line 394
    goto :goto_0

    :cond_2
    move v0, v1

    .line 395
    goto :goto_1

    :cond_3
    move v2, v1

    .line 396
    goto :goto_2
.end method

.method protected updateLimits()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method
