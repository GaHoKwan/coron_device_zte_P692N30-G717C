.class public Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothBppPrinting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTION_PRINTING_UPDATE:Ljava/lang/String; = "com.mediatek.bluetooth.bppprinting.action.PRINTING_UPDATE"

.field public static final DIALOG_PRINT_FAIL:I = 0x4

.field public static final DIALOG_PRINT_PROCESSING:I = 0x2

.field public static final DIALOG_PRINT_PROCESSING_INIT:I = 0x1

.field public static final DIALOG_PRINT_SUCCESS:I = 0x3

.field public static final EXTRA_DIALOG_TYPE:Ljava/lang/String; = "com.mediatek.bluetooth.bppprinting.extra.DIALOG_TYPE"

.field public static final EXTRA_FILE_NAME:Ljava/lang/String; = "com.mediatek.bluetooth.bppprinting.extra.FILE_NAME"

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "com.mediatek.bluetooth.bppprinting.extra.NOTIFICATION_ID"

.field public static final EXTRA_PERCENTAGE:Ljava/lang/String; = "com.mediatek.bluetooth.bppprinting.extra.PERCENTAGE"

.field public static final EXTRA_REASON:Ljava/lang/String; = "com.mediatek.bluetooth.bppprinting.extra.REASON"

.field public static final RESULT_BACK:I = 0x4

.field public static final RESULT_CANCEL:I = 0x3

.field public static final RESULT_HIDE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothBppPrinting"


# instance fields
.field private clicked:Z

.field private mDescriptionView:Landroid/widget/TextView;

.field private mDialogType:I

.field private mFileName:Ljava/lang/String;

.field private mNotificationId:I

.field private mOldReason:Ljava/lang/String;

.field private mPara:Lcom/android/internal/app/AlertController$AlertParams;

.field private mPercentText:Landroid/widget/TextView;

.field private mPercentage:I

.field private mReason:Ljava/lang/String;

.field private mReasonView:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSendingProgress:Landroid/widget/ProgressBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 70
    iput-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mView:Landroid/view/View;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentage:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->clicked:Z

    .line 76
    iput-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mOldReason:Ljava/lang/String;

    .line 79
    const v0, 0x2625a00

    iput v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mNotificationId:I

    .line 99
    new-instance v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;-><init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentage:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentage:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mOldReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mOldReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mNotificationId:I

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->setViewContent()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->updateProgressbar()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->updateButton()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 267
    const-string v0, "BluetoothBppPrinting"

    const-string v1, "createView"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mView:Landroid/view/View;

    .line 270
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mView:Landroid/view/View;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mSendingProgress:Landroid/widget/ProgressBar;

    .line 271
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mView:Landroid/view/View;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentText:Landroid/widget/TextView;

    .line 272
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mView:Landroid/view/View;

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDescriptionView:Landroid/widget/TextView;

    .line 273
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mView:Landroid/view/View;

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReasonView:Landroid/widget/TextView;

    .line 275
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mSendingProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReasonView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 276
    :cond_0
    const-string v0, "BluetoothBppPrinting"

    const-string v1, "visual component is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mView:Landroid/view/View;

    return-object v0

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->setViewContent()V

    goto :goto_0
.end method

