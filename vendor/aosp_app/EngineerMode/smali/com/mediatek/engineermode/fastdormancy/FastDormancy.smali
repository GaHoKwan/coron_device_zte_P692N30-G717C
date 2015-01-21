.class public Lcom/mediatek/engineermode/fastdormancy/FastDormancy;
.super Landroid/app/Activity;
.source "FastDormancy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COUNT:I = 0x4

.field private static final DIALOG_SEND_FD:I = 0xca

.field private static final DIALOG_SET_FAILED:I = 0xc9

.field private static final INDEX_OFF_LE:I = 0x0

.field private static final INDEX_OFF_R8:I = 0x2

.field private static final INDEX_ON_LE:I = 0x1

.field private static final INDEX_ON_R8:I = 0x3

.field private static final MSG_SEND_FD:I = 0x66

.field private static final MSG_SET_TIME:I = 0x65

.field private static final TAG:Ljava/lang/String; = "EM/FD"


# instance fields
.field private mFastDormancyEdit:[Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mResponseHander:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 162
    new-instance v0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/fastdormancy/FastDormancy$1;-><init>(Lcom/mediatek/engineermode/fastdormancy/FastDormancy;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mResponseHander:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 133
    :pswitch_0
    new-array v1, v5, [Ljava/lang/String;

    .line 134
    .local v1, fastDTimerValue:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 135
    iget-object v4, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mFastDormancyEdit:[Landroid/widget/EditText;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 137
    :try_start_0
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "EM/FD"

    const-string v5, "NumberFormatException"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v4, "Your input number must be a int type!"

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 148
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    iget-object v4, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mResponseHander:Landroid/os/Handler;

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/Phone;->setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I

    goto :goto_0

    .line 151
    .end local v1           #fastDTimerValue:[Ljava/lang/String;
    .end local v3           #i:I
    :pswitch_1
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "AT+ESCRI"

    aput-object v4, v2, v6

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v2, v4

    .line 152
    .local v2, fastDormancyAT:[Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mResponseHander:Landroid/os/Handler;

    const/16 v6, 0x66

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 155
    .end local v2           #fastDormancyAT:[Ljava/lang/String;
    :pswitch_2
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x7f0b0180
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 85
    const v0, 0x7f0b0180

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f0b0181

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f0b0182

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mFastDormancyEdit:[Landroid/widget/EditText;

    .line 90
    iget-object v1, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mFastDormancyEdit:[Landroid/widget/EditText;

    const/4 v2, 0x0

    const v0, 0x7f0b017f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v2

    .line 91
    iget-object v1, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mFastDormancyEdit:[Landroid/widget/EditText;

    const/4 v2, 0x1

    const v0, 0x7f0b017b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v2

    .line 92
    iget-object v1, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mFastDormancyEdit:[Landroid/widget/EditText;

    const/4 v2, 0x2

    const v0, 0x7f0b017d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v2

    .line 93
    iget-object v1, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mFastDormancyEdit:[Landroid/widget/EditText;

    const/4 v2, 0x3

    const v0, 0x7f0b0179

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v2

    .line 94
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 96
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 188
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/16 v2, 0xc9

    if-ne p1, v2, :cond_1

    .line 190
    const-string v2, "Warnning!"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Failed to set FD parameter."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 198
    :cond_0
    :goto_0
    return-object v1

    .line 192
    :cond_1
    const/16 v2, 0xca

    if-ne p1, v2, :cond_0

    .line 193
    const-string v2, "Warnning!"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Failed to send FD."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "EM/FD"

    const-string v1, "onDestroy(),removeMessages"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mResponseHander:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mResponseHander:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 127
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x4

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 101
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getFDTimerValue()[Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, fastDTimerValue:[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 103
    const-string v2, "EM/FD"

    const-string v3, "getFDTimerValue() == null"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "Query FD parameter failed!"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    array-length v2, v0

    if-ge v2, v5, :cond_2

    .line 106
    const-string v2, "EM/FD"

    const-string v3, "getFDTimerValue().length < 4 "

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "Query FD parameter failed!"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 108
    :cond_2
    array-length v2, v0

    if-ne v2, v5, :cond_3

    .line 109
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 110
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/FastDormancy;->mFastDormancyEdit:[Landroid/widget/EditText;

    aget-object v2, v2, v1

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const-string v2, "EM/FD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fastDTimerValue["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    .end local v1           #i:I
    :cond_3
    const-string v2, "EM/FD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFDTimerValue().length == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 116
    const-string v2, "EM/FD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fastDTimerValue["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
