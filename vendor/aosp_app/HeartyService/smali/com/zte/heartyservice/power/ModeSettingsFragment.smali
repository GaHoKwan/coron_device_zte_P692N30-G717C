.class public Lcom/zte/heartyservice/power/ModeSettingsFragment;
.super Landroid/app/Fragment;
.source "ModeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/power/ModeSettingsFragment$1;,
        Lcom/zte/heartyservice/power/ModeSettingsFragment$levelReceiver;,
        Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;,
        Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;,
        Lcom/zte/heartyservice/power/ModeSettingsFragment$CustomModeHolder;,
        Lcom/zte/heartyservice/power/ModeSettingsFragment$BaseModeHolder;,
        Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;,
        Lcom/zte/heartyservice/power/ModeSettingsFragment$MyListItemListener;
    }
.end annotation


# static fields
.field private static final CUSTOM_RESULT_ADD:I = 0x2

.field private static final CUSTOM_RESULT_DELETE:I = 0x1

.field private static final NEW_MODE:I = 0x0

.field private static final OPENE_EXISTMODE:I = 0x1

.field private static final OPENE_EXISTMODE_DEFAULT:I = 0x1

.field private static final OPENE_EXISTMODE_DEFAULT_MY:I = 0x2

.field private static final OPEN_EXISTMODE_CUSTOM:I = 0x3

.field private static final tag:Ljava/lang/String; = "ModeSettingsFragment"


# instance fields
.field private CurrentModeName:Landroid/widget/TextView;

.field private DefaultModeId:I

.field private MODE_BASE_URI:Landroid/net/Uri;

.field private ModeNameTitle:Landroid/view/View;

