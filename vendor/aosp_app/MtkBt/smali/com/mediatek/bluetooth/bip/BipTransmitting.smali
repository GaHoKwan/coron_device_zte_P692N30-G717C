.class public Lcom/mediatek/bluetooth/bip/BipTransmitting;
.super Lcom/android/internal/app/AlertActivity;
.source "BipTransmitting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTION_RECEIVING_UPDATE:Ljava/lang/String; = "com.mediatek.bluetooth.bipitransmitting.action.RECEIVING_UPDATE"

.field public static final ACTION_TRANSMISSION_UPDATE:Ljava/lang/String; = "com.mediatek.bluetooth.bipitransmitting.action.TRANSMISSION_UPDATE"

.field public static final DIALOG_PENDING_JOB:I = 0x14

.field public static final DIALOG_RECEIVE_FAIL:I = 0x17

.field public static final DIALOG_RECEIVE_PROCESSING:I = 0x15

.field public static final DIALOG_RECEIVE_SUCCESS:I = 0x16

.field public static final DIALOG_TRANSMISSION_FAIL:I = 0xd

.field public static final DIALOG_TRANSMISSION_PROCESSING:I = 0xb

.field public static final DIALOG_TRANSMISSION_SUCCESS:I = 0xc

.field public static final EXTRA_DIALOG_TYPE:Ljava/lang/String; = "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

.field public static final EXTRA_FILE_NAME:Ljava/lang/String; = "com.mediatek.bluetooth.bipitransmitting.extra.FILE_NAME"

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "com.mediatek.bluetooth.bipitransmitting.extra.NOTIFICATION_ID"

.field public static final EXTRA_PERCENTAGE:Ljava/lang/String; = "com.mediatek.bluetooth.bipitransmitting.extra.PERCENTAGE"

.field public static final RESULT_BACK:I = 0x4

.field public static final RESULT_CANCEL:I = 0x3

.field public static final RESULT_HIDE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BipTransmitting"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mDialogType:I

.field private mFileName:Ljava/lang/String;

.field private mFilter:Landroid/content/IntentFilter;

.field private mNotificationId:I

.field private mOriDialogType:I

.field private mPara:Lcom/android/internal/app/AlertController$AlertParams;

.field private mPercentText:Landroid/widget/TextView;

