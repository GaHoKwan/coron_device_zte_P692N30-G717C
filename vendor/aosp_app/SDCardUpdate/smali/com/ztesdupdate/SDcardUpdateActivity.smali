.class public Lcom/ztesdupdate/SDcardUpdateActivity;
.super Landroid/preference/PreferenceActivity;
.source "SDcardUpdateActivity.java"


# static fields
.field private static final CATEGORY_SD_UPDATE:Ljava/lang/String; = "category_sdcard_update"

.field private static final CheckBatterySupport:Z = true

.field private static final ERROR_BATTERY_CHARGING:I = 0x6

.field private static final ERROR_BATTERY_VOLTAGEPERCENT_LOW:I = 0x7

.field private static final ERROR_DIALOG:I = 0x5

.field private static IMAGEFILENAME:Ljava/lang/String; = null

.field private static IMAGEFILENAME_SDCARD2:Ljava/lang/String; = null

.field private static final MESSAGE_CHECK_IMAGEFILE:I = 0x1

.field private static final MESSAGE_CHECK_IMAGEFILE_SDCARD2:I = 0x2

.field private static final PREFERENCE_UPDATE_FROM_SDCARD:Ljava/lang/String; = "update_from_sdcard"

.field private static final PREFERENCE_UPDATE_FROM_SDCARD2:Ljava/lang/String; = "update_from_sdcard2"

.field private static final PREFERENCE_UPDATE_TIP:Ljava/lang/String; = "update_tip"

.field private static final REBOOT_DIALOG:I = 0x1

.field private static final SWAP_SD_NO_INSERT_DIALOG:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SDcardUpdateActivity"

.field private static TAG1:Ljava/lang/String; = null

.field private static final UPDATEIMAGE_NO_FOUND_DIALOG:I = 0x2

.field private static final UPDATEIMAGE_NO_FOUND_DIALOG_SDCARD2:I = 0x3

.field private static final ZTE_SUPPORT_SDCARD2:Z = true


# instance fields
.field private IMAGEFILENAME_SELECT:Ljava/lang/String;

.field private UPDATE_IMAGE:Ljava/lang/String;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mMountService:Landroid/os/storage/IMountService;

.field updateStatus:I

.field voltagepercent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "Phone storage"

    sput-object v0, Lcom/ztesdupdate/SDcardUpdateActivity;->TAG1:Ljava/lang/String;

    .line 48
    const-string v0, "mnt/sdcard/update.zip"

    sput-object v0, Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME:Ljava/lang/String;

    .line 49
    const-string v0, "mnt/sdcard2/update.zip"

    sput-object v0, Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME_SDCARD2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->mMountService:Landroid/os/storage/IMountService;

    .line 72
    const-string v0, "update_image"

    iput-object v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->UPDATE_IMAGE:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME_SELECT:Ljava/lang/String;

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->updateStatus:I

    .line 105
    new-instance v0, Lcom/ztesdupdate/SDcardUpdateActivity$1;

    invoke-direct {v0, p0}, Lcom/ztesdupdate/SDcardUpdateActivity$1;-><init>(Lcom/ztesdupdate/SDcardUpdateActivity;)V

    iput-object v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 298
    new-instance v0, Lcom/ztesdupdate/SDcardUpdateActivity$6;

    invoke-direct {v0, p0}, Lcom/ztesdupdate/SDcardUpdateActivity$6;-><init>(Lcom/ztesdupdate/SDcardUpdateActivity;)V

    iput-object v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/ztesdupdate/SDcardUpdateActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME_SELECT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/ztesdupdate/SDcardUpdateActivity;->TAG1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ztesdupdate/SDcardUpdateActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/ztesdupdate/SDcardUpdateActivity;->onshowDialog(I)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME_SDCARD2:Ljava/lang/String;

    return-object v0
.end method

