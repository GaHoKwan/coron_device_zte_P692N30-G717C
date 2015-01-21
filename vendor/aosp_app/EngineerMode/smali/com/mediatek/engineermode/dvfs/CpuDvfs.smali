.class public Lcom/mediatek/engineermode/dvfs/CpuDvfs;
.super Landroid/app/Activity;
.source "CpuDvfs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final CAT:Ljava/lang/String; = "cat "

.field private static final CMD_PERFORMANCE_GOVERNOR:Ljava/lang/String; = "echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

.field private static final CMD_SET_CPU_SPEED:Ljava/lang/String; = "echo %1$s > /proc/cpufreq/cpufreq_cur_freq"

.field private static final ECHO:Ljava/lang/String; = "echo"

.field private static final FS_CUR_FREQ:Ljava/lang/String; = "/proc/cpufreq/cpufreq_cur_freq"

.field private static final FS_GOVERNOR_DEFAULT:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

.field private static final FS_GOVERNOR_LIST:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

.field private static final FS_SET_SPEED:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed"

.field private static final TAG:Ljava/lang/String; = "CpuDvfs"


# instance fields
.field private mBtnSetFreq:Landroid/widget/Button;

.field private mEditCpuClockVal:Landroid/widget/EditText;

.field private mFreqMax:J

.field private mFreqMin:J