.field private baseMode:[I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;

.field private mBatteryRemainingTime:Landroid/view/View;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mModeRecordsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/zte/heartyservice/power/ModeSettingsFragment$levelReceiver;

.field private mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

.field private modeList:Landroid/widget/ListView;

.field private modifyUri:Landroid/net/Uri;

.field private pofileUri:Landroid/net/Uri;

.field private profileId:I

.field private radioListener:Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;

.field private radioPosition:I

.field private rootView:Landroid/view/View;

.field private sp:Landroid/content/SharedPreferences;

.field private tempLevel:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, -0x1

    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mModeRecordsList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;-><init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;Lcom/zte/heartyservice/power/ModeSettingsFragment$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioListener:Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;

    .line 61
    iput v2, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioPosition:I

    .line 73
    iput v3, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->DefaultModeId:I

    .line 81
    sget-object v0, Lcom/zte/heartyservice/power/Modes$ModeColumns;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->MODE_BASE_URI:Landroid/net/Uri;

    .line 85
    const-string v0, "content://settings/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->pofileUri:Landroid/net/Uri;

    .line 89
    iput v2, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->profileId:I

    .line 92
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->baseMode:[I

    .line 253
    iput v2, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->tempLevel:I

    .line 1112
    return-void

    .line 92
    :array_0
    .array-data 0x4
        0x11t 0x5t 0xat 0x7ft
        0x12t 0x5t 0xat 0x7ft
        0x13t 0x5t 0xat 0x7ft
        0x14t 0x5t 0xat 0x7ft
    .end array-data
.end method

.method private UpdateRemainingTime(I)V
    .locals 9
    .parameter "level"

    .prologue
    const-wide/high16 v7, 0x404e

    .line 1099
    iget-object v4, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/power/RemainingTimeCalculate;

    move-result-object v0

    .line 1100
    .local v0, calculator:Lcom/zte/heartyservice/power/RemainingTimeCalculate;
    iget-object v4, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->sp:Landroid/content/SharedPreferences;

    const-string v5, "current_mode_id"

    const/4 v6, 0x4

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1101
    .local v1, mode:I
    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->setPowerMode(I)V

    .line 1106
    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->getRemainingTime(I)D

    move-result-wide v2

    .line 1109
    .local v2, time6:D
    iget-object v4, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mBatteryRemainingTime:Landroid/view/View;

    mul-double v5, v2, v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static {v4, v5}, Lcom/zte/heartyservice/power/Utils;->setTimeAmount(Landroid/view/View;I)V

    .line 1110
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioListener:Lcom/zte/heartyservice/power/ModeSettingsFragment$myRadioButtonListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/power/ModeSettingsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->tempLevel:I

    return v0
.end method

.method static synthetic access$1402(Lcom/zte/heartyservice/power/ModeSettingsFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->tempLevel:I

    return p1
.end method

.method static synthetic access$1500(Lcom/zte/heartyservice/power/ModeSettingsFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->UpdateRemainingTime(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/power/ModeSettingsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioPosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/zte/heartyservice/power/ModeSettingsFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->MODE_BASE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/power/ModeSettingsFragment;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->baseMode:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mModeRecordsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private addCustomMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 449
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "open_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0, v0, v3}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 453
    return-void
.end method


# virtual methods
.method public bindData()V
    .locals 2

    .prologue
    .line 374
    const-string v0, "ModeSettingsFragment"

    const-string v1, "dddddddddddddddddd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v0, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;-><init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;Lcom/zte/heartyservice/power/ModeSettingsFragment$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mAdapter:Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;

    .line 376
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->modeList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mAdapter:Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 381
    return-void
.end method

.method public getOpenType(I)I
    .locals 1
    .parameter "position"

    .prologue
    const/4 v0, 0x3

    .line 357
    if-ge p1, v0, :cond_1

    .line 359
    const/4 v0, 0x1

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 360
    :cond_1
    if-ne p1, v0, :cond_0

    .line 361
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public initialData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 396
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mModeRecordsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 397
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mModeRecordsList:Ljava/util/ArrayList;

    new-instance v1, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0511

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4}, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;-><init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mModeRecordsList:Ljava/util/ArrayList;

    new-instance v1, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0512

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4}, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;-><init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mModeRecordsList:Ljava/util/ArrayList;

    new-instance v1, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0513

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4}, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;-><init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mModeRecordsList:Ljava/util/ArrayList;

    new-instance v1, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0514

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4}, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;-><init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x3

    .line 462
    if-nez p1, :cond_2

    .line 463
    const-string v3, "ModeSettingsFragment"

    const-string v4, "ActivityResult New mode"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-ne p2, v6, :cond_1

    .line 465
    const-string v3, "ModeSettingsFragment"

    const-string v4, "New Mode Result Ok"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 513
    return-void

    .line 468
    :cond_1
    if-eqz p2, :cond_0

    .line 470
    if-eq p2, v5, :cond_0

    .line 472
    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    .line 473
    const-string v3, "ModeSettingsFragment"

    const-string v4, "New Mode Result ADD"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v3, "add_mode_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mModeRecordsList:Ljava/util/ArrayList;

    new-instance v4, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v5}, Lcom/zte/heartyservice/power/ModeSettingsFragment$ModeRecords;-><init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->bindData()V

    goto :goto_0

    .line 479
    .end local v1           #name:Ljava/lang/String;
    :cond_2
    if-ne p1, v5, :cond_0

    .line 481
    if-ne p2, v6, :cond_3

    .line 483
    const-string v3, "ModeSettingsFragment"

    const-string v4, "on Activity Result: Open_ExistMode: Result_Ok"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string v3, "position"

    invoke-virtual {p3, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 486
    .local v2, position:I
    const-string v3, "ModeSettingsFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; radio_position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->sp:Landroid/content/SharedPreferences;

    const-string v6, "radio_position"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v3, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->sp:Landroid/content/SharedPreferences;

    const-string v4, "radio_position"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 488
    const-string v3, "ModeSettingsFragment"

    const-string v4, "Enter if Radio Position == position"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v3, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    iget-object v4, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-virtual {v4, v2}, Lcom/zte/heartyservice/power/SwitchTools;->convertPositionToId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/power/SwitchTools;->switchingMode(I)V

    goto :goto_0

    .line 494
    .end local v2           #position:I
    :cond_3
    if-eqz p2, :cond_0

    .line 496
    if-ne p2, v5, :cond_0

    .line 497
    const-string v3, "delete_position"

    iget v4, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->DefaultModeId:I

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 498
    .local v0, deletePosition:I
    iget-object v3, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mModeRecordsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 500
    iget v3, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioPosition:I

    if-ne v0, v3, :cond_4

    .line 503
    iget-object v3, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    iget v4, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->DefaultModeId:I

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/power/SwitchTools;->switchingMode(I)V

    .line 504
    iput v7, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioPosition:I

    .line 505
    iget-object v3, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "radio_position"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 508
    :cond_4
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->bindData()V

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 1132
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1133
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v0, localIntentFilter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/zte/heartyservice/power/ModeSettingsFragment$levelReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/power/ModeSettingsFragment$levelReceiver;-><init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;Lcom/zte/heartyservice/power/ModeSettingsFragment$1;)V

    iput-object v1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mReceiver:Lcom/zte/heartyservice/power/ModeSettingsFragment$levelReceiver;

    .line 1135
    iget-object v1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mReceiver:Lcom/zte/heartyservice/power/ModeSettingsFragment$levelReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1136
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const-string v0, "ModeSettingsFragment"

    const-string v1, "onCreate Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mActivity:Landroid/app/Activity;

    .line 103
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "powermanager"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->sp:Landroid/content/SharedPreferences;

    .line 104
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    .line 105
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 109
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    iget-object v1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;

    .line 125
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->sp:Landroid/content/SharedPreferences;

    const-string v1, "is_use_profile_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 262
    const-string v0, "ModeSettingsFragment"

    const-string v1, "onCreateView Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const v0, 0x7f030082

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->rootView:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0e03b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mBatteryRemainingTime:Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0e01ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->modeList:Landroid/widget/ListView;

    .line 266
    iput-object p1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 269
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->modeList:Landroid/widget/ListView;

    new-instance v1, Lcom/zte/heartyservice/power/ModeSettingsFragment$MyListItemListener;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/ModeSettingsFragment$MyListItemListener;-><init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 327
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->initialData()V

    .line 329
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->setHasOptionsMenu(Z)V

    .line 330
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1085
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1094
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->mReceiver:Lcom/zte/heartyservice/power/ModeSettingsFragment$levelReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1095
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .parameter "hidden"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 183
    const-string v0, "ModeSettingsFragment"

    const-string v1, "on Hideedn changed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 194
    const-string v0, "ModeSettingsFragment"

    const-string v1, "onResume Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 196
    iget-object v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->sp:Landroid/content/SharedPreferences;

    const-string v1, "radio_position"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->radioPosition:I

    .line 198
    iget v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->tempLevel:I

    if-ltz v0, :cond_0

    .line 199
    iget v0, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment;->tempLevel:I

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->UpdateRemainingTime(I)V

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->bindData()V

    .line 225
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 234
    const-string v0, "ModeSettingsFragment"

    const-string v1, "onSaveInstanceState Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 236
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 168
    const-string v0, "ModeSettingsFragment"

    const-string v1, "onStart Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 0
    .parameter "hasMenu"

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 247
    return-void
.end method
