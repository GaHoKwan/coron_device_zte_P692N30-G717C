.class public Lcom/android/wifidirect/test/WifiOppTransferActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiOppTransferActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifidirect/test/WifiOppTransferActivity$WifiTransferContentObserver;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field public static final DIALOG_CONTACT_RECEIVE_COMPLETE_SUCCESS:I = 0x6

.field public static final DIALOG_CONTACT_SEND_COMPLETE_SUCCESS:I = 0x7

.field public static final DIALOG_RECEIVE_COMPLETE_FAIL:I = 0x2

.field public static final DIALOG_RECEIVE_COMPLETE_SUCCESS:I = 0x1

.field public static final DIALOG_RECEIVE_ONGOING:I = 0x0

.field public static final DIALOG_SEND_COMPLETE_FAIL:I = 0x5

.field public static final DIALOG_SEND_COMPLETE_SUCCESS:I = 0x4

.field public static final DIALOG_SEND_ONGOING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiOppTransferActivity"

.field private static final V:Z = true


# instance fields
.field mIsComplete:Z

.field private mLine1View:Landroid/widget/TextView;

.field private mLine2View:Landroid/widget/TextView;

.field private mLine3View:Landroid/widget/TextView;

.field private mLine5View:Landroid/widget/TextView;

.field private mObserver:Lcom/android/wifidirect/test/WifiOppTransferActivity$WifiTransferContentObserver;

.field private mPara:Lcom/android/internal/app/AlertController$AlertParams;

.field private mPercentView:Landroid/widget/TextView;

.field private mProgressTransfer:Landroid/widget/ProgressBar;

.field private mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

.field private mUri:Landroid/net/Uri;

.field private mView:Landroid/view/View;

.field private mWhichDialog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/wifidirect/test/WifiOppTransferActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->updateProgressbar()V

    return-void
.end method

.method private clientCancel()V
    .locals 0

    .prologue
    .line 590
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    .line 233
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    .line 234
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    .line 236
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->customizeViewContent()V

    .line 238
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->updateProgressbar()V

    .line 240
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private customizeViewContent()V
    .locals 8

    .prologue
    const v7, 0x7f0b000e

    const v4, 0x7f0b000f

    const v3, 0x7f0b000d

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 249
    iget v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 252
    const v1, 0x7f08003e

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mSendDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 255
    const v1, 0x7f08003f

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 258
    const v1, 0x7f080040

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-wide v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mTotalBytes:J

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 262
    iget v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    if-nez v1, :cond_4

    .line 263
    const v1, 0x7f080042

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .end local v0           #tmp:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v1, v1, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/wifidirect/test/WifiShare;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 366
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    :cond_3
    return-void

    .line 264
    .restart local v0       #tmp:Ljava/lang/String;
    :cond_4
    iget v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    if-eq v1, v5, :cond_5

    iget v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 266
    :cond_5
    const v1, 0x7f08004b

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 269
    .end local v0           #tmp:Ljava/lang/String;
    :cond_6
    iget v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_a

    .line 271
    :cond_7
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 272
    const v1, 0x7f08004d

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mReceiveDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .restart local v0       #tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 275
    const v1, 0x7f08003f

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 278
    const v1, 0x7f08004e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileType:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-wide v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mTotalBytes:J

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 282
    iget v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 283
    const v1, 0x7f08004f

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 284
    :cond_9
    iget v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 285
    const v1, 0x7f080050

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 288
    .end local v0           #tmp:Ljava/lang/String;
    :cond_a
    iget v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 289
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v1, v1, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    const/16 v2, 0x1ee

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v1, v1, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_d

    .line 291
    :cond_b
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 293
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v1, v1, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    const/16 v2, 0x1ee

    if-ne v1, v2, :cond_c

    .line 295
    const v1, 0x7f080038

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mSendDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .restart local v0       #tmp:Ljava/lang/String;
    :goto_3
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 304
    const v1, 0x7f080048

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 307
    const v1, 0x7f08006e

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-wide v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mTotalBytes:J

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :goto_4
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 323
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 299
    .end local v0           #tmp:Ljava/lang/String;
    :cond_c
    const v1, 0x7f08003a

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mSendDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #tmp:Ljava/lang/String;
    goto :goto_3

    .line 311
    .end local v0           #tmp:Ljava/lang/String;
    :cond_d
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 312
    const v1, 0x7f080047

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    .restart local v0       #tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 315
    const v1, 0x7f080048

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 318
    const v1, 0x7f080049

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    invoke-static {p0, v3}, Lcom/android/wifidirect/test/WifiOppUtility;->getStatusDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 324
    .end local v0           #tmp:Ljava/lang/String;
    :cond_e
    iget v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 325
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v1, v1, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    const/16 v2, 0x1ee

    if-eq v1, v2, :cond_f

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v1, v1, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_11

    .line 327
    :cond_f
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 329
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v1, v1, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    const/16 v2, 0x1ee

    if-ne v1, v2, :cond_10

    .line 331
    const v1, 0x7f080039

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mReceiveDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .restart local v0       #tmp:Ljava/lang/String;
    :goto_5
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 339
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :goto_6
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    .line 354
    const v1, 0x7f080058

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 361
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 335
    .end local v0           #tmp:Ljava/lang/String;
    :cond_10
    const v1, 0x7f08003c

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mReceiveDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #tmp:Ljava/lang/String;
    goto :goto_5

    .line 342
    .end local v0           #tmp:Ljava/lang/String;
    :cond_11
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    .line 343
    const v1, 0x7f080057

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mReceiveDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .restart local v0       #tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    .line 346
    const v1, 0x7f080049

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    invoke-static {p0, v3}, Lcom/android/wifidirect/test/WifiOppUtility;->getStatusDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method private displayWhichDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 145
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v0, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mDirection:I

    .line 146
    .local v0, direction:I
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/wifidirect/test/WifiShare;->isStatusSuccess(I)Z

    move-result v2

    .line 147
    .local v2, isSuccess:Z
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/wifidirect/test/WifiShare;->isStatusCompleted(I)Z

    move-result v1

    .line 149
    .local v1, isComplete:Z
    if-ne v0, v5, :cond_4

    .line 150
    if-ne v1, v5, :cond_3

    .line 151
    if-ne v2, v5, :cond_2

    .line 157
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileType:Ljava/lang/String;

    const-string v4, "text/x-vcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    .line 183
    :cond_0
    :goto_0
    const-string v3, "WifiOppTransferActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " WhichDialog/dir/isComplete/failOrSuccess"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void

    .line 161
    :cond_1
    iput v5, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 164
    :cond_2
    if-nez v2, :cond_0

    .line 165
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 167
    :cond_3
    if-nez v1, :cond_0

    .line 168
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 170
    :cond_4
    if-nez v0, :cond_0

    .line 171
    if-ne v1, v5, :cond_6

    .line 172
    if-ne v2, v5, :cond_5

    .line 173
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 175
    :cond_5
    if-nez v2, :cond_0

    .line 176
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 178
    :cond_6
    if-nez v1, :cond_0

    .line 179
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    goto :goto_0
.end method

