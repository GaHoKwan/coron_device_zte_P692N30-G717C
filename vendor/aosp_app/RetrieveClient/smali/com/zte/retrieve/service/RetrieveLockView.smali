.class public Lcom/zte/retrieve/service/RetrieveLockView;
.super Landroid/widget/LinearLayout;
.source "RetrieveLockView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;,
        Lcom/zte/retrieve/service/RetrieveLockView$MmsReceiver;
    }
.end annotation


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field private static final MMS_ACTION:Ljava/lang/String; = "zte.mms.intent.action.SEND_REQUEST"

.field private static final PHONE_NUMBER:Ljava/lang/String; = "number"


# instance fields
.field private btnCall:Landroid/widget/Button;

.field private btnOffhook:Landroid/widget/Button;

.field private isTryingUnlock:Z

.field private lockViewUpdateHandler:Landroid/os/Handler;

.field private mBmpPreview:Landroid/graphics/Bitmap;

.field private mCamera:Landroid/hardware/Camera;

.field private mContext:Landroid/content/Context;

.field private mInputCnt:I

.field private mJpeg:Landroid/hardware/Camera$PictureCallback;

.field private mMmsReceiver:Lcom/zte/retrieve/service/RetrieveLockView$MmsReceiver;

.field private mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;

.field private mPreviewRunning:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private picFileNamePrefix:Ljava/lang/String;