.field private mPercentage:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSendingProgress:Landroid/widget/ProgressBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mView:Landroid/view/View;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentage:I

    .line 87
    iput-object v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;

    .line 88
    const v0, 0x1c9c380

    iput v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mNotificationId:I

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFilter:Landroid/content/IntentFilter;

    .line 114
    new-instance v0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;-><init>(Lcom/mediatek/bluetooth/bip/BipTransmitting;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/bip/BipTransmitting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mOriDialogType:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/bip/BipTransmitting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/bluetooth/bip/BipTransmitting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/bip/BipTransmitting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentage:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/bluetooth/bip/BipTransmitting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentage:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/bip/BipTransmitting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/bluetooth/bip/BipTransmitting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/bip/BipTransmitting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mNotificationId:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/bip/BipTransmitting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->setViewContent()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/bip/BipTransmitting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->updateProgressbar()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/bluetooth/bip/BipTransmitting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->updateButton()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 247
    const-string v0, "BipTransmitting"

    const-string v1, "createView"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mView:Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mView:Landroid/view/View;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mSendingProgress:Landroid/widget/ProgressBar;

    .line 251
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mView:Landroid/view/View;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentText:Landroid/widget/TextView;

    .line 252
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mView:Landroid/view/View;

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDescriptionView:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mSendingProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDescriptionView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 255
    :cond_0
    const-string v0, "BipTransmitting"

    const-string v1, "visual component is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mView:Landroid/view/View;

    return-object v0

    .line 258
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->setViewContent()V

    goto :goto_0
.end method

.method private setUpDialog()V
    .locals 4

    .prologue
    const v3, 0x7f070007

    const v2, 0x7f070006

    .line 208
    const-string v0, "BipTransmitting"

    const-string v1, "setUpDialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    .line 212
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 213
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const/high16 v1, 0x7f07

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 215
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 217
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 218
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 219
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 241
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 243
    return-void

    .line 221
    :cond_2
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_4

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 223
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 224
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 225
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 227
    :cond_4
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_6

    .line 228
    :cond_5
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x1080027

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 229
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 230
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 231
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 232
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 234
    :cond_6
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 236
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 237
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f070009

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 238
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_0
.end method

.method private setViewContent()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 267
    const-string v0, "BipTransmitting"

    const-string v1, "setViewContent"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 270
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDescriptionView:Landroid/widget/TextView;

    const v1, 0x7f07000a

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 273
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDescriptionView:Landroid/widget/TextView;

    const v1, 0x7f070016

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 275
    :cond_2
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 276
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDescriptionView:Landroid/widget/TextView;

    const v1, 0x7f07000b

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mSendingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 280
    :cond_3
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_4

    .line 281
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDescriptionView:Landroid/widget/TextView;

    const v1, 0x7f070017

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mSendingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 285
    :cond_4
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 286
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDescriptionView:Landroid/widget/TextView;

    const v1, 0x7f07000c

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mSendingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 290
    :cond_5
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_6

    .line 291
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDescriptionView:Landroid/widget/TextView;

    const v1, 0x7f070018

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mSendingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 295
    :cond_6
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDescriptionView:Landroid/widget/TextView;

    const v1, 0x7f07000d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mSendingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateButton()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v6, -0x2

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 314
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v3, 0xb

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v3, 0x15

    if-ne v0, v3, :cond_2

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v6}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v6}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 321
    :cond_2
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v3, 0xc

    if-ne v0, v3, :cond_3

    .line 322
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v6}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 326
    :cond_3
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v3, 0xd

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v3, 0x17

    if-ne v0, v3, :cond_5

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v6}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 333
    :cond_5
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v4, 0x16

    if-ne v3, v4, :cond_7

    :goto_2
    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v6}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v6}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 333
    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method private updateProgressbar()V
    .locals 3

    .prologue
    .line 304
    const-string v0, "BipTransmitting"

    const-string v1, "updateProgressbar"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mSendingProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 307
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mSendingProgress:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentage:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 308
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentage:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0xb

    const/4 v4, -0x1

    const/16 v3, 0x16

    .line 343
    const-string v1, "BipTransmitting"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-ne p2, v4, :cond_7

    .line 346
    const-string v1, "BipTransmitting"

    const-string v2, "positive button"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    if-ne v1, v6, :cond_2

    .line 349
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 401
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 402
    return-void

    .line 351
    :cond_2
    iget v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v2, 0x17

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    if-ne v1, v3, :cond_5

    .line 353
    :cond_3
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mNotificationId:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 355
    iget v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    if-ne v1, v3, :cond_4

    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/SystemUtils;->getReceivedFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 365
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 367
    :cond_5
    iget v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_6

    .line 368
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mNotificationId:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 370
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bipiservice.action.CANCEL_PENDING"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string v1, "com.mediatek.bluetooth.bipitransmitting.extra.NOTIFICATION_ID"

    iget v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mNotificationId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 376
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    const-string v1, "BipTransmitting"

    const-string v2, "exception case"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 379
    :cond_7
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 380
    const-string v1, "BipTransmitting"

    const-string v2, "negative button"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    if-ne v1, v5, :cond_9

    .line 383
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mNotificationId:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 385
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bipiservice.action.BIPI_CANCEL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 399
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    :goto_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    goto/16 :goto_0

    .line 389
    :cond_9
    iget v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    if-ne v1, v6, :cond_a

    .line 390
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mNotificationId:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 392
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bipiservice.action.BIPR_CANCEL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 396
    .end local v0           #intent:Landroid/content/Intent;
    :cond_a
    iget v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    if-ne v1, v3, :cond_8

    .line 397
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mNotificationId:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 145
    const-string v2, "BipTransmitting"

    const-string v3, "OnCreate"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 149
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mContext:Landroid/content/Context;

    .line 153
    const-string v2, "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mOriDialogType:I

    .line 154
    iget v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mOriDialogType:I

    iput v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    .line 155
    const-string v2, "com.mediatek.bluetooth.bipitransmitting.extra.PERCENTAGE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentage:I

    .line 156
    const-string v2, "com.mediatek.bluetooth.bipitransmitting.extra.NOTIFICATION_ID"

    iget v3, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mNotificationId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mNotificationId:I

    .line 157
    const-string v2, "com.mediatek.bluetooth.bipitransmitting.extra.FILE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;

    .line 158
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 159
    const-string v2, "FileName"

    iput-object v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;

    .line 162
    :cond_0
    const-string v2, "BipTransmitting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDialogType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmNotificaitonId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mNotificationId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmPercentage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmFileName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->setUpDialog()V

    .line 167
    iget v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mOriDialogType:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mOriDialogType:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mOriDialogType:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "com.mediatek.bluetooth.bipitransmitting.action.TRANSMISSION_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "com.mediatek.bluetooth.bipitransmitting.action.RECEIVING_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 190
    const-string v0, "BipTransmitting"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mOriDialogType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mOriDialogType:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 196
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "BipTransmitting"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 183
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->updateProgressbar()V

    .line 184
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->updateButton()V

    .line 185
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "BipTransmitting"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 203
    return-void
.end method