.field private mGovernorItems:[Ljava/lang/CharSequence;

.field private mLVCpuGovernor:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    iput-wide v0, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mFreqMin:J

    .line 86
    iput-wide v0, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mFreqMax:J

    return-void
.end method

.method private execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cmd"

    .prologue
    .line 195
    const/4 v2, -0x1

    .line 196
    .local v2, ret:I
    const-string v3, "CpuDvfs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[cmd]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 202
    :goto_0
    if-nez v2, :cond_0

    .line 203
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, outStr:Ljava/lang/String;
    const-string v3, "CpuDvfs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[output]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v1           #outStr:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/io/IOException;
    const-string v3, "CpuDvfs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getGovernorAvailList()[Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 211
    const-string v1, "cat  /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    .line 212
    .local v1, cmd:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, output:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 214
    new-array v0, v6, [Ljava/lang/CharSequence;

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 216
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 217
    const-string v5, " +"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, items:[Ljava/lang/String;
    array-length v5, v3

    if-lez v5, :cond_2

    .line 220
    array-length v5, v3

    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 221
    .local v0, charItems:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 222
    aget-object v5, v3, v2

    aput-object v5, v0, v2

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 225
    .end local v0           #charItems:[Ljava/lang/CharSequence;
    .end local v2           #i:I
    :cond_2
    new-array v0, v6, [Ljava/lang/CharSequence;

    .restart local v0       #charItems:[Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private getGovernorIndex([Ljava/lang/CharSequence;)I
    .locals 5
    .parameter "items"

    .prologue
    const/4 v3, -0x1

    .line 231
    if-nez p1, :cond_1

    move v1, v3

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 235
    :cond_1
    const-string v0, "cat  /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    .line 236
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, target:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 238
    aget-object v4, p1, v1

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    .line 242
    goto :goto_0
.end method

.method private initUIByData()V
    .locals 14

    .prologue
    .line 152
    const-string v0, "cat /proc/cpufreq/cpufreq_cur_freq"

    .line 153
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, output:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 156
    const-string v10, "Feature Fail or Don\'t Support!"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 184
    :cond_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 161
    const-string v10, " *\n *"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, freqInfos:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v1, v3, v10

    .line 163
    .local v1, dftFreq:Ljava/lang/String;
    const-string v10, " *: *"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, keyVal:[Ljava/lang/String;
    iget-object v10, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mEditCpuClockVal:Landroid/widget/EditText;

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const/4 v7, 0x1

    .local v7, i:I
    :goto_0
    array-length v10, v3

    if-ge v7, v10, :cond_0

    .line 166
    aget-object v10, v3, v7

    const-string v11, " +"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, freqParts:[Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 169
    .local v5, freqVal:J
    const/4 v10, 0x1

    :try_start_0
    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 173
    :goto_1
    iget-wide v10, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mFreqMax:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    .line 174
    iput-wide v5, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mFreqMax:J

    .line 178
    :cond_2
    :goto_2
    iget-wide v10, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mFreqMin:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    .line 179
    iput-wide v5, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mFreqMin:J

    .line 165
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v10, "CpuDvfs"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NumberFormatExcaption: parse available freq fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v4, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 175
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_4
    iget-wide v10, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mFreqMax:J

    cmp-long v10, v5, v10

    if-lez v10, :cond_2

    .line 176
    iput-wide v5, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mFreqMax:J

    goto :goto_2

    .line 180
    :cond_5
    iget-wide v10, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mFreqMin:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_3

    .line 181
    iput-wide v5, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mFreqMin:J

    goto :goto_3
.end method

.method private setCpuSpeed(Ljava/lang/String;)V
    .locals 4
    .parameter "speed"

    .prologue
    .line 269
    const-string v0, "echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    .line 270
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    const-string v1, "echo %1$s > /proc/cpufreq/cpufreq_cur_freq"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    return-void
.end method

.method private setGovernor(Ljava/lang/String;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, cmd:Ljava/lang/String;
    const-string v1, "CpuDvfs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetGovernor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    return-void
.end method

.method private showSelectDialog(Ljava/lang/String;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .parameter "title"
    .parameter "items"
    .parameter "checkedId"
    .parameter "listener"

    .prologue
    .line 188
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 191
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 192
    return-void
.end method

.method private validateSetting()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 130
    const-wide/16 v0, -0x1

    .line 133
    .local v0, cpuClock:J
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mEditCpuClockVal:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 140
    iget-wide v6, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mFreqMin:J

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    iget-wide v6, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mFreqMax:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 141
    :cond_0
    const v6, 0x7f080574

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, msg:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mFreqMin:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    iget-wide v7, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mFreqMax:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 146
    .end local v3           #msg:Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, e:Ljava/lang/NumberFormatException;
    const v4, 0x7f080572

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 136
    .restart local v3       #msg:Ljava/lang/String;
    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 137
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 278
    iget-object v1, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mGovernorItems:[Ljava/lang/CharSequence;

    aget-object v0, v1, p2

    .line 279
    .local v0, checkItem:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->setGovernor(Ljava/lang/String;)V

    .line 280
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 281
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b00e3

    if-ne v1, v2, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->validateSetting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mEditCpuClockVal:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->setCpuSpeed(Ljava/lang/String;)V

    .line 288
    const v1, 0x7f080573

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, msg:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 292
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v3, 0x7f030021

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 92
    const v3, 0x7f0b00e1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mLVCpuGovernor:Landroid/widget/ListView;

    .line 93
    iget-object v3, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mLVCpuGovernor:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    const v3, 0x7f0b00e2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mEditCpuClockVal:Landroid/widget/EditText;

    .line 95
    const v3, 0x7f0b00e3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mBtnSetFreq:Landroid/widget/Button;

    .line 96
    iget-object v3, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mBtnSetFreq:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v3, 0x7f080570

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, lblGovernor:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 99
    .local v1, arrGovernor:[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 100
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 102
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mLVCpuGovernor:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    invoke-direct {p0}, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->initUIByData()V

    .line 104
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 255
    const-string v1, "CpuDvfs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return-void

    .line 250
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->getGovernorAvailList()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mGovernorItems:[Ljava/lang/CharSequence;

    .line 251
    iget-object v1, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mGovernorItems:[Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->getGovernorIndex([Ljava/lang/CharSequence;)I

    move-result v0

    .line 252
    .local v0, index:I
    const v1, 0x7f080571

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->mGovernorItems:[Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0, p0}, Lcom/mediatek/engineermode/dvfs/CpuDvfs;->showSelectDialog(Ljava/lang/String;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