.method private serverCancel()V
    .locals 2

    .prologue
    .line 594
    const-string v0, "WifiOppTransferActivity"

    const-string v1, "Error: Can not get data from db"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void
.end method

.method private setUpDialog()V
    .locals 5

    .prologue
    const v4, 0x7f080051

    const v3, 0x7f08004c

    const v2, 0x1080027

    .line 189
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    .line 190
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f020006

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 191
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f08003d

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 193
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f080044

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 195
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 196
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f080043

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 197
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 225
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 226
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->setupAlert()V

    .line 227
    return-void

    .line 198
    :cond_2
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 199
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 200
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 201
    :cond_3
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 202
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 203
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f08004a

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 204
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 205
    :cond_4
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 206
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 207
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 208
    :cond_5
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 209
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 212
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f08005a

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 213
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 215
    :cond_6
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 216
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 217
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 220
    :cond_7
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 222
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_0
.end method

.method private updateButton()V
    .locals 7

    .prologue
    const v6, 0x7f08004c

    const v5, 0x1080027

    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 548
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 549
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 553
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 554
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f08004a

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 557
    :cond_2
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 558
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080051

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 561
    :cond_3
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 562
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 563
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080059

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f08005a

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 568
    :cond_4
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 571
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 580
    :cond_5
    iget v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080051

    invoke-virtual {p0, v1}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateProgressbar()V
    .locals 5

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/wifidirect/test/WifiOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/wifidirect/test/WifiOppTransferInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    .line 511
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    if-nez v0, :cond_1

    .line 512
    const-string v0, "WifiOppTransferActivity"

    const-string v1, "Error: Can not get data from db"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-wide v0, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mTotalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 525
    :goto_1
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-wide v1, v1, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mCurrentBytes:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 527
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-wide v1, v1, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mTotalBytes:J

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-wide v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mCurrentBytes:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/wifidirect/test/WifiOppUtility;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mIsComplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v0, v0, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/wifidirect/test/WifiShare;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->displayWhichDialog()V

    .line 538
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->updateButton()V

    .line 540
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->customizeViewContent()V

    goto :goto_0

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-wide v1, v1, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mTotalBytes:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 371
    packed-switch p2, :pswitch_data_0

    .line 503
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->finish()V

    .line 504
    return-void

    .line 373
    :pswitch_0
    iget v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    if-ne v3, v5, :cond_1

    .line 375
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v4, v4, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v5, v5, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    iget-object v6, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/wifidirect/test/WifiOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    .line 382
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v4, v4, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mID:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 384
    :cond_1
    iget v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    if-ne v3, v4, :cond_2

    .line 391
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v4, v4, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mID:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 395
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    invoke-static {p0, v3}, Lcom/android/wifidirect/test/WifiOppUtility;->retryTransfer(Landroid/content/Context;Lcom/android/wifidirect/test/WifiOppTransferInfo;)V

    .line 400
    const v3, 0x7f08005e

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "device name wait complete"

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 408
    :cond_2
    iget v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 410
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v4, v4, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mID:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 413
    :cond_3
    iget v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 415
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/wifidirect/test/WifiOppUtility;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/wifidirect/test/WifiOppUtility;->getObjectTypeFromFileExt(Ljava/lang/String;)I

    move-result v2

    .line 417
    .local v2, objType:I
    if-ne v5, v2, :cond_4

    .line 428
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v3, v3, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 429
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v4, v4, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 430
    .local v0, lookupUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v4, v4, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mFileType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v5, v5, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    invoke-static {p0, v3, v4, v5, v7}, Lcom/android/wifidirect/test/WifiOppUtility;->openReceivedUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/content/Intent;)V

    .line 474
    .end local v0           #lookupUri:Landroid/net/Uri;
    :cond_4
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v4, v4, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mID:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 480
    .end local v2           #objType:I
    :pswitch_1
    iget v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    if-ne v3, v8, :cond_8

    .line 482
    :cond_5
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 484
    const-string v1, ""

    .line 485
    .local v1, msg:Ljava/lang/String;
    iget v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    if-nez v3, :cond_7

    .line 486
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->clientCancel()V

    .line 487
    const v3, 0x7f08005d

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v5, v5, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mSendDeviceName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 492
    :cond_6
    :goto_1
    const-string v3, "WifiOppTransferActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "indicator stop message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 495
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v4, v4, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mID:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 488
    :cond_7
    iget v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    if-ne v3, v8, :cond_6

    .line 489
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->serverCancel()V

    .line 490
    const v3, 0x7f080060

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget-object v5, v5, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mReceiveDeviceName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 497
    .end local v1           #msg:Ljava/lang/String;
    :cond_8
    iget v3, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    if-ne v3, v4, :cond_0

    goto/16 :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 104
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mUri:Landroid/net/Uri;

    .line 106
    new-instance v1, Lcom/android/wifidirect/test/WifiOppTransferInfo;

    invoke-direct {v1}, Lcom/android/wifidirect/test/WifiOppTransferInfo;-><init>()V

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    .line 107
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/wifidirect/test/WifiOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/wifidirect/test/WifiOppTransferInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    .line 108
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    if-nez v1, :cond_0

    .line 109
    const-string v1, "WifiOppTransferActivity"

    const-string v2, "Error: Can not get data from db"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->finish()V

    .line 132
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mTransInfo:Lcom/android/wifidirect/test/WifiOppTransferInfo;

    iget v1, v1, Lcom/android/wifidirect/test/WifiOppTransferInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/wifidirect/test/WifiShare;->isStatusCompleted(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mIsComplete:Z

    .line 116
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->displayWhichDialog()V

    .line 119
    iget-boolean v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mIsComplete:Z

    if-nez v1, :cond_1

    .line 120
    new-instance v1, Lcom/android/wifidirect/test/WifiOppTransferActivity$WifiTransferContentObserver;

    invoke-direct {v1, p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity$WifiTransferContentObserver;-><init>(Lcom/android/wifidirect/test/WifiOppTransferActivity;)V

    iput-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mObserver:Lcom/android/wifidirect/test/WifiOppTransferActivity$WifiTransferContentObserver;

    .line 121
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mObserver:Lcom/android/wifidirect/test/WifiOppTransferActivity$WifiTransferContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    :cond_1
    iget v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mWhichDialog:I

    if-eqz v1, :cond_2

    .line 131
    :cond_2
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->setUpDialog()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "WifiOppTransferActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mObserver:Lcom/android/wifidirect/test/WifiOppTransferActivity$WifiTransferContentObserver;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity;->mObserver:Lcom/android/wifidirect/test/WifiOppTransferActivity$WifiTransferContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 142
    return-void
.end method