.method private setUpDialog()V
    .locals 4

    .prologue
    const v3, 0x7f070039

    const v2, 0x7f070038

    .line 236
    const-string v0, "BluetoothBppPrinting"

    const-string v1, "setUpDialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    .line 239
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 240
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 242
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f070037

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 244
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 245
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 246
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 261
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 263
    return-void

    .line 248
    :cond_2
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 249
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 250
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 251
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 252
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 254
    :cond_3
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 255
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x1080027

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 256
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 257
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 258
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 259
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method private setViewContent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x8

    .line 288
    const-string v0, "BluetoothBppPrinting"

    const-string v1, "setViewContent"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    if-ne v0, v5, :cond_3

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDescriptionView:Landroid/widget/TextView;

    const v1, 0x7f070034

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReasonView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;

    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v5, :cond_2

    .line 295
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReasonView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReasonView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 300
    :cond_3
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 301
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDescriptionView:Landroid/widget/TextView;

    const v1, 0x7f070035

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mSendingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReasonView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 306
    :cond_4
    iget v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 307
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDescriptionView:Landroid/widget/TextView;

    const v1, 0x7f070036

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mSendingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReasonView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateButton()V
    .locals 9

    .prologue
    const v8, 0x7f070039

    const v7, 0x7f070038

    const v6, 0x7f070037

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 325
    const-string v2, "BluetoothBppPrinting"

    const-string v3, "updateButton"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 328
    .local v1, posButton:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 329
    .local v0, negButton:Landroid/widget/Button;
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 331
    :cond_0
    const-string v2, "BluetoothBppPrinting"

    const-string v3, "get null button"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    iget v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 336
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 340
    :cond_3
    iget v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 341
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 345
    :cond_4
    iget v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 346
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 348
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 350
    :cond_5
    iget v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 351
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 352
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 354
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateProgressbar()V
    .locals 3

    .prologue
    .line 316
    const-string v0, "BluetoothBppPrinting"

    const-string v1, "updateProgressbar"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mSendingProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 319
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mSendingProgress:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentage:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 320
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentage:I

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

    .line 321
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 224
    const-string v1, "BluetoothBppPrinting"

    const-string v2, "onBackPressed"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v1, 0x1

    iget v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    if-ne v1, v2, :cond_0

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bppmanager.action.CANCEL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 230
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 232
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 233
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 360
    const-string v1, "BluetoothBppPrinting"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->clicked:Z

    .line 362
    if-ne p2, v3, :cond_4

    .line 363
    const-string v1, "BluetoothBppPrinting"

    const-string v2, "positive button"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    if-ne v1, v4, :cond_1

    .line 366
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 386
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 387
    return-void

    .line 368
    :cond_1
    iget v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    if-ne v1, v5, :cond_3

    .line 369
    :cond_2
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mNotificationId:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 370
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 373
    :cond_3
    const-string v1, "BluetoothBppPrinting"

    const-string v2, "exception case"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    :cond_4
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 377
    const-string v1, "BluetoothBppPrinting"

    const-string v2, "negative button"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mNotificationId:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 380
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bppmanager.action.CANCEL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 384
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 140
    const-string v2, "BluetoothBppPrinting"

    const-string v3, "OnCreate"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    const-string v2, "clicked"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->clicked:Z

    .line 148
    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->clicked:Z

    if-nez v2, :cond_3

    .line 149
    const-string v2, "BluetoothBppPrinting"

    const-string v3, "Get attributes from savedInstanceState"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v2, "com.mediatek.bluetooth.bppprinting.extra.DIALOG_TYPE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    .line 151
    const-string v2, "com.mediatek.bluetooth.bppprinting.extra.PERCENTAGE"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentage:I

    .line 152
    const-string v2, "com.mediatek.bluetooth.bppprinting.extra.NOTIFICATION_ID"

    iget v3, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mNotificationId:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mNotificationId:I

    .line 153
    const-string v2, "com.mediatek.bluetooth.bppprinting.extra.FILE_NAME"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;

    .line 154
    const-string v2, "com.mediatek.bluetooth.bppprinting.extra.REASON"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;

    .line 155
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 156
    const-string v2, "FileName"

    iput-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 158
    const-string v2, "Reason"

    iput-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;

    .line 175
    :cond_2
    :goto_0
    const-string v2, "BluetoothBppPrinting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDialogType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmNotificaitonId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mNotificationId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmPercentage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmFileName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmReason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput-boolean v5, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->clicked:Z

    .line 180
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->setUpDialog()V

    .line 182
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.mediatek.bluetooth.bppprinting.action.PRINTING_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    return-void

    .line 160
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 161
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.mediatek.bluetooth.bppprinting.extra.DIALOG_TYPE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    .line 165
    const-string v2, "com.mediatek.bluetooth.bppprinting.extra.PERCENTAGE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentage:I

    .line 166
    const-string v2, "com.mediatek.bluetooth.bppprinting.extra.NOTIFICATION_ID"

    iget v3, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mNotificationId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mNotificationId:I

    .line 167
    const-string v2, "com.mediatek.bluetooth.bppprinting.extra.FILE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;

    .line 168
    const-string v2, "com.mediatek.bluetooth.bppprinting.extra.REASON"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;

    .line 169
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 170
    const-string v2, "FileName"

    iput-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;

    .line 171
    :cond_4
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 172
    const-string v2, "Reason"

    iput-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "BluetoothBppPrinting"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 196
    const-string v0, "BluetoothBppPrinting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState, clicked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->clicked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v0, "clicked"

    iget-boolean v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->clicked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    const-string v0, "com.mediatek.bluetooth.bppprinting.extra.DIALOG_TYPE"

    iget v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    const-string v0, "com.mediatek.bluetooth.bppprinting.extra.PERCENTAGE"

    iget v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string v0, "com.mediatek.bluetooth.bppprinting.extra.NOTIFICATION_ID"

    iget v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mNotificationId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string v0, "com.mediatek.bluetooth.bppprinting.extra.FILE_NAME"

    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "com.mediatek.bluetooth.bppprinting.extra.REASON"

    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 187
    const-string v0, "BluetoothBppPrinting"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 190
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->updateProgressbar()V

    .line 191
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->updateButton()V

    .line 192
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "BluetoothBppPrinting"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 219
    return-void
.end method