.field private stateListner:Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zte/retrieve/service/instruct/InstructionOperator;)V
    .locals 8
    .parameter "context"
    .parameter "operator"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    iput v6, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mInputCnt:I

    .line 69
    const-string v5, "/ztePic"

    iput-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView;->picFileNamePrefix:Ljava/lang/String;

    .line 71
    iput-boolean v6, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mPreviewRunning:Z

    .line 81
    iput-object v7, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mBmpPreview:Landroid/graphics/Bitmap;

    .line 175
    new-instance v5, Lcom/zte/retrieve/service/RetrieveLockView$1;

    invoke-direct {v5, p0}, Lcom/zte/retrieve/service/RetrieveLockView$1;-><init>(Lcom/zte/retrieve/service/RetrieveLockView;)V

    iput-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView;->lockViewUpdateHandler:Landroid/os/Handler;

    .line 388
    new-instance v5, Lcom/zte/retrieve/service/RetrieveLockView$2;

    invoke-direct {v5, p0}, Lcom/zte/retrieve/service/RetrieveLockView$2;-><init>(Lcom/zte/retrieve/service/RetrieveLockView;)V

    iput-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mJpeg:Landroid/hardware/Camera$PictureCallback;

    .line 85
    iput-object p1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    .line 88
    const-string v5, "RetrieveLockView start"

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 90
    const v5, 0x7f030010

    invoke-static {p1, v5, v7}, Lcom/zte/retrieve/service/RetrieveLockView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {p0, v5, v6}, Lcom/zte/retrieve/service/RetrieveLockView;->addView(Landroid/view/View;I)V

    .line 92
    const v5, 0x7f090033

    invoke-virtual {p0, v5}, Lcom/zte/retrieve/service/RetrieveLockView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    .line 93
    .local v3, surfaceView:Landroid/view/SurfaceView;
    const v5, 0x7f090030

    invoke-virtual {p0, v5}, Lcom/zte/retrieve/service/RetrieveLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 94
    .local v0, btnOk:Landroid/widget/Button;
    const v5, 0x7f090031

    invoke-virtual {p0, v5}, Lcom/zte/retrieve/service/RetrieveLockView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView;->btnCall:Landroid/widget/Button;

    .line 95
    const v5, 0x7f09002f

    invoke-virtual {p0, v5}, Lcom/zte/retrieve/service/RetrieveLockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 96
    .local v1, etFuncPassword:Landroid/widget/EditText;
    const v5, 0x7f09002e

    invoke-virtual {p0, v5}, Lcom/zte/retrieve/service/RetrieveLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 97
    .local v4, tvError:Landroid/widget/TextView;
    const v5, 0x7f090032

    invoke-virtual {p0, v5}, Lcom/zte/retrieve/service/RetrieveLockView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView;->btnOffhook:Landroid/widget/Button;

    .line 98
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 99
    .local v2, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 100
    const/4 v5, 0x3

    invoke-interface {v2, v5}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 102
    new-instance v5, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;

    invoke-direct {v5, p0, v7}, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;-><init>(Lcom/zte/retrieve/service/RetrieveLockView;Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;)V

    iput-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView;->stateListner:Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;

    .line 103
    iget-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 104
    iget-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/zte/retrieve/service/RetrieveLockView;->stateListner:Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 106
    new-instance v5, Lcom/zte/retrieve/service/RetrieveLockView$3;

    invoke-direct {v5, p0, v0, v4, v1}, Lcom/zte/retrieve/service/RetrieveLockView$3;-><init>(Lcom/zte/retrieve/service/RetrieveLockView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    new-instance v5, Lcom/zte/retrieve/service/RetrieveLockView$4;

    invoke-direct {v5, p0, v1, v4}, Lcom/zte/retrieve/service/RetrieveLockView$4;-><init>(Lcom/zte/retrieve/service/RetrieveLockView;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v5, p0, Lcom/zte/retrieve/service/RetrieveLockView;->btnOffhook:Landroid/widget/Button;

    new-instance v6, Lcom/zte/retrieve/service/RetrieveLockView$5;

    invoke-direct {v6, p0}, Lcom/zte/retrieve/service/RetrieveLockView$5;-><init>(Lcom/zte/retrieve/service/RetrieveLockView;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-direct {p0}, Lcom/zte/retrieve/service/RetrieveLockView;->setCallOwnerBtn()V

    .line 172
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->btnOffhook:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->btnCall:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$10(Lcom/zte/retrieve/service/RetrieveLockView;)Lcom/zte/retrieve/service/instruct/InstructionOperator;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    return-object v0
.end method

.method static synthetic access$11(Lcom/zte/retrieve/service/RetrieveLockView;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$12(Lcom/zte/retrieve/service/RetrieveLockView;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/zte/retrieve/service/RetrieveLockView;->unRegCallListener()V

    return-void
.end method

.method static synthetic access$13(Lcom/zte/retrieve/service/RetrieveLockView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->isTryingUnlock:Z

    return-void
.end method

.method static synthetic access$14(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$15(Lcom/zte/retrieve/service/RetrieveLockView;)Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->stateListner:Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;

    return-object v0
.end method

.method static synthetic access$16(Lcom/zte/retrieve/service/RetrieveLockView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mInputCnt:I

    return v0
.end method

.method static synthetic access$17(Lcom/zte/retrieve/service/RetrieveLockView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mInputCnt:I

    return-void
.end method

.method static synthetic access$18(Lcom/zte/retrieve/service/RetrieveLockView;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/zte/retrieve/service/RetrieveLockView;->setTopActivityChangedListener()V

    return-void
.end method

.method static synthetic access$19(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/content/ComponentName;
    .locals 1
    .parameter

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/zte/retrieve/service/RetrieveLockView;->getTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/zte/retrieve/service/RetrieveLockView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/zte/retrieve/service/RetrieveLockView;->getStoreDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$21(Lcom/zte/retrieve/service/RetrieveLockView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mBmpPreview:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$3(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mBmpPreview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zte/retrieve/service/RetrieveLockView;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/service/RetrieveLockView;->savePicToSdcard(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/zte/retrieve/service/RetrieveLockView;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/service/RetrieveLockView;->storePicInDatabase(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/zte/retrieve/service/RetrieveLockView;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/RetrieveLockView;->sendMMS(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$7(Lcom/zte/retrieve/service/RetrieveLockView;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/zte/retrieve/service/RetrieveLockView;->unregMmsReceiver()V

    return-void
.end method

.method static synthetic access$8(Lcom/zte/retrieve/service/RetrieveLockView;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->isTryingUnlock:Z

    return v0
.end method

.method static synthetic access$9(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->lockViewUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getCurrentDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 288
    new-instance v0, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    .line 289
    .local v0, curDate:Ljava/sql/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddhhmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 290
    .local v1, dateFormatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getStoreDirectory()Ljava/lang/String;
    .locals 8

    .prologue
    .line 295
    const/4 v2, 0x0

    .line 296
    .local v2, picFilePath:Ljava/lang/String;
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/retrieve/controller/Controller;->getStorage()Lcom/zte/retrieve/service/format/FormatStorageManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/retrieve/service/format/FormatStorageManager;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, sdCardState:Ljava/lang/String;
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/retrieve/controller/Controller;->getStorage()Lcom/zte/retrieve/service/format/FormatStorageManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/retrieve/service/format/FormatStorageManager;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, fileCardPath:Ljava/lang/String;
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/retrieve/controller/Controller;->getStorage()Lcom/zte/retrieve/service/format/FormatStorageManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/retrieve/service/format/FormatStorageManager;->getVirtualStorageState()Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, virtualStatus:Ljava/lang/String;
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/retrieve/controller/Controller;->getStorage()Lcom/zte/retrieve/service/format/FormatStorageManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/retrieve/service/format/FormatStorageManager;->getVirtualStorageDirectory()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, fileVirtualPath:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "external sdcard is valid, fileCardPath="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 305
    move-object v2, v0

    .line 314
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zte/retrieve/service/RetrieveLockView;->picFileNamePrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/zte/retrieve/service/RetrieveLockView;->getCurrentDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, picName:Ljava/lang/String;
    return-object v3

    .line 306
    .end local v3           #picName:Ljava/lang/String;
    :cond_0
    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "external sdcard is invalid,try virtual card,fileVirtualPath="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 308
    move-object v2, v1

    goto :goto_0

    .line 310
    :cond_1
    const-string v6, "can not store pic"

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 311
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getTopActivity()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 252
    :try_start_0
    iget-object v3, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 253
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 254
    .local v1, cn:Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TOP___ACTIVITY === "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #cn:Landroid/content/ComponentName;
    :goto_0
    return-object v1

    .line 256
    :catch_0
    move-exception v2

    .line 257
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 259
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private regMmsReceiver()V
    .locals 3

    .prologue
    .line 568
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 569
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.zte.retrieve.MMS_FEEDBACK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    new-instance v1, Lcom/zte/retrieve/service/RetrieveLockView$MmsReceiver;

    invoke-direct {v1, p0}, Lcom/zte/retrieve/service/RetrieveLockView$MmsReceiver;-><init>(Lcom/zte/retrieve/service/RetrieveLockView;)V

    iput-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mMmsReceiver:Lcom/zte/retrieve/service/RetrieveLockView$MmsReceiver;

    .line 571
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mMmsReceiver:Lcom/zte/retrieve/service/RetrieveLockView$MmsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 572
    return-void
.end method

.method private savePicToSdcard(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 7
    .parameter "pic"
    .parameter "picStorePath"

    .prologue
    const/4 v4, 0x0

    .line 321
    const/4 v2, 0x0

    .line 323
    .local v2, os:Ljava/io/OutputStream;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v3, v4

    .line 342
    :goto_0
    return-object v3

    .line 326
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, destFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 328
    const-string v5, "the same picture is exist,delete it"

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 332
    :cond_2
    :try_start_0
    const-string v5, "store success"

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 333
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v2           #os:Ljava/io/OutputStream;
    .local v3, os:Ljava/io/OutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 335
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 336
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 342
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    goto :goto_0

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, e:Ljava/io/IOException;
    :goto_1
    const-string v5, "store failed"

    invoke-static {v5}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    move-object v3, v4

    .line 339
    goto :goto_0

    .line 337
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private sendMMS(Landroid/net/Uri;)V
    .locals 3
    .parameter "dataUri"

    .prologue
    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 373
    .local v0, intent:Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 377
    :cond_0
    const-string v1, "zte.mms.intent.action.SEND_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v1, "number"

    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->getSecurityNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string v1, "image/jpeg"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    if-eqz p1, :cond_1

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendMMS broadcast, dataUri = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 383
    invoke-direct {p0}, Lcom/zte/retrieve/service/RetrieveLockView;->regMmsReceiver()V

    .line 385
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " toNumber"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->getSecurityNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCallOwnerBtn()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->btnCall:Landroid/widget/Button;

    new-instance v1, Lcom/zte/retrieve/service/RetrieveLockView$7;

    invoke-direct {v1, p0}, Lcom/zte/retrieve/service/RetrieveLockView$7;-><init>(Lcom/zte/retrieve/service/RetrieveLockView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    return-void
.end method

.method private setTopActivityChangedListener()V
    .locals 6

    .prologue
    .line 208
    new-instance v1, Lcom/zte/retrieve/service/RetrieveLockView$6;

    invoke-direct {v1, p0}, Lcom/zte/retrieve/service/RetrieveLockView$6;-><init>(Lcom/zte/retrieve/service/RetrieveLockView;)V

    .line 240
    .local v1, task:Ljava/util/TimerTask;
    new-instance v0, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->timer:Ljava/util/Timer;

    .line 241
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 242
    return-void
.end method

.method private storePicInDatabase(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .parameter "pic"
    .parameter "picStorePath"

    .prologue
    .line 347
    const-string v2, "PictureCallback store image to db"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 348
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 349
    :cond_0
    const-string v2, "storePicInDatabase null param"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 350
    const/4 v1, 0x0

    .line 361
    :goto_0
    return-object v1

    .line 353
    :cond_1
    iget-object v2, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ztePic"

    .line 354
    const-string v4, "candid photo,send to security number"

    .line 353
    invoke-static {v2, p1, v3, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 358
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 359
    iget-object v2, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private unRegCallListener()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->stateListner:Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->stateListner:Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 248
    :cond_0
    return-void
.end method

.method private unregMmsReceiver()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mMmsReceiver:Lcom/zte/retrieve/service/RetrieveLockView$MmsReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 576
    return-void
.end method


# virtual methods
.method public getPreviewFrame([BLandroid/hardware/Camera;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v11, 0x0

    .line 459
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    .line 460
    .local v9, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    .line 461
    .local v2, format:I
    const/4 v7, 0x0

    .line 464
    .local v7, mBitmap:Landroid/graphics/Bitmap;
    const/16 v1, 0x11

    if-ne v2, v1, :cond_0

    .line 468
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    .line 469
    .local v3, w:I
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    .line 471
    .local v4, h:I
    new-instance v0, Landroid/graphics/YuvImage;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 473
    .local v0, yuv_image:Landroid/graphics/YuvImage;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v11, v11, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 474
    .local v10, rect:Landroid/graphics/Rect;
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 475
    .local v8, output_stream:Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x64

    invoke-virtual {v0, v10, v1, v8}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 477
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-static {v1, v11, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 479
    :try_start_0
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local v0           #yuv_image:Landroid/graphics/YuvImage;
    .end local v3           #w:I
    .end local v4           #h:I
    .end local v8           #output_stream:Ljava/io/ByteArrayOutputStream;
    .end local v10           #rect:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object v7

    .line 480
    .restart local v0       #yuv_image:Landroid/graphics/YuvImage;
    .restart local v3       #w:I
    .restart local v4       #h:I
    .restart local v8       #output_stream:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #rect:Landroid/graphics/Rect;
    :catch_0
    move-exception v6

    .line 481
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5
    .parameter "success"
    .parameter "camera"

    .prologue
    .line 552
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LockView onAutoFocus, success = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 560
    const-string v1, "onAutoFocus is success"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mJpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mPreviewRunning:Z

    if-nez v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lcom/zte/retrieve/service/RetrieveLockView$8;

    invoke-direct {v2, p0}, Lcom/zte/retrieve/service/RetrieveLockView$8;-><init>(Lcom/zte/retrieve/service/RetrieveLockView;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 506
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mPreviewRunning:Z

    .line 513
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 6
    .parameter "holder"

    .prologue
    .line 433
    :try_start_0
    iget-object v4, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mCamera:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 434
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 435
    .local v2, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 437
    .local v1, cameraCount:I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get cameraCount is"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 438
    const/4 v0, 0x0

    .local v0, camIdx:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 449
    iget-object v4, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    .line 450
    iget-object v4, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 456
    .end local v0           #camIdx:I
    .end local v1           #cameraCount:I
    .end local v2           #cameraInfo:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    :goto_1
    return-void

    .line 439
    .restart local v0       #camIdx:I
    .restart local v1       #cameraCount:I
    .restart local v2       #cameraInfo:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 440
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cameraInfo is"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 443
    iget-boolean v4, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mPreviewRunning:Z

    if-nez v4, :cond_2

    .line 444
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    .end local v0           #camIdx:I
    .end local v1           #cameraCount:I
    .end local v2           #cameraInfo:Landroid/hardware/Camera$CameraInfo;
    :catch_0
    move-exception v3

    .line 454
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 521
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 522
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mPreviewRunning:Z

    .line 523
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 524
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public takePicture()V
    .locals 2

    .prologue
    .line 538
    const-string v1, "LockView start takePicture"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 541
    const-string v1, "LockView takePicture, mCamera != null"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
