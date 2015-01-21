.class public Lcom/mediatek/engineermode/memory/NandFlash;
.super Landroid/app/TabActivity;
.source "NandFlash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;
    }
.end annotation


# static fields
.field private static final EMMC_ID_HEADER:Ljava/lang/String; = "emmc ID: "

.field private static final FILE_CID:Ljava/lang/String; = "/sys/block/mmcblk0/device/cid"

.field private static final FILE_DUMCHAR_INFO:Ljava/lang/String; = "/proc/dumchar_info"

.field protected static final FILE_EMMC:Ljava/lang/String; = "/proc/emmc"

.field protected static final FILE_MOUNTS:Ljava/lang/String; = "/proc/mounts"

.field protected static final FILE_MTD:Ljava/lang/String; = "/proc/mtd"

.field protected static final FILE_NAND:Ljava/lang/String; = "/proc/driver/nand"

.field private static final READ_COMMAND:Ljava/lang/String; = "cat "

.field private static final TAG:Ljava/lang/String; = "EM/Memory_flash"


# instance fields
.field private mCommonTabName:Ljava/lang/String;

.field private mFileSysTabName:Ljava/lang/String;

.field private mHaveEmmc:Z

.field private mPartitionTabName:Ljava/lang/String;

.field private mTabId:Ljava/lang/String;

.field private mTvCommInfo:Landroid/widget/TextView;

.field private mTvFSInfo:Landroid/widget/TextView;

.field private mTvPartInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mHaveEmmc:Z

    .line 64
    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTvCommInfo:Landroid/widget/TextView;

    .line 65
    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTvFSInfo:Landroid/widget/TextView;

    .line 66
    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTvPartInfo:Landroid/widget/TextView;

    .line 67
    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mCommonTabName:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mFileSysTabName:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mPartitionTabName:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTabId:Ljava/lang/String;

    .line 191
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/memory/NandFlash;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTabId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/memory/NandFlash;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mediatek/engineermode/memory/NandFlash;->showTabContent()V

    return-void
.end method

.method private getEmmcCommon()Ljava/lang/String;
    .locals 6

    .prologue
    .line 136
    const-string v3, "/sys/block/mmcblk0/device/cid"

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/memory/NandFlash;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, emmcId:Ljava/lang/String;
    const-string v3, "EM/Memory_flash"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "emmcId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "emmc ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v0, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;

    invoke-direct {v0}, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;-><init>()V

    .line 143
    .local v0, cid:Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;
    invoke-virtual {v0, v1}, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->parse(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/mediatek/engineermode/memory/NandFlash$MmcCid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_0
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v3, "/proc/dumchar_info"

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/memory/NandFlash;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "file"

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 162
    .local v1, result:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I

    move-result v2

    .line 163
    .local v2, ret:I
    if-nez v2, :cond_0

    .line 164
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v1

    .line 172
    .end local v2           #ret:I
    :goto_0
    return-object v1

    .line 166
    .restart local v2       #ret:I
    :cond_0
    const v3, 0x7f0800aa

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 168
    .end local v2           #ret:I
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/io/IOException;
    const-string v3, "EM/Memory_flash"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private showTabContent()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTabId:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mCommonTabName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-boolean v0, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mHaveEmmc:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTvCommInfo:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/mediatek/engineermode/memory/NandFlash;->getEmmcCommon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTvCommInfo:Landroid/widget/TextView;

    const-string v1, "/proc/driver/nand"

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/memory/NandFlash;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTabId:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mFileSysTabName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTvFSInfo:Landroid/widget/TextView;

    const-string v1, "/proc/mounts"

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/memory/NandFlash;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTabId:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mPartitionTabName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-boolean v0, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mHaveEmmc:Z

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTvPartInfo:Landroid/widget/TextView;

    const-string v1, "/proc/emmc"

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/memory/NandFlash;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTvPartInfo:Landroid/widget/TextView;

    const-string v1, "/proc/mtd"

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/memory/NandFlash;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "HAVE_EMMC"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mHaveEmmc:Z

    .line 76
    const v1, 0x7f0800a7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mCommonTabName:Ljava/lang/String;

    .line 77
    const v1, 0x7f0800a8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mFileSysTabName:Ljava/lang/String;

    .line 78
    const v1, 0x7f0800a9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mPartitionTabName:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    .line 80
    .local v0, tabHost:Landroid/widget/TabHost;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030057

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    iget-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mCommonTabName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mCommonTabName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b02db

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 87
    iget-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mFileSysTabName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mFileSysTabName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b02dd

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 91
    iget-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mPartitionTabName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mPartitionTabName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b02df

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 93
    const v1, 0x7f0b02dc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTvCommInfo:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f0b02de

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTvFSInfo:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f0b02e0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTvPartInfo:Landroid/widget/TextView;

    .line 96
    new-instance v1, Lcom/mediatek/engineermode/memory/NandFlash$1;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/memory/NandFlash$1;-><init>(Lcom/mediatek/engineermode/memory/NandFlash;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 104
    iget-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mCommonTabName:Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/engineermode/memory/NandFlash;->mTabId:Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Lcom/mediatek/engineermode/memory/NandFlash;->showTabContent()V

    .line 106
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 178
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 183
    invoke-direct {p0}, Lcom/mediatek/engineermode/memory/NandFlash;->showTabContent()V

    .line 184
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 189
    return-void
.end method
