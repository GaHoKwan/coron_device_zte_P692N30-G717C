.class public Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;
.super Landroid/preference/PreferenceActivity;
.source "BluetoothBppPrintJobSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog$OnCopiesSetListener;


# static fields
.field public static final ACTION_ATTR_UPDATE:Ljava/lang/String; = "com.mediatek.bluetooth.bppprinting.action.ATTR_UPDATE"

.field private static final DIALOG_COPIESPICKER:I = 0x0

.field public static final EXTRA_EXCEPTION:Ljava/lang/String; = " com.mediatek.bluetooth.bppprintjobsettings.extra.exception"

.field public static final EXTRA_FILE_NAME:Ljava/lang/String; = " com.mediatek.bluetooth.bppprintjobsettings.extra.filename"

.field public static final EXTRA_NUMBER_COPIES:Ljava/lang/String; = " com.mediatek.bluetooth.bppprintjobsettings.extra.copies"

.field public static final EXTRA_ORIENTATION_SETTING:Ljava/lang/String; = " com.mediatek.bluetooth.bppprintjobsettings.extra.orientation"

.field public static final EXTRA_PAPER_SIZE:Ljava/lang/String; = " com.mediatek.bluetooth.bppprintjobsettings.extra.papersize"

.field public static final EXTRA_QUALITY_SETTING:Ljava/lang/String; = " com.mediatek.bluetooth.bppprintjobsettings.extra.quality"

.field public static final EXTRA_SHEET_SETTING:Ljava/lang/String; = " com.mediatek.bluetooth.bppprintjobsettings.extra.pagespersheet"

.field public static final EXTRA_SIDES_SETTING:Ljava/lang/String; = " com.mediatek.bluetooth.bppprintjobsettings.extra.sides"

.field private static final KEY_NUMBER_COPIES:Ljava/lang/String; = "number_of_copies_setting"

.field private static final KEY_ORIENTATION_SETTING:Ljava/lang/String; = "orientation_setting"

.field private static final KEY_PAPER_SIZE:Ljava/lang/String; = "paper_size_setting"

.field private static final KEY_QUALITY_SETTING:Ljava/lang/String; = "quality_setting"

.field private static final KEY_SHEET_SETTING:Ljava/lang/String; = "pages_per_sheet_setting"

.field private static final KEY_SIDES_SETTING:Ljava/lang/String; = "sides_setting"

.field private static final REQUEST_PRINT_PROCESSING_RESULT:I = 0x7bd

.field private static final TAG:Ljava/lang/String; = "BluetoothBppPrintJobSettings"


# instance fields
.field private mCopies:I

.field private mFileName:Ljava/lang/String;

.field private mGetDefaultValue:Landroid/widget/Button;

.field private mMaxCopies:I

.field private mNumberOfCopies:Landroid/preference/Preference;

.field private mOrientation:Landroid/preference/ListPreference;

.field private mPagesPerSheet:Landroid/preference/ListPreference;

.field private mPaperSize:Landroid/preference/ListPreference;

.field private mPrint:Landroid/widget/Button;

.field private mQualitySetting:Landroid/preference/ListPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSidesSetting:Landroid/preference/ListPreference;

.field private retrunFromPrintingDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->retrunFromPrintingDialog:Z

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mCopies:I

    .line 121
    new-instance v0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings$1;-><init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->updateAttr()V

    return-void
.end method

