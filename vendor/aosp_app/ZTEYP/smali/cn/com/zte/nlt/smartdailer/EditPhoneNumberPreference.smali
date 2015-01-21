.class public Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$GetDefaultNumberListener;,
        Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$OnDialogClosedListener;
    }
.end annotation


# static fields
.field private static final CM_ACTIVATION:I = 0x1

.field private static final CM_CONFIRM:I = 0x0

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final VALUE_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private mButtonClicked:I

.field private mChangeNumberText:Ljava/lang/CharSequence;

.field private mChecked:Z

.field private mConfirmationMode:I

.field private mContactListIntent:Landroid/content/Intent;

.field private mContactPickButton:Landroid/widget/ImageButton;

.field private mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mDialogOnClosedListener:Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$OnDialogClosedListener;

.field private mDisableText:Ljava/lang/CharSequence;

.field private mEnableText:Ljava/lang/CharSequence;

.field private mEncodedText:Ljava/lang/String;

.field private mGetDefaultNumberListener:Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$GetDefaultNumberListener;

.field private mParentActivity:Landroid/app/Activity;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPrefId:I

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 132
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->setDialogLayoutResource(I)V

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v0, "enable"

    iput-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    .line 162
    const-string v0, "disable"

    iput-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    .line 163
    const-string v0, "Change number"

    iput-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mConfirmationMode:I

    .line 166
    const-string v0, "on"

    iput-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 167
    const-string v0, "off"

    iput-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mPrefId:I

    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 548
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 549
    .local v0, d:Landroid/app/Dialog;
    instance-of v1, v0, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 550
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 552
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 557
    return-void
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRawPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method protected getStringValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isToggled()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mChecked:Z

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    .line 281
    const v1, 0x7f0a0025

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 284
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 285
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 287
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 217
    const/4 v4, -0x2

    iput v4, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mButtonClicked:I

    .line 219
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 222
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    .line 224
    .local v3, editText:Landroid/widget/EditText;
    const v4, 0x7f0a0026

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    .line 227
    if-eqz v3, :cond_1

    .line 230
    iget-object v4, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$GetDefaultNumberListener;

    if-eqz v4, :cond_0

    .line 231
    iget-object v4, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$GetDefaultNumberListener;

    invoke-interface {v4, p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$GetDefaultNumberListener;->onGetDefaultNumber(Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, defaultNumber:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 233
    iput-object v2, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 236
    .end local v2           #defaultNumber:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 238
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 239
    iget-object v4, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 243
    :cond_1
    iget-object v4, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_2

    .line 244
    iget-object v4, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    new-instance v5, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$1;

    invoke-direct {v5, p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$1;-><init>(Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    :cond_2
    if-eqz v3, :cond_3

    .line 261
    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 262
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 263
    .local v1, d:Landroid/app/Dialog;
    instance-of v4, v1, Landroid/app/AlertDialog;

    if-eqz v4, :cond_3

    .line 264
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #d:Landroid/app/Dialog;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 266
    .local v0, b:Landroid/widget/Button;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 269
    .end local v0           #b:Landroid/widget/Button;
    :cond_3
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    .line 184
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 185
    .local v1, summaryView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 190
    iget v3, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 191
    iget-boolean v3, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v3, :cond_2

    .line 192
    iget-object v3, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 200
    .local v0, sum:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_5

    .line 201
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const/4 v2, 0x0

    .line 207
    .local v2, vis:I
    :goto_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 208
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    .end local v0           #sum:Ljava/lang/CharSequence;
    .end local v2           #vis:I
    :cond_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 194
    :cond_2
    iget-object v3, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sum:Ljava/lang/CharSequence;
    :goto_2
    goto :goto_0

    .end local v0           #sum:Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    goto :goto_2

    .line 197
    :cond_4
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sum:Ljava/lang/CharSequence;
    goto :goto_0

    .line 204
    :cond_5
    const/16 v2, 0x8

    .restart local v2       #vis:I
    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v0, 0x1

    .line 354
    iget v1, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v1, v0, :cond_0

    const/4 v1, -0x3

    if-ne p2, v1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->isToggled()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->setToggled(Z)Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;

    .line 359
    :cond_0
    iput p2, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mButtonClicked:I

    .line 360
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 361
    return-void

    .line 356
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 369
    iget v2, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_2

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, numberInput:Ljava/lang/String;
    const-string v2, ";"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, numberInput1:Ljava/lang/String;
    const-string v2, "+++++++++++++setPhoneNumber"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p0, v1}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;

    .line 377
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 378
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 384
    .end local v0           #numberInput:Ljava/lang/String;
    .end local v1           #numberInput1:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$OnDialogClosedListener;

    if-eqz v2, :cond_1

    .line 385
    iget-object v2, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$OnDialogClosedListener;

    iget v3, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mButtonClicked:I

    invoke-interface {v2, p0, v3}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$OnDialogClosedListener;->onDialogClosed(Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;I)V

    .line 387
    :cond_1
    return-void

    .line 380
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    goto :goto_0
.end method

.method public onPickActivityResult(Ljava/lang/String;)V
    .locals 1
    .parameter "pickedValue"

    .prologue
    .line 344
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 345
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    const/4 v2, 0x0

    .line 295
    iget v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 296
    iget-boolean v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 298
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 305
    :cond_0
    :goto_0
    const v0, 0x7f020010

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 306
    return-void

    .line 300
    :cond_1
    invoke-virtual {p1, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 438
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->setValueFromString(Ljava/lang/String;)V

    .line 439
    return-void

    .line 438
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 562
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 471
    iput-object p1, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 472
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDialogOnClosedListener(Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$OnDialogClosedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 319
    iput-object p1, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$OnDialogClosedListener;

    .line 320
    return-void
.end method

.method public setDialogOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 314
    iput-object p1, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 315
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;I)V
    .locals 1
    .parameter "parent"
    .parameter "identifier"

    .prologue
    .line 325
    iput-object p1, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 326
    iput p2, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mPrefId:I

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 328
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;ILcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$GetDefaultNumberListener;)V
    .locals 0
    .parameter "parent"
    .parameter "identifier"
    .parameter "l"

    .prologue
    .line 334
    iput-object p1, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 335
    iput p2, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mPrefId:I

    .line 336
    iput-object p3, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 337
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;
    .locals 1
    .parameter "number"

    .prologue
    .line 424
    iput-object p1, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 425
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->notifyChanged()V

    .line 428
    return-object p0
.end method

.method public setSummaryOff(I)Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 513
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->setSummaryOff(Ljava/lang/CharSequence;)Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;
    .locals 1
    .parameter "summary"

    .prologue
    .line 503
    iput-object p1, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 504
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->notifyChanged()V

    .line 507
    :cond_0
    return-object p0
.end method

.method public setSummaryOn(I)Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 490
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;
    .locals 1
    .parameter "summary"

    .prologue
    .line 480
    iput-object p1, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 481
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->notifyChanged()V

    .line 484
    :cond_0
    return-object p0
.end method

.method public setToggled(Z)Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;
    .locals 1
    .parameter "checked"

    .prologue
    .line 400
    iput-boolean p1, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mChecked:Z

    .line 401
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->notifyChanged()V

    .line 404
    return-object p0
.end method

.method protected setValueFromString(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 526
    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, inValues:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->setToggled(Z)Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;

    .line 528
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;

    .line 529
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, shouldDisable:Z
    iget v4, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 455
    iget-object v2, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, inValues:[Ljava/lang/String;
    aget-object v2, v0, v3

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 460
    .end local v0           #inValues:[Ljava/lang/String;
    :goto_0
    return v1

    .line 458
    :cond_0
    iget-object v4, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mConfirmationMode:I

    if-nez v4, :cond_1

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method public showPhoneNumberDialog()V
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->showDialog(Landroid/os/Bundle;)V

    .line 543
    return-void
.end method