.method private isExSdcardInserted()Z
    .locals 5

    .prologue
    .line 271
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 272
    .local v0, mStorageManager:Landroid/os/storage/StorageManager;
    const-string v2, "/storage/sdcard1"

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, volumeState:Ljava/lang/String;
    const-string v2, "SDcardUpdateActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " volume state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    :cond_0
    const/4 v2, 0x1

    .line 279
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onshowDialog(I)V
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    const v4, 0x7f050018

    const/high16 v6, 0x7f02

    const v5, 0x7f050003

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x2

    if-ne v3, p1, :cond_1

    .line 143
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f05000e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 220
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 221
    return-void

    .line 149
    :cond_1
    const/4 v3, 0x3

    if-ne v3, p1, :cond_2

    .line 150
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f05000f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_2
    const/4 v3, 0x1

    if-ne v3, p1, :cond_3

    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .restart local v0       #dialog:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 158
    .local v1, factory:Landroid/view/LayoutInflater;
    const/high16 v3, 0x7f03

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 160
    .local v2, textEntryView:Landroid/view/View;
    const v3, 0x7f020002

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 161
    const v3, 0x7f050001

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 162
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 164
    new-instance v3, Lcom/ztesdupdate/SDcardUpdateActivity$2;

    invoke-direct {v3, p0, v2}, Lcom/ztesdupdate/SDcardUpdateActivity$2;-><init>(Lcom/ztesdupdate/SDcardUpdateActivity;Landroid/view/View;)V

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 179
    const v3, 0x7f050004

    new-instance v4, Lcom/ztesdupdate/SDcardUpdateActivity$3;

    invoke-direct {v4, p0}, Lcom/ztesdupdate/SDcardUpdateActivity$3;-><init>(Lcom/ztesdupdate/SDcardUpdateActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 184
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v2           #textEntryView:Landroid/view/View;
    :cond_3
    const/4 v3, 0x5

    if-ne v3, p1, :cond_4

    .line 185
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f050009

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f05000a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    goto/16 :goto_0

    .line 190
    :cond_4
    const/4 v3, 0x4

    if-ne v3, p1, :cond_5

    .line 191
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050011

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    goto/16 :goto_0

    .line 196
    :cond_5
    const/4 v3, 0x6

    if-ne v3, p1, :cond_6

    .line 197
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f05001d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/ztesdupdate/SDcardUpdateActivity$4;

    invoke-direct {v4, p0}, Lcom/ztesdupdate/SDcardUpdateActivity$4;-><init>(Lcom/ztesdupdate/SDcardUpdateActivity;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    goto/16 :goto_0

    .line 206
    :cond_6
    const/4 v3, 0x7

    if-ne v3, p1, :cond_0

    .line 207
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f05001e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/ztesdupdate/SDcardUpdateActivity$5;

    invoke-direct {v4, p0}, Lcom/ztesdupdate/SDcardUpdateActivity$5;-><init>(Lcom/ztesdupdate/SDcardUpdateActivity;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private startSetFlagService()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.intent.action.SDCARDUPDATESERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, serviceIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->UPDATE_IMAGE:Ljava/lang/String;

    iget-object v2, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME_SELECT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 135
    const-string v1, "SDcardUpdateActivity"

    const-string v2, "[StartService] Start service to write recovery flag and update image name"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method


# virtual methods
.method public checkbatterystatusOK()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 287
    iget v1, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->updateStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 288
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/ztesdupdate/SDcardUpdateActivity;->onshowDialog(I)V

    .line 295
    :goto_0
    return v0

    .line 291
    :cond_0
    iget v1, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->voltagepercent:I

    const/16 v2, 0xf

    if-ge v1, v2, :cond_1

    .line 292
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/ztesdupdate/SDcardUpdateActivity;->onshowDialog(I)V

    goto :goto_0

    .line 295
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const-string v0, "SDcardUpdateActivity"

    const-string v1, "[Config] ZTE_SUPPORT_SDCARD2 is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v0, "SDcardUpdateActivity"

    const-string v1, "[Config] MTK_2SDCARD_SWAP is false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 103
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x3

    .line 226
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, key:Ljava/lang/String;
    const-string v1, "mnt/sdcard/update.zip"

    sput-object v1, Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME:Ljava/lang/String;

    .line 240
    const-string v1, "mnt/sdcard2/update.zip"

    sput-object v1, Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME_SDCARD2:Ljava/lang/String;

    .line 241
    const-string v1, "Phone storage"

    sput-object v1, Lcom/ztesdupdate/SDcardUpdateActivity;->TAG1:Ljava/lang/String;

    .line 246
    const-string v1, "update_from_sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    const-string v1, "SDcardUpdateActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ztesdupdate/SDcardUpdateActivity;->TAG1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Update from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ztesdupdate/SDcardUpdateActivity;->TAG1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key has been clicked!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v1, Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME_SELECT:Ljava/lang/String;

    .line 251
    const-string v1, "SDcardUpdateActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ztesdupdate/SDcardUpdateActivity;->TAG1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Select update imagefile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 254
    const-string v1, "SDcardUpdateActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ztesdupdate/SDcardUpdateActivity;->TAG1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Send message to check imagefile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 255
    :cond_1
    const-string v1, "update_from_sdcard2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const-string v1, "SDcardUpdateActivity"

    const-string v2, "[External SD card] Update from External SD card key has been clicked!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v1, Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME_SDCARD2:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME_SELECT:Ljava/lang/String;

    .line 259
    const-string v1, "SDcardUpdateActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[External SD card] Select update imagefile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ztesdupdate/SDcardUpdateActivity;->IMAGEFILENAME_SDCARD2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 262
    const-string v1, "SDcardUpdateActivity"

    const-string v2, "[External SD card] Send message to check imagefile!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    iget-object v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ztesdupdate/SDcardUpdateActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 128
    return-void
.end method
