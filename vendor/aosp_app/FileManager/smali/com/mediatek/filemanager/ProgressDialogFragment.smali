.class public Lcom/mediatek/filemanager/ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "ProgressDialogFragment.java"


# static fields
.field private static final CANCEL:Ljava/lang/String; = "cancel"

.field private static final CURRENTNUM:Ljava/lang/String; = "currentNumber"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final PROGRESS:Ljava/lang/String; = "progress"

.field private static final STYLE:Ljava/lang/String; = "style"

.field public static final TAG:Ljava/lang/String; = "ProgressDialogFragment"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final TOTAL:Ljava/lang/String; = "total"

.field private static final TOTALNUM:Ljava/lang/String; = "totalNumber"


# instance fields
.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mProgressNum:Landroid/widget/TextView;

.field private mSavedCurrentNum:I

.field private mSavedTotalNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 69
    iput v0, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mSavedCurrentNum:I

    .line 70
    iput v0, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mSavedTotalNum:I

    .line 71
    iput-object v1, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mProgressNum:Landroid/widget/TextView;

    .line 72
    iput-object v1, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mCancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/filemanager/ProgressDialogFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mCancelListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static newInstance(IIII)Lcom/mediatek/filemanager/ProgressDialogFragment;
    .locals 3
    .parameter "style"
    .parameter "title"
    .parameter "message"
    .parameter "cancel"

    .prologue
    .line 84
    new-instance v1, Lcom/mediatek/filemanager/ProgressDialogFragment;

    invoke-direct {v1}, Lcom/mediatek/filemanager/ProgressDialogFragment;-><init>()V

    .line 85
    .local v1, f:Lcom/mediatek/filemanager/ProgressDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "style"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v2, "cancel"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string v2, "message"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/4 v13, -0x1

    .line 140
    invoke-virtual {p0, v11}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 141
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 142
    .local v3, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v3, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 143
    invoke-virtual {v3, v11}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, args:Landroid/os/Bundle;
    if-nez p1, :cond_6

    .line 146
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    :goto_0
    if-eqz v0, :cond_5

    .line 151
    const-string v10, "style"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 152
    .local v6, style:I
    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 153
    const-string v10, "title"

    invoke-virtual {v0, v10, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 154
    .local v7, title:I
    if-eq v7, v13, :cond_0

    .line 155
    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setTitle(I)V

    .line 157
    :cond_0
    const-string v10, "cancel"

    invoke-virtual {v0, v10, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 158
    .local v1, cancel:I
    if-eq v1, v13, :cond_1

    .line 159
    const/4 v11, -0x3

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    check-cast v10, Landroid/os/Message;

    invoke-virtual {v3, v11, v12, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 162
    :cond_1
    const-string v10, "message"

    invoke-virtual {v0, v10, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 163
    .local v4, message:I
    if-eq v4, v13, :cond_2

    .line 164
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 166
    :cond_2
    const-string v10, "total"

    invoke-virtual {v0, v10, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 167
    .local v8, total:I
    if-eq v8, v13, :cond_3

    .line 168
    invoke-virtual {v3, v8}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 170
    :cond_3
    const-string v10, "progress"

    invoke-virtual {v0, v10, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 171
    .local v5, progress:I
    if-eq v5, v13, :cond_4

    .line 172
    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 174
    :cond_4
    iget-object v10, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mProgressNum:Landroid/widget/TextView;

    if-eqz v10, :cond_5

    .line 175
    const-string v10, "currentNumber"

    invoke-virtual {v0, v10, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 176
    .local v2, currentNum:I
    const-string v10, "totalNumber"

    invoke-virtual {v0, v10, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 177
    .local v9, totalNum:I
    if-eq v2, v13, :cond_5

    if-eq v9, v13, :cond_5

    .line 178
    iget-object v10, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mProgressNum:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .end local v1           #cancel:I
    .end local v2           #currentNum:I
    .end local v4           #message:I
    .end local v5           #progress:I
    .end local v6           #style:I
    .end local v7           #title:I
    .end local v8           #total:I
    .end local v9           #totalNum:I
    :cond_5
    new-instance v10, Lcom/mediatek/filemanager/ProgressDialogFragment$2;

    invoke-direct {v10, p0}, Lcom/mediatek/filemanager/ProgressDialogFragment$2;-><init>(Lcom/mediatek/filemanager/ProgressDialogFragment;)V

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 192
    return-object v3

    .line 148
    :cond_6
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 110
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const v2, 0x102001b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 113
    .local v0, mButtonNegative:Landroid/widget/Button;
    new-instance v1, Lcom/mediatek/filemanager/ProgressDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/mediatek/filemanager/ProgressDialogFragment$1;-><init>(Lcom/mediatek/filemanager/ProgressDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .end local v0           #mButtonNegative:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 98
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 99
    const-string v1, "total"

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getMax()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string v1, "progress"

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v1, "currentNumber"

    iget v2, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mSavedCurrentNum:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string v1, "totalNumber"

    iget v2, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mSavedTotalNum:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 204
    iget-object v5, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mProgressNum:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 205
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 206
    .local v0, mDialog:Landroid/app/ProgressDialog;
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mProgressNum:Landroid/widget/TextView;

    .line 207
    const v5, 0x1020265

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 209
    .local v4, view:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 210
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mProgressNum:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v5, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mProgressNum:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    iget-object v5, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mProgressNum:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    .line 215
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 216
    .local v3, vParent:Landroid/view/ViewParent;
    instance-of v5, v3, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 217
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 218
    .local v2, parentLayout:Landroid/widget/RelativeLayout;
    iget-object v5, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mProgressNum:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 221
    .end local v0           #mDialog:Landroid/app/ProgressDialog;
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #parentLayout:Landroid/widget/RelativeLayout;
    .end local v3           #vParent:Landroid/view/ViewParent;
    .end local v4           #view:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setCancelListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 136
    return-void
.end method

.method public setProgress(Lcom/mediatek/filemanager/service/ProgressInfo;)V
    .locals 6
    .parameter "progeressInfo"

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    .line 231
    .local v2, progressDialog:Landroid/app/ProgressDialog;
    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 232
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 234
    .local v1, messageView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 236
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/ProgressInfo;->getProgeress()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 239
    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/ProgressInfo;->getUpdateInfo()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, message:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 241
    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 243
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/ProgressInfo;->getTotal()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 244
    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/ProgressInfo;->getCurrentNumber()I

    move-result v3

    iput v3, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mSavedCurrentNum:I

    .line 245
    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/ProgressInfo;->getTotalNumber()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mSavedTotalNum:I

    .line 246
    iget-object v3, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mProgressNum:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 247
    iget-object v3, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mProgressNum:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mSavedCurrentNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/filemanager/ProgressDialogFragment;->mSavedTotalNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #messageView:Landroid/widget/TextView;
    :cond_2
    return-void
.end method
