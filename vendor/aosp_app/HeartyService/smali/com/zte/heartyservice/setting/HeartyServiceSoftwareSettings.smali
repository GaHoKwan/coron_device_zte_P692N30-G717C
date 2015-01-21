.class public Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;
.super Landroid/preference/PreferenceActivity;
.source "HeartyServiceSoftwareSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final CHECK_APP_LOCK_PASSWORD:I = 0x0

.field private static final HEADER_TYPE_CATEGORY:I = 0x2

.field private static final HEADER_TYPE_NORMAL:I = 0x0

.field private static final HEADER_TYPE_SWITCH:I = 0x1

.field public static final STATUS_BAR_SHOWING_ALWAYS:I = 0x0

.field public static final STATUS_BAR_SHOWING_MESSAGE:I = 0x1

.field public static final STATUS_BAR_SHOWING_NEVER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HeartyServiceSoftwareSettings"

.field private static autoRunEnabled:Z

.field private static autoUpdateEnabled:Z


# instance fields
.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->mHeaders:Ljava/util/List;

    .line 103
    new-instance v0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->mSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 653
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;ZLandroid/widget/CompoundButton;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->closeAutoRunDlg(ZLandroid/widget/CompoundButton;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/preference/PreferenceActivity$Header;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getSummary(Landroid/preference/PreferenceActivity$Header;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-boolean p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->autoRunEnabled:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->stopHeartyService()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-boolean p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->autoUpdateEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;ZLandroid/widget/CompoundButton;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->closeShoppingSafeDlg(ZLandroid/widget/CompoundButton;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;ZLandroid/widget/CompoundButton;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->closeUrlSafeDlg(ZLandroid/widget/CompoundButton;)V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/widget/CompoundButton;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->downloadUmewebDlg(Landroid/widget/CompoundButton;)V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/preference/PreferenceActivity$Header;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Lcom/zte/heartyservice/common/datatype/P3Switch;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->setSwitch(Lcom/zte/heartyservice/common/datatype/P3Switch;I)V

    return-void
.end method

.method private autoRunTipDlg()V
    .locals 5

    .prologue
    .line 517
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 518
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0386

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0391

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00ea

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$14;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$14;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 530
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 531
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 532
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 533
    return-void
.end method

.method private closeAutoRunDlg(ZLandroid/widget/CompoundButton;)V
    .locals 5
    .parameter "isChecked"
    .parameter "buttonView"

    .prologue
    .line 315
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0385

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0390

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00eb

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$3;

    invoke-direct {v4, p0, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$3;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/widget/CompoundButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00ea

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$2;

    invoke-direct {v4, p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$2;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 333
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 334
    new-instance v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$4;

    invoke-direct {v2, p0, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$4;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 344
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 345
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 346
    return-void
.end method

.method private closeShoppingSafeDlg(ZLandroid/widget/CompoundButton;)V
    .locals 5
    .parameter "isChecked"
    .parameter "buttonView"

    .prologue
    .line 352
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0635

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0638

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00eb

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$6;

    invoke-direct {v4, p0, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$6;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/widget/CompoundButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00ea

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$5;

    invoke-direct {v4, p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$5;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 373
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 374
    new-instance v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$7;

    invoke-direct {v2, p0, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$7;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 384
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 385
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 386
    return-void
.end method

.method private closeUrlSafeDlg(ZLandroid/widget/CompoundButton;)V
    .locals 5
    .parameter "isChecked"
    .parameter "buttonView"

    .prologue
    .line 392
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0639

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a063c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00eb

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$9;

    invoke-direct {v4, p0, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$9;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/widget/CompoundButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00ea

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$8;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$8;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 411
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 412
    new-instance v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$10;

    invoke-direct {v2, p0, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$10;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 422
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 423
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 424
    return-void
.end method

.method private downloadUmewebDlg(Landroid/widget/CompoundButton;)V
    .locals 5
    .parameter "buttonView"

    .prologue
    .line 430
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 431
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0639

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a063d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00eb

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$12;

    invoke-direct {v4, p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$12;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/widget/CompoundButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getPositiveButtonStr()I

    move-result v3

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$11;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$11;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 472
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 473
    new-instance v2, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$13;

    invoke-direct {v2, p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$13;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 483
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 484
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 485
    return-void
.end method

.method private getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 5
    .parameter "header"

    .prologue
    const/4 v0, 0x1

    .line 825
    const-wide/16 v1, -0x1

    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 826
    const/4 v0, 0x2

    .line 843
    :cond_0
    :goto_0
    return v0

    .line 829
    :cond_1
    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0e03f0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0e03f4

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0e03f6

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0e03f7

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0e03f8

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0e03f9

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0e03fa

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0e03fb

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0e03f5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 835
    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0e03fd

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0e03ef

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0e03f3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 843
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPeriodString(Landroid/content/Context;IJ)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "resId"
    .parameter "period"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    const-wide/16 v1, 0x7

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    .line 90
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0a00b3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    .line 91
    :cond_0
    const-wide/16 v1, 0x1e

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 92
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0a00b4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_2

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a00b2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, p:Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 97
    .end local v0           #p:Ljava/lang/String;
    :cond_2
    const v1, 0x7f0a00b5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPositiveButtonStr()I
    .locals 2

    .prologue
    .line 488
    const v0, 0x7f0a05a6

    .line 489
    .local v0, ret:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getUmeDownloadStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 497
    :goto_0
    return v0

    .line 491
    :pswitch_0
    const v0, 0x7f0a0640

    .line 492
    goto :goto_0

    .line 494
    :pswitch_1
    const v0, 0x7f0a0641

    goto :goto_0

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSummary(Landroid/preference/PreferenceActivity$Header;)Ljava/lang/CharSequence;
    .locals 13
    .parameter "header"

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0a0199

    const v10, 0x7f0a019a

    .line 912
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0e03fc

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v6

    if-nez v6, :cond_1

    .line 914
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.zte.heartyservice"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 916
    .local v5, verName:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "ZTE_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 917
    const-string v6, "_versionName|V"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0xe

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 918
    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 919
    .local v0, lastIndex:I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 920
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 923
    .end local v0           #lastIndex:I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0a00ca

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1013
    .end local v5           #verName:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 928
    :cond_1
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0e03fd

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 929
    const-string v6, "hs_auto_update_data"

    invoke-static {v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPeriod(Ljava/lang/String;)J

    move-result-wide v1

    .line 930
    .local v1, period:J
    const-wide/32 v6, 0x5265c00

    div-long/2addr v1, v6

    .line 931
    const v6, 0x7f0a00b0

    invoke-static {p0, v6, v1, v2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getPeriodString(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 932
    .end local v1           #period:J
    :cond_2
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0e03f2

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 933
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070069

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 934
    .local v3, settingEntry:[Ljava/lang/String;
    const-string v6, "hs_statusbar_showing"

    invoke-static {v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSettingInt(Ljava/lang/String;)I

    move-result v4

    .line 935
    .local v4, settingPosition:I
    aget-object v6, v3, v4

    goto :goto_0

    .line 938
    .end local v3           #settingEntry:[Ljava/lang/String;
    .end local v4           #settingPosition:I
    :cond_3
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0e03f4

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 939
    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMonitorEnable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 940
    invoke-virtual {p0, v11}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 942
    :cond_4
    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 946
    :cond_5
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0e03f5

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 948
    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMarkMonitorEnable()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 949
    invoke-virtual {p0, v11}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 951
    :cond_6
    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 954
    :cond_7
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0e03f6

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    .line 956
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getShowPermNotice()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 958
    invoke-virtual {p0, v11}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 961
    :cond_8
    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 965
    :cond_9
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0e03f7

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    .line 967
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getShoppingSafe()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 969
    const v6, 0x7f0a0637

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 972
    :cond_a
    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 976
    :cond_b
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0e03f8

    cmp-long v6, v6, v8

    if-nez v6, :cond_c

    .line 978
    const v6, 0x7f0a063a

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 980
    :cond_c
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0e03f9

    cmp-long v6, v6, v8

    if-nez v6, :cond_d

    .line 982
    const v6, 0x7f0a0577

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 984
    :cond_d
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0e03fb

    cmp-long v6, v6, v8

    if-nez v6, :cond_f

    .line 986
    iget-object v6, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v6}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getScreenLockMonitor()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 988
    const v6, 0x7f0a061c

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 991
    :cond_e
    const v6, 0x7f0a061b

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 994
    :cond_f
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0e03fa

    cmp-long v6, v6, v8

    if-nez v6, :cond_11

    .line 996
    iget-object v6, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v6}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getFloaterFix()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 998
    const v6, 0x7f0a0573

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1002
    :cond_10
    const v6, 0x7f0a0574

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1005
    :cond_11
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0e03f3

    cmp-long v6, v6, v8

    if-nez v6, :cond_13

    .line 1006
    const-string v6, "show_battery_notice"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1007
    invoke-virtual {p0, v11}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1009
    :cond_12
    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 924
    :catch_0
    move-exception v6

    .line 1013
    :cond_13
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static isOptionOn(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static refreshNotifierShowing(I)V
    .locals 2
    .parameter "settingValue"

    .prologue
    .line 1019
    const/4 v0, 0x0

    .line 1021
    .local v0, showingFlag:Z
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_2

    .line 1023
    :cond_0
    const/4 v0, 0x1

    .line 1027
    :cond_1
    :goto_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setNotifierShowingStatus(Z)V

    .line 1028
    return-void

    .line 1024
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p0, :cond_1

    .line 1025
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setOption(Ljava/lang/String;Z)V
    .locals 0
    .parameter "key"
    .parameter "enable"

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setOption(Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method private setSwitch(Lcom/zte/heartyservice/common/datatype/P3Switch;I)V
    .locals 4
    .parameter "switch_"
    .parameter "id"

    .prologue
    .line 849
    invoke-virtual {p1, p2}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setId(I)V

    .line 850
    packed-switch p2, :pswitch_data_0

    .line 908
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->mSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 909
    return-void

    .line 852
    :pswitch_1
    const-string v1, "HeartyServiceSoftwareSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AutoRunSwitch.isAutoRunOn(this)  ================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->isAutoRunOn(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->isAutoRunOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 858
    :pswitch_2
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getShowPermNotice()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 862
    :pswitch_3
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getShoppingSafe()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 866
    :pswitch_4
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getUrlSafeDefault()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 870
    :pswitch_5
    iget-object v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getFloaterOpen()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 873
    :pswitch_6
    iget-object v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getScreenLockMonitor()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 877
    :pswitch_7
    iget-object v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getFloaterFix()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 882
    :pswitch_8
    const-string v1, "hs_auto_update"

    invoke-static {v1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->isOptionOn(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->autoUpdateEnabled:Z

    .line 883
    sget-boolean v1, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->autoUpdateEnabled:Z

    invoke-virtual {p1, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 887
    :pswitch_9
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->isAutoRunOn(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->autoRunEnabled:Z

    .line 888
    sget-boolean v1, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->autoRunEnabled:Z

    invoke-virtual {p1, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 892
    :pswitch_a
    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMonitorEnable()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 895
    :pswitch_b
    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMarkMonitorEnable()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 900
    :pswitch_c
    const-string v1, "show_battery_notice"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    .line 901
    .local v0, checked:Z
    invoke-virtual {p1, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 850
    :pswitch_data_0
    .packed-switch 0x7f0e03ef
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private shoppingSafeTipDlg()V
    .locals 5

    .prologue
    .line 540
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 541
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0635

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0636

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00ea

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$15;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$15;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 553
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 554
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 555
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 556
    return-void
.end method

.method private showAppExitDialog()V
    .locals 6

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1121
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/zte/heartyservice/appwidget/SpeedupWidgetProvider;

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 1125
    .local v2, widgetIds:[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 1126
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0095

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0674

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0174

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1130
    .local v1, dialog:Landroid/app/Dialog;
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 1134
    :goto_0
    return-void

    .line 1132
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->showAppExitDialogReal()V

    goto :goto_0
.end method

.method private showAppExitDialogReal()V
    .locals 4

    .prologue
    .line 1098
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0095

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0097

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$20;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$20;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0174

    new-instance v3, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$19;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$19;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1116
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1117
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 1118
    return-void
.end method

.method private showNotificationOptionDialog()V
    .locals 7

    .prologue
    .line 1031
    const-string v3, "hs_statusbar_showing"

    invoke-static {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSettingInt(Ljava/lang/String;)I

    move-result v2

    .line 1033
    .local v2, initSettingValue:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1034
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a0093

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0174

    new-instance v5, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$18;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$18;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const v6, 0x7f0a0589

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f0a058a

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$17;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$17;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V

    invoke-virtual {v3, v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1057
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1058
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1059
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 1095
    return-void
.end method

.method private stopHeartyService()V
    .locals 4

    .prologue
    .line 1139
    invoke-static {p0}, Lcom/zte/heartyservice/intercept/Common/VipModeUtils;->isVipModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1140
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a038c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a038d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0173

    new-instance v3, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$22;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$22;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0174

    new-instance v3, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$21;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$21;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1156
    .local v0, dialog:Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1157
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1158
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 1164
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 1160
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->finish()V

    .line 1161
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->shutdown()V

    .line 1162
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->stopHeartyService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private urlSafeTipDlg()V
    .locals 5

    .prologue
    .line 563
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 564
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0639

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a063b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00ea

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$16;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$16;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 576
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 577
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 578
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 579
    return-void
.end method


# virtual methods
.method public checkTimer(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkTimer(Landroid/content/Context;I)V

    .line 78
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1291
    packed-switch p1, :pswitch_data_0

    .line 1301
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1302
    :goto_0
    return-void

    .line 1293
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1294
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->showAppExitDialog()V

    .line 1296
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordSetting;->stopMonitor()V

    goto :goto_0

    .line 1291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 627
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    const v0, 0x7f05000b

    invoke-virtual {p0, v0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 639
    :goto_0
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->mHeaders:Ljava/util/List;

    .line 640
    return-void

    .line 629
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    const v0, 0x7f050009

    invoke-virtual {p0, v0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 632
    :cond_1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "897"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->stringContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    const v0, 0x7f05000a

    invoke-virtual {p0, v0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 637
    :cond_2
    const v0, 0x7f050007

    invoke-virtual {p0, v0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 584
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 585
    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->mHeaders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 586
    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->mHeaders:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->onBuildHeaders(Ljava/util/List;)V

    .line 588
    :cond_0
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    .line 590
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 591
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 592
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 593
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const v6, 0x7f020294

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setSelector(I)V

    .line 596
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 598
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 599
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f0b00d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 600
    .local v1, marginLeft:I
    move v2, v1

    .line 601
    .local v2, marginRight:I
    move v3, v1

    .line 602
    .local v3, marginTop:I
    move v0, v1

    .line 604
    .local v0, marginBottom:I
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v2, v0}, Landroid/widget/ListView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .end local v0           #marginBottom:I
    .end local v1           #marginLeft:I
    .end local v2           #marginRight:I
    .end local v3           #marginTop:I
    .end local v4           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 605
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 10
    .parameter "header"
    .parameter "position"

    .prologue
    const/4 v9, 0x0

    .line 1170
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1171
    iget-wide v5, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0e03fc

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 1173
    sget-object v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    if-nez v5, :cond_0

    .line 1174
    const/4 v4, 0x0

    .line 1175
    .local v4, mode:I
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1176
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1177
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a0010

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1178
    const v5, 0x7f020017

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1179
    const v5, 0x7f0a03b0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1180
    const v5, 0x7f0a0173

    new-instance v6, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$23;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$23;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1194
    const v5, 0x7f0a0174

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1195
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 1286
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #mode:I
    :cond_0
    :goto_0
    return-void

    .line 1202
    .restart local v4       #mode:I
    :cond_1
    const/4 v4, 0x1

    .line 1204
    new-instance v5, Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v4, v6}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;-><init>(Landroid/content/Context;II)V

    sput-object v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    .line 1206
    sget-object v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v7, v9, [Ljava/lang/Void;

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1209
    .end local v4           #mode:I
    :cond_2
    iget-wide v5, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0e03f0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 1210
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->autoRunTipDlg()V

    goto :goto_0

    .line 1211
    :cond_3
    iget-wide v5, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0e03f6

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 1213
    iget-wide v5, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0e03f7

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 1215
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->shoppingSafeTipDlg()V

    goto :goto_0

    .line 1216
    :cond_4
    iget-wide v5, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0e03f8

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    .line 1218
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->urlSafeTipDlg()V

    goto :goto_0

    .line 1221
    :cond_5
    iget-wide v5, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0e03f3

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 1260
    iget-wide v5, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0e03fd

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 1261
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/zte/heartyservice/setting/AutoUpdateSettings;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1262
    :cond_6
    iget-wide v5, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0e03f2

    cmp-long v5, v5, v7

    if-nez v5, :cond_7

    .line 1263
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->showNotificationOptionDialog()V

    goto :goto_0

    .line 1264
    :cond_7
    iget-wide v5, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0e03fe

    cmp-long v5, v5, v7

    if-nez v5, :cond_9

    .line 1265
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getAllLockedPackages()Ljava/util/List;

    move-result-object v3

    .line 1266
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isRSAKeyPairExist()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1270
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1272
    .local v2, intent:Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v5}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1273
    :catch_0
    move-exception v1

    .line 1274
    .local v1, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->showAppExitDialog()V

    .line 1275
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1278
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->showAppExitDialog()V

    goto/16 :goto_0

    .line 1280
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    iget-wide v5, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0e03f1

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 1281
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1282
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 611
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 612
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->onContentChanged()V

    .line 613
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 614
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 644
    iget-object v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->mHeaders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 645
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->mHeaders:Ljava/util/List;

    .line 646
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 647
    iget-object v2, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->mHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    .end local v0           #i:I
    :cond_0
    new-instance v1, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->mHeaders:Ljava/util/List;

    invoke-direct {v1, p0, p0, v2}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/content/Context;Ljava/util/List;)V

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 651
    return-void
.end method