.method private updateAttr()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPaperSize:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 329
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPaperSize:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPaperSize:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mSidesSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 331
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mSidesSetting:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mSidesSetting:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPagesPerSheet:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 333
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPagesPerSheet:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPagesPerSheet:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mOrientation:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 335
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mOrientation:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mOrientation:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mQualitySetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 337
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mQualitySetting:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mQualitySetting:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 339
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mCopies:I

    .line 340
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mNumberOfCopies:Landroid/preference/Preference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 341
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 453
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 454
    const-string v0, "BluetoothBppPrintJobSettings"

    const-string v1, "onActivityResult !"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/16 v0, 0x7bd

    if-ne p1, v0, :cond_1

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->retrunFromPrintingDialog:Z

    .line 459
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 461
    const-string v0, "BluetoothBppPrintJobSettings"

    const-string v1, "Result_OK"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 481
    :cond_1
    return-void

    .line 464
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 466
    const-string v0, "BluetoothBppPrintJobSettings"

    const-string v1, "Result_HIDE"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 474
    const-string v0, "BluetoothBppPrintJobSettings"

    const-string v1, "Result_CANCEL"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 411
    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mGetDefaultValue:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 412
    const-string v1, "BluetoothBppPrintJobSettings"

    const-string v2, "Start Bpp Manager to change printer !"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bppmanager.action.GET_DEFAULT_VALUE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 448
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPrint:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 419
    const-string v1, "BluetoothBppPrintJobSettings"

    const-string v2, "Start Bpp Manager to print !"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bppmanager.action.PRINT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const-string v1, " com.mediatek.bluetooth.bppprintjobsettings.extra.papersize"

    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPaperSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const-string v1, " com.mediatek.bluetooth.bppprintjobsettings.extra.copies"

    iget v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mCopies:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    const-string v1, " com.mediatek.bluetooth.bppprintjobsettings.extra.sides"

    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mSidesSetting:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v1, " com.mediatek.bluetooth.bppprintjobsettings.extra.pagespersheet"

    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPagesPerSheet:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v1, " com.mediatek.bluetooth.bppprintjobsettings.extra.orientation"

    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mOrientation:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v1, " com.mediatek.bluetooth.bppprintjobsettings.extra.quality"

    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mQualitySetting:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 433
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 435
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 436
    const-string v1, "action"

    const-string v2, "com.mediatek.bluetooth.bppprinting.action.PRINTING_UPDATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v1, "com.mediatek.bluetooth.bppprinting.extra.PERCENTAGE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    const-string v1, "com.mediatek.bluetooth.bppprinting.extra.DIALOG_TYPE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    const-string v1, "com.mediatek.bluetooth.bppprinting.extra.FILE_NAME"

    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v1, "com.mediatek.bluetooth.bppprinting.extra.REASON"

    const v2, 0x7f070045

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    iput-boolean v3, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->retrunFromPrintingDialog:Z

    .line 445
    const/16 v1, 0x7bd

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public onCopiesSet(I)V
    .locals 2
    .parameter "copies"

    .prologue
    .line 361
    iput p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mCopies:I

    .line 362
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mNumberOfCopies:Landroid/preference/Preference;

    iget v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mCopies:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 363
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 147
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const-string v6, "BluetoothBppPrintJobSettings"

    const-string v7, "onCreate......"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const v6, 0x7f030009

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 153
    const v6, 0x7f040003

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 157
    .local v0, intent:Landroid/content/Intent;
    const-string v6, " com.mediatek.bluetooth.bppprintjobsettings.extra.papersize"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, paperSize:[Ljava/lang/String;
    const-string v6, " com.mediatek.bluetooth.bppprintjobsettings.extra.sides"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, sidesSetting:[Ljava/lang/String;
    const-string v6, " com.mediatek.bluetooth.bppprintjobsettings.extra.pagespersheet"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, paperPerSheet:[Ljava/lang/String;
    const-string v6, " com.mediatek.bluetooth.bppprintjobsettings.extra.orientation"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, orientation:[Ljava/lang/String;
    const-string v6, " com.mediatek.bluetooth.bppprintjobsettings.extra.quality"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, qualitySetting:[Ljava/lang/String;
    const-string v6, " com.mediatek.bluetooth.bppprintjobsettings.extra.copies"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mMaxCopies:I

    .line 164
    const-string v6, " com.mediatek.bluetooth.bppprintjobsettings.extra.filename"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mFileName:Ljava/lang/String;

    .line 172
    const-string v6, "paper_size_setting"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPaperSize:Landroid/preference/ListPreference;

    .line 173
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPaperSize:Landroid/preference/ListPreference;

    if-nez v6, :cond_0

    .line 174
    const-string v6, "BluetoothBppPrintJobSettings"

    const-string v7, "PaperSize preference is null"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    const-string v6, "number_of_copies_setting"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mNumberOfCopies:Landroid/preference/Preference;

    .line 183
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mNumberOfCopies:Landroid/preference/Preference;

    if-nez v6, :cond_1

    .line 184
    const-string v6, "BluetoothBppPrintJobSettings"

    const-string v7, "NumberOfCopies preference is null"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_1
    const-string v6, "sides_setting"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mSidesSetting:Landroid/preference/ListPreference;

    .line 198
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mSidesSetting:Landroid/preference/ListPreference;

    if-nez v6, :cond_3

    .line 199
    const-string v6, "BluetoothBppPrintJobSettings"

    const-string v7, "SideSetting preference is null"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_2
    const-string v6, "pages_per_sheet_setting"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPagesPerSheet:Landroid/preference/ListPreference;

    .line 208
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPagesPerSheet:Landroid/preference/ListPreference;

    if-nez v6, :cond_4

    .line 209
    const-string v6, "BluetoothBppPrintJobSettings"

    const-string v7, "PagesPerSheet preference is null"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_3
    const-string v6, "orientation_setting"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mOrientation:Landroid/preference/ListPreference;

    .line 218
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mOrientation:Landroid/preference/ListPreference;

    if-nez v6, :cond_5

    .line 219
    const-string v6, "BluetoothBppPrintJobSettings"

    const-string v7, "Orientation preference is null"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_4
    const-string v6, "quality_setting"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mQualitySetting:Landroid/preference/ListPreference;

    .line 228
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mQualitySetting:Landroid/preference/ListPreference;

    if-nez v6, :cond_6

    .line 229
    const-string v6, "BluetoothBppPrintJobSettings"

    const-string v7, "QualitySetting preference is null"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_5
    const v6, 0x7f09000f

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mGetDefaultValue:Landroid/widget/Button;

    .line 238
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mGetDefaultValue:Landroid/widget/Button;

    if-nez v6, :cond_7

    .line 239
    const-string v6, "BluetoothBppPrintJobSettings"

    const-string v7, "Get Default Value button is null"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_6
    const v6, 0x7f09000e

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPrint:Landroid/widget/Button;

    .line 247
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPrint:Landroid/widget/Button;

    if-nez v6, :cond_8

    .line 248
    const-string v6, "BluetoothBppPrintJobSettings"

    const-string v7, "Print button is null"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_7
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.mediatek.bluetooth.bppprinting.action.ATTR_UPDATE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    return-void

    .line 177
    :cond_0
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPaperSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 178
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPaperSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 187
    :cond_1
    iget v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mMaxCopies:I

    if-ne v8, v6, :cond_2

    .line 188
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mNumberOfCopies:Landroid/preference/Preference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 193
    :goto_8
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mNumberOfCopies:Landroid/preference/Preference;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 191
    :cond_2
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mNumberOfCopies:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_8

    .line 202
    :cond_3
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mSidesSetting:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 203
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mSidesSetting:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 212
    :cond_4
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPagesPerSheet:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 213
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPagesPerSheet:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 222
    :cond_5
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mOrientation:Landroid/preference/ListPreference;

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 223
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mOrientation:Landroid/preference/ListPreference;

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 232
    :cond_6
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mQualitySetting:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 233
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mQualitySetting:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 242
    :cond_7
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mGetDefaultValue:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 251
    :cond_8
    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPrint:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 379
    packed-switch p1, :pswitch_data_0

    .line 385
    const/4 v0, 0x0

    .line 388
    .local v0, d:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 381
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_0
    new-instance v0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;

    iget v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mMaxCopies:I

    invoke-direct {v0, p0, p0, v1}, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog$OnCopiesSetListener;I)V

    .line 382
    .restart local v0       #d:Landroid/app/Dialog;
    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 322
    const-string v0, "BluetoothBppPrintJobSettings"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 325
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 286
    const-string v2, "BluetoothBppPrintJobSettings"

    const-string v3, "onPause()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 289
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 290
    .local v1, printSettings:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 291
    const-string v2, "BluetoothBppPrintJobSettings"

    const-string v3, "share preferences is null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    iget-boolean v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->retrunFromPrintingDialog:Z

    if-nez v2, :cond_0

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "action"

    const-string v3, "com.mediatek.bluetooth.bppmanager.action.CANCEL"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 303
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 304
    return-void

    .line 294
    :cond_1
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mNumberOfCopies:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 369
    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 371
    :cond_0
    return v1
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "d"

    .prologue
    .line 395
    packed-switch p1, :pswitch_data_0

    .line 407
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 398
    check-cast v0, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;

    .line 399
    .local v0, cp:Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;
    iget v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mCopies:I

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/bpp/CopiesPickerDialog;->updateCopies(I)V

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 272
    const-string v1, "BluetoothBppPrintJobSettings"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 275
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 276
    .local v0, printSettings:Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 277
    const-string v1, "BluetoothBppPrintJobSettings"

    const-string v2, "share preferences is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "preferences"
    .parameter "key"

    .prologue
    .line 348
    const-string v0, "BluetoothBppPrintJobSettings"

    const-string v1, "onSharePreferenceChanged......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPaperSize:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPaperSize:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mSidesSetting:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mSidesSetting:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPagesPerSheet:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mPagesPerSheet:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mOrientation:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mOrientation:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mQualitySetting:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->mQualitySetting:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 262
    const-string v0, "BluetoothBppPrintJobSettings"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->retrunFromPrintingDialog:Z

    .line 267
    invoke-direct {p0}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->updateAttr()V

    .line 268
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 309
    const-string v0, "BluetoothBppPrintJobSettings"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 318
    return-void
.end method
