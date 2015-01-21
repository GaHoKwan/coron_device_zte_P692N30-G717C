.class public Lcom/mediatek/settings/MultipleSimActivity;
.super Lcom/mediatek/settings/SelectSimCardActivity;
.source "MultipleSimActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;
    }
.end annotation


# static fields
.field private static final ALERT_DIALOG:I = 0xc8

.field private static final ALERT_DIALOG_DEFAULT:I = 0x12c

.field public static final INIT_ARRAY:Ljava/lang/String; = "INIT_ARRAY"

.field public static final INIT_ARRAY_VALUE:Ljava/lang/String; = "INIT_ARRAY_VALUE"

.field public static final INIT_BASE_KEY:Ljava/lang/String; = "INIT_BASE_KEY"

.field public static final INIT_FEATURE_NAME:Ljava/lang/String; = "INIT_FEATURE_NAME"

.field public static final INTENT_KEY:Ljava/lang/String; = "ITEM_TYPE"

.field public static final LIST_TITLE:Ljava/lang/String; = "LIST_TITLE_NAME"

.field public static final NETWORK_MODE_NAME:Ljava/lang/String; = "NETWORK_MODE"

.field private static final PROGRESS_DIALOG:I = 0x64

.field private static final SELECT_DEFAULT_PICTURE:Ljava/lang/String; = "0"

.field private static final SELECT_DEFAULT_PICTURE2:Ljava/lang/String; = "0"

.field private static final SELECT_MY_PICTURE:Ljava/lang/String; = "2"

.field private static final SELECT_MY_PICTURE2:Ljava/lang/String; = "1"

.field public static final SUB_TITLE_NAME:Ljava/lang/String; = "sub_title_name"

.field private static final TAG:Ljava/lang/String; = "MultipleSimActivity"

.field public static final VT_FEATURE_NAME:Ljava/lang/String; = "VT"


# instance fields
.field private mBaseKey:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFeatureName:Ljava/lang/String;

.field private mImage:Landroid/widget/ImageView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mListEntries:I

.field private mListTitle:I

.field private mListValues:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

.field private final mReceiver:Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;

.field private mSimNumbers:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVTSlotId:I

.field private mVTWhichToSave:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/mediatek/settings/SelectSimCardActivity;-><init>()V

    .line 83
    iput v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTWhichToSave:I

    .line 84
    iput v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTSlotId:I

    .line 86
    iput v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimNumbers:I

    .line 93
    iput-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 105
    new-instance v0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;-><init>(Lcom/mediatek/settings/MultipleSimActivity;Lcom/mediatek/settings/MultipleSimActivity$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mReceiver:Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;

    .line 148
    new-instance v0, Lcom/mediatek/settings/MultipleSimActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/MultipleSimActivity$1;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    iput-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/MultipleSimActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/MultipleSimActivity;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/MultipleSimActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/mediatek/settings/MultipleSimActivity;->getNetworkModeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/MultipleSimActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/MultipleSimActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->updatePreferenceEnableState()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/settings/MultipleSimActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/settings/MultipleSimActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getNetworkModeName(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 573
    const-string v0, "preferred_network_mode"

    .line 574
    .local v0, name:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 583
    :goto_0
    :pswitch_0
    return-object v0

    .line 578
    :pswitch_1
    const-string v0, "preferred_network_mode_2"

    .line 579
    goto :goto_0

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 599
    const-string v0, "MultipleSimActivity"

    invoke-static {v0, p1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method private showDialogPic(Ljava/lang/String;I)V
    .locals 2
    .parameter "filename"
    .parameter "dialog"

    .prologue
    .line 461
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    .line 462
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 463
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 464
    invoke-virtual {p0, p2}, Landroid/app/Activity;->showDialog(I)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[showDialogPic][filename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[showDialogPic][mBitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[showDialogPic][mImage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method private updatePreferenceEnableState()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 516
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 519
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    .line 520
    .local v1, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v7, v7, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v7, :cond_0

    .line 521
    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local v1           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 523
    .restart local v1       #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_0
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    if-nez v7, :cond_2

    move v3, v8

    .line 524
    .local v3, isIdle:Z
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 525
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .local v4, p:Landroid/preference/Preference;
    move-object v7, v4

    .line 526
    check-cast v7, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    invoke-virtual {v7}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v6

    .line 527
    .local v6, slotId:I
    if-eqz v1, :cond_1

    .line 528
    const-string v7, "NETWORK_MODE"

    iget-object v10, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 529
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    move v7, v8

    :goto_2
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 533
    :goto_3
    invoke-virtual {v4}, Landroid/preference/Preference;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 534
    instance-of v7, v4, Landroid/preference/ListPreference;

    if-eqz v7, :cond_1

    .line 535
    check-cast v4, Landroid/preference/ListPreference;

    .end local v4           #p:Landroid/preference/Preference;
    invoke-virtual {v4}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 536
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 537
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 524
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2           #i:I
    .end local v3           #isIdle:Z
    .end local v6           #slotId:I
    :cond_2
    move v3, v9

    .line 523
    goto :goto_0

    .restart local v2       #i:I
    .restart local v3       #isIdle:Z
    .restart local v4       #p:Landroid/preference/Preference;
    .restart local v6       #slotId:I
    :cond_3
    move v7, v9

    .line 529
    goto :goto_2

    .line 531
    :cond_4
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 543
    .end local v4           #p:Landroid/preference/Preference;
    .end local v6           #slotId:I
    :cond_5
    return-void
.end method


# virtual methods
.method public getNetworkMode(II)I
    .locals 5
    .parameter "buttonNetworkMode"
    .parameter "slotId"

    .prologue
    .line 295
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/mediatek/settings/MultipleSimActivity;->getNetworkModeName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 297
    .local v1, settingsNetworkMode:I
    move v0, v1

    .line 298
    .local v0, modemNetworkMode:I
    if-eq p1, v1, :cond_0

    .line 299
    packed-switch p1, :pswitch_data_0

    .line 325
    const/4 v0, 0x0

    .line 328
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/mediatek/settings/MultipleSimActivity;->getNetworkModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    return v0

    .line 301
    :pswitch_0
    const/4 v0, 0x7

    .line 302
    goto :goto_0

    .line 304
    :pswitch_1
    const/4 v0, 0x6

    .line 305
    goto :goto_0

    .line 307
    :pswitch_2
    const/4 v0, 0x5

    .line 308
    goto :goto_0

    .line 310
    :pswitch_3
    const/4 v0, 0x4

    .line 311
    goto :goto_0

    .line 313
    :pswitch_4
    const/4 v0, 0x3

    .line 314
    goto :goto_0

    .line 316
    :pswitch_5
    const/4 v0, 0x2

    .line 317
    goto :goto_0

    .line 319
    :pswitch_6
    const/4 v0, 0x1

    .line 320
    goto :goto_0

    .line 322
    :pswitch_7
    const/4 v0, 0x0

    .line 323
    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v4, 0xc8

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 473
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 503
    :goto_0
    return-void

    .line 477
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 480
    :pswitch_0
    :try_start_0
    const-string v2, "data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 481
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 482
    iget v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTWhichToSave:I

    if-nez v2, :cond_2

    .line 483
    iget v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTSlotId:I

    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 487
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 488
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    :goto_2
    iget v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTWhichToSave:I

    if-nez v2, :cond_3

    .line 495
    iget v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTSlotId:I

    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogPic(Ljava/lang/String;I)V

    goto :goto_0

    .line 485
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTSlotId:I

    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 491
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 492
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 497
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    iget v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTSlotId:I

    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogPic(Ljava/lang/String;I)V

    goto :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0xbcd
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, -0x1

    .line 165
    invoke-super {p0, p1}, Lcom/mediatek/settings/SelectSimCardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INIT_FEATURE_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INIT_BASE_KEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "LIST_TITLE_NAME"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListTitle:I

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INIT_ARRAY"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListEntries:I

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INIT_ARRAY_VALUE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListValues:I

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ITEM_TYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, itemType:Ljava/lang/String;
    const-string v2, "ListPreference"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    sget-object v2, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->Dialog:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/SelectSimCardActivity;->setWidgetViewType(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V

    .line 183
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 184
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 185
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 187
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 189
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_EF_CSP_CONTENT_NOTIFY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    :cond_0
    const-string v2, "NETWORK_MODE"

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mReceiver:Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 202
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 204
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 206
    :cond_2
    return-void

    .line 177
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_3
    const-string v2, "CheckBoxPreference"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 178
    sget-object v2, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->CheckBox:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/SelectSimCardActivity;->setWidgetViewType(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V

    goto :goto_0

    .line 180
    :cond_4
    sget-object v2, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->None:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/SelectSimCardActivity;->setWidgetViewType(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v5, 0x104000a

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreateDialog]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, dialog:Landroid/app/Dialog;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mBitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mImage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    move-object v1, v0

    .line 457
    .end local v0           #dialog:Landroid/app/Dialog;
    .local v1, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 390
    .end local v1           #dialog:Landroid/app/Dialog;
    .restart local v0       #dialog:Landroid/app/Dialog;
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 456
    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move-object v1, v0

    .line 457
    .end local v0           #dialog:Landroid/app/Dialog;
    .restart local v1       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 392
    .end local v1           #dialog:Landroid/app/Dialog;
    .restart local v0       #dialog:Landroid/app/Dialog;
    :sswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/Dialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .restart local v0       #dialog:Landroid/app/Dialog;
    move-object v2, v0

    .line 393
    check-cast v2, Landroid/app/ProgressDialog;

    const v3, 0x7f0801ba

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v2, v0

    .line 394
    check-cast v2, Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    move-object v2, v0

    .line 395
    check-cast v2, Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    .line 398
    :sswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08003b

    new-instance v4, Lcom/mediatek/settings/MultipleSimActivity$3;

    invoke-direct {v4, p0}, Lcom/mediatek/settings/MultipleSimActivity$3;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/mediatek/settings/MultipleSimActivity$2;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/MultipleSimActivity$2;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move-object v2, v0

    .line 421
    check-cast v2, Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 422
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 423
    new-instance v2, Lcom/mediatek/settings/MultipleSimActivity$4;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/MultipleSimActivity$4;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 435
    :sswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/mediatek/settings/MultipleSimActivity$5;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/MultipleSimActivity$5;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move-object v2, v0

    .line 440
    check-cast v2, Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 441
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 442
    new-instance v2, Lcom/mediatek/settings/MultipleSimActivity$6;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/MultipleSimActivity$6;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_1

    .line 390
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 506
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 507
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mReceiver:Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 509
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 513
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 217
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 219
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 220
    const/4 v1, 0x1

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/16 v9, 0x12c

    const/16 v8, 0xc8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 334
    move-object v4, p1

    check-cast v4, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    invoke-virtual {v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v3

    .line 336
    .local v3, slotId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[newValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mFeatureName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 340
    const-string v4, "VT"

    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 341
    invoke-static {v3}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile(I)V

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "button_vt_replace_expand_key_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 343
    iput v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTWhichToSave:I

    .line 344
    iput v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTSlotId:I

    .line 345
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v9}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogPic(Ljava/lang/String;I)V

    .line 377
    .end local p2
    :cond_0
    :goto_0
    return v7

    .line 347
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    invoke-static {v3}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v8}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogPic(Ljava/lang/String;I)V

    goto :goto_0

    .line 351
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "button_vt_replace_peer_expand_key_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    iput v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTSlotId:I

    .line 354
    iput v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTWhichToSave:I

    .line 355
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 356
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v9}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogPic(Ljava/lang/String;I)V

    goto :goto_0

    .line 357
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    invoke-static {v3}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v8}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogPic(Ljava/lang/String;I)V

    goto :goto_0

    .line 362
    :cond_4
    const-string v4, "NETWORK_MODE"

    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 363
    iget-object v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/mediatek/settings/MultipleSimActivity;->getNetworkModeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 365
    .local v2, settingsNetworkMode:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current network mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 366
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/mediatek/settings/MultipleSimActivity;->getNetworkMode(II)I

    move-result v1

    .line 367
    .local v1, networkMode:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new network mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 368
    if-eq v2, v1, :cond_0

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.phone.NETWORK_MODE_CHANGE"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 370
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.android.phone.OLD_NETWORK_MODE"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    const-string v4, "com.android.phone.NETWORK_MODE_CHANGE"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    const-string v4, "simId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 374
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 550
    const-string v6, "onPreferenceTreeClick..."

    invoke-direct {p0, v6}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 551
    instance-of v6, p2, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    sget-object v7, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->CheckBox:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    if-ne v6, v7, :cond_2

    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, key:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, mAutoDropBack:Z
    move-object v2, p2

    .line 554
    check-cast v2, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 555
    .local v2, simInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.android.phone_preferences"

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 557
    .local v3, sp:Landroid/content/SharedPreferences;
    if-nez v3, :cond_0

    .line 558
    const-string v5, "can not find \'com.android.phone_preferences\'..."

    invoke-direct {p0, v5}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 569
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #mAutoDropBack:Z
    .end local v2           #simInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return v4

    .line 561
    .restart local v0       #key:Ljava/lang/String;
    .restart local v1       #mAutoDropBack:Z
    .restart local v2       #simInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .restart local v3       #sp:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 562
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 564
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceTreeClick, WidgetType.CheckBox, ischecked : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 565
    if-nez v1, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v2, v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setChecked(Z)V

    move v4, v5

    .line 566
    goto :goto_0

    .line 569
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #mAutoDropBack:Z
    .end local v2           #simInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/mediatek/settings/SelectSimCardActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, -0x1

    .line 238
    const-string v0, "-----------[onRestoreInstanceState]-----------"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 239
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 240
    const-string v0, "LIST_TITLE_NAME"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListTitle:I

    .line 241
    const-string v0, "INIT_ARRAY"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListEntries:I

    .line 242
    const-string v0, "INIT_ARRAY_VALUE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListValues:I

    .line 243
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->onResume()V

    .line 211
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->updatePreferenceEnableState()V

    .line 212
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 229
    const-string v0, "-----------[onSaveInstanceState]-----------"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 230
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 231
    const-string v0, "LIST_TITLE_NAME"

    iget v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListTitle:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-string v0, "INIT_ARRAY"

    iget v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListEntries:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    const-string v0, "INIT_ARRAY_VALUE"

    iget v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListValues:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 588
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 591
    const-string v0, "NETWORK_MODE"

    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    const-string v0, "onStop(),  finish self"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 596
    :cond_0
    return-void
.end method

.method protected setPreference(Lcom/mediatek/gemini/simui/SimCardInfoPreference;)V
    .locals 10
    .parameter "p"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 250
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 251
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 254
    :cond_0
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 256
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 257
    .local v4, sp:Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    sget-object v8, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->CheckBox:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    if-ne v7, v8, :cond_3

    .line 258
    const-string v7, "button_vt_auto_dropback_key"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :goto_0
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setChecked(Z)V

    .line 292
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v5, v6

    .line 258
    goto :goto_0

    .line 260
    :cond_3
    iget v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListTitle:I

    if-lez v5, :cond_4

    .line 261
    iget v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListTitle:I

    invoke-virtual {p1, v5}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 264
    :cond_4
    iget v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListEntries:I

    if-lez v5, :cond_5

    .line 265
    const v0, 0x7f09001d

    .line 266
    .local v0, entryLocal:I
    const-string v5, "NETWORK_MODE"

    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 267
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 272
    .end local v0           #entryLocal:I
    :cond_5
    :goto_2
    iget v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListValues:I

    if-lez v5, :cond_6

    .line 273
    const v1, 0x7f09001e

    .line 274
    .local v1, entryValueLocal:I
    const-string v5, "NETWORK_MODE"

    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 275
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 280
    .end local v1           #entryValueLocal:I
    :cond_6
    :goto_3
    const-string v5, "0"

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 281
    const-string v5, "NETWORK_MODE"

    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 282
    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/mediatek/settings/MultipleSimActivity;->getNetworkModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 285
    .local v3, settingsNetworkMode:I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_7

    .line 286
    const/4 v3, 0x0

    .line 288
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "settingsNetworkMode init value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 289
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 269
    .end local v3           #settingsNetworkMode:I
    .restart local v0       #entryLocal:I
    :cond_8
    iget v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListEntries:I

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    goto :goto_2

    .line 277
    .end local v0           #entryLocal:I
    .restart local v1       #entryValueLocal:I
    :cond_9
    iget v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListValues:I

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_3
.end method
