.class public Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;
.super Landroid/app/Activity;
.source "TouchScreenSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;,
        Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$WorkThread;
    }
.end annotation


# static fields
.field private static final EVENT_UPDATE:I = 0x1

.field private static final PARA_PATH:Ljava/lang/String; = "/sys/module/tpd_debug/parameters"

.field private static final PARA_PATH2:Ljava/lang/String; = "/sys/module/tpd_setting/parameters"

.field private static final PARA_TAG:Ljava/lang/String; = "tpd_em_"

.field private static final TAG:Ljava/lang/String; = "EM/TouchScreen/set"

.field private static sCurrentFileName:Ljava/lang/String;

.field private static sFirstCommand:[Ljava/lang/String;

.field private static volatile sRun:Z


# instance fields
.field private mBtnSet:Landroid/widget/Button;

.field private mCategory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;",
            ">;"
        }
    .end annotation
.end field

.field private mEdit:Landroid/widget/EditText;

.field private mModeIndex:I

.field private mSdcardExist:Z

.field public mUpdateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/bin/sh"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "echo 2 > /sys/module/tpd_setting/parameters/tpd_mode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->sFirstCommand:[Ljava/lang/String;

    .line 92
    sput-boolean v3, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->sRun:Z

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->sCurrentFileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mSdcardExist:Z

    .line 96
    new-instance v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$1;-><init>(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mUpdateHandler:Landroid/os/Handler;

    .line 551
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mModeIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mModeIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mCategory:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->getFileValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->sRun:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mSdcardExist:Z

    return v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->sCurrentFileName:Ljava/lang/String;

    return-object v0
.end method

.method private getCategory()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 209
    new-instance v2, Ljava/io/File;

    const-string v9, "/sys/module/tpd_debug/parameters"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 211
    .local v4, files:[Ljava/io/File;
    if-nez v4, :cond_1

    move-object v7, v8

    .line 242
    :cond_0
    :goto_0
    return-object v7

    .line 214
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;>;"
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v3, v0, v5

    .line 216
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "tpd_em_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2

    .line 217
    new-instance v1, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;

    invoke-direct {v1, p0, v8}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;-><init>(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$1;)V

    .line 218
    .local v1, data:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;->mName:Ljava/lang/String;

    .line 219
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;->mFullPath:Ljava/lang/String;

    .line 220
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v1           #data:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 224
    .end local v3           #f:Ljava/io/File;
    :cond_3
    new-instance v2, Ljava/io/File;

    .end local v2           #dir:Ljava/io/File;
    const-string v9, "/sys/module/tpd_setting/parameters"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v2       #dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 226
    if-eqz v4, :cond_0

    .line 229
    move-object v0, v4

    array-length v6, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_5

    aget-object v3, v0, v5

    .line 230
    .restart local v3       #f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "tpd_em_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_4

    .line 231
    new-instance v1, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;

    invoke-direct {v1, p0, v8}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;-><init>(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$1;)V

    .line 232
    .restart local v1       #data:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;->mName:Ljava/lang/String;

    .line 233
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;->mFullPath:Ljava/lang/String;

    .line 234
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v1           #data:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 239
    .end local v3           #f:Ljava/io/File;
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v7, v8

    .line 240
    goto :goto_0
.end method

.method private getFileValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    .line 173
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/bin/sh"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "-c"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 177
    .local v0, cmd:[Ljava/lang/String;
    const-string v3, "EM/TouchScreen/set"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->GetFileValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_0
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenShellExe;->execCommand([Ljava/lang/String;)I

    move-result v2

    .line 182
    .local v2, ret:I
    if-nez v2, :cond_0

    .line 183
    invoke-static {}, Lcom/mediatek/engineermode/touchscreen/TouchScreenShellExe;->getOutput()Ljava/lang/String;

    move-result-object v3

    .line 189
    .end local v2           #ret:I
    :goto_0
    return-object v3

    .line 185
    .restart local v2       #ret:I
    :cond_0
    const-string v3, "N/A"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v2           #ret:I
    :catch_0
    move-exception v1

    .line 188
    .local v1, e:Ljava/io/IOException;
    const-string v3, "EM/TouchScreen/set"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->GetFileValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v3, "N/A"

    goto :goto_0
.end method

.method private setCategory(Ljava/lang/String;)V
    .locals 7
    .parameter "editString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 493
    invoke-virtual {p0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->runFirstCommand()V

    .line 495
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "/system/bin/sh"

    aput-object v2, v0, v6

    const/4 v2, 0x1

    const-string v3, "-c"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "echo "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mCategory:Ljava/util/ArrayList;

    iget v5, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mModeIndex:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;

    iget-object v2, v2, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;->mFullPath:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 500
    .local v0, cmd:[Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenShellExe;->execCommand([Ljava/lang/String;)I

    move-result v1

    .line 501
    .local v1, ret:I
    if-nez v1, :cond_0

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mCategory:Ljava/util/ArrayList;

    iget v4, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mModeIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;

    iget-object v2, v2, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " success."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 512
    :goto_0
    return-void

    .line 507
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mCategory:Ljava/util/ArrayList;

    iget v4, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mModeIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;

    iget-object v2, v2, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21
    .parameter "arg0"

    .prologue
    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mBtnSet:Landroid/widget/Button;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mEdit:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 303
    .local v10, editString:Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_2

    .line 304
    :cond_0
    const-string v17, "Please input the value."

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 490
    .end local v10           #editString:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 312
    .restart local v10       #editString:Ljava/lang/String;
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mCategory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mModeIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "tpd_em_log_to_fs"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 316
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mSdcardExist:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 317
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    const-string v17, "Error"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 320
    const-string v17, "No SD card exists."

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 321
    const-string v17, "OK"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 480
    .end local v3           #builder:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v9

    .line 481
    .local v9, e:Ljava/io/IOException;
    const-string v17, "EM/TouchScreen/set"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Set ."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mCategory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mModeIndex:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " exception."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 325
    .end local v9           #e:Ljava/io/IOException;
    :cond_3
    :try_start_1
    const-string v17, "touch_screen_settings"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 329
    .local v12, preferences:Landroid/content/SharedPreferences;
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 332
    const/16 v17, 0x0

    sput-boolean v17, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->sRun:Z

    .line 333
    const-string v17, "EM/TouchScreen/set"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "close file log mRun = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->sRun:Z

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v17, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->setCategory(Ljava/lang/String;)V

    .line 335
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 336
    .local v11, editor:Landroid/content/SharedPreferences$Editor;
    const-string v17, "filename"

    const-string v18, "N"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 340
    .end local v11           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mCategory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mModeIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;->mFullPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->getFileValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, curVal:Ljava/lang/String;
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "N/A"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 344
    const-string v17, "File Log Already Opened."

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 349
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->runFirstCommand()V

    .line 351
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "/system/bin/sh"

    aput-object v18, v4, v17

    const/16 v17, 0x1

    const-string v18, "-c"

    aput-object v18, v4, v17

    const/16 v17, 0x2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "echo "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " > "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/sys/module/tpd_debug/parameters"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/tpd_em_log"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v4, v17

    .line 357
    .local v4, cmd:[Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/engineermode/touchscreen/TouchScreenShellExe;->execCommand([Ljava/lang/String;)I

    move-result v13

    .line 358
    .local v13, ret:I
    if-eqz v13, :cond_6

    .line 359
    const-string v17, "Set tpd_em_log failed. open file log failed."

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 366
    :cond_6
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "/system/bin/sh"

    aput-object v18, v6, v17

    const/16 v17, 0x1

    const-string v18, "-c"

    aput-object v18, v6, v17

    const/16 v18, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "echo "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " > "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mCategory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mModeIndex:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;->mFullPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v18

    .line 372
    .local v6, cmdx:[Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/engineermode/touchscreen/TouchScreenShellExe;->execCommand([Ljava/lang/String;)I

    move-result v13

    .line 373
    if-nez v13, :cond_8

    .line 374
    const-string v17, "open file log success."

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 384
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    .line 385
    .local v14, sdcard:Ljava/io/File;
    new-instance v16, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/TouchLog/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .local v16, touchLog:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_7

    .line 389
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 390
    const-string v17, "EM/TouchScreen/set"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mkdir "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " success"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_7
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy-MM-dd_HH-mm-ss"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 395
    .local v8, df:Ljava/text/SimpleDateFormat;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/L"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->sCurrentFileName:Ljava/lang/String;

    .line 397
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "echo START > "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->sCurrentFileName:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 398
    .local v15, shell:Ljava/lang/String;
    const-string v17, "EM/TouchScreen/set"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "file shell "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "/system/bin/sh"

    aput-object v18, v5, v17

    const/16 v17, 0x1

    const-string v18, "-c"

    aput-object v18, v5, v17

    const/16 v17, 0x2

    aput-object v15, v5, v17

    .line 400
    .local v5, cmd2:[Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/engineermode/touchscreen/TouchScreenShellExe;->execCommand([Ljava/lang/String;)I

    move-result v13

    .line 401
    if-eqz v13, :cond_9

    .line 404
    const-string v17, "Error: Create file in sdcard failed!!"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 378
    .end local v5           #cmd2:[Ljava/lang/String;
    .end local v8           #df:Ljava/text/SimpleDateFormat;
    .end local v14           #sdcard:Ljava/io/File;
    .end local v15           #shell:Ljava/lang/String;
    .end local v16           #touchLog:Ljava/io/File;
    :cond_8
    const-string v17, "open file log failed."

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 410
    .restart local v5       #cmd2:[Ljava/lang/String;
    .restart local v8       #df:Ljava/text/SimpleDateFormat;
    .restart local v14       #sdcard:Ljava/io/File;
    .restart local v15       #shell:Ljava/lang/String;
    .restart local v16       #touchLog:Ljava/io/File;
    :cond_9
    const/16 v17, 0x1

    sput-boolean v17, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->sRun:Z

    .line 411
    new-instance v17, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$WorkThread;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$WorkThread;-><init>(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    .line 413
    const-string v17, "EM/TouchScreen/set"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "thread start mRun = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->sRun:Z

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v17, "Start log file to sdcard."

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 416
    const-string v17, "EM/TouchScreen/set"

    const-string v18, "Start log file to sdcard."

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 418
    .restart local v11       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v17, "filename"

    sget-object v18, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->sCurrentFileName:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 419
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 423
    .end local v4           #cmd:[Ljava/lang/String;
    .end local v5           #cmd2:[Ljava/lang/String;
    .end local v6           #cmdx:[Ljava/lang/String;
    .end local v7           #curVal:Ljava/lang/String;
    .end local v8           #df:Ljava/text/SimpleDateFormat;
    .end local v11           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v12           #preferences:Landroid/content/SharedPreferences;
    .end local v13           #ret:I
    .end local v14           #sdcard:Ljava/io/File;
    .end local v15           #shell:Ljava/lang/String;
    .end local v16           #touchLog:Ljava/io/File;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mCategory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mModeIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "tpd_em_log"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 425
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 427
    const/16 v17, 0x0

    sput-boolean v17, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->sRun:Z

    .line 428
    const-string v17, "EM/TouchScreen/set"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "uart close mRun = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->sRun:Z

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v17, "touch_screen_settings"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 432
    .restart local v12       #preferences:Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 433
    .restart local v11       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v17, "filename"

    const-string v18, "N"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 434
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->runFirstCommand()V

    .line 438
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "/system/bin/sh"

    aput-object v18, v4, v17

    const/16 v17, 0x1

    const-string v18, "-c"

    aput-object v18, v4, v17

    const/16 v17, 0x2

    const-string v18, "echo 0 > /sys/module/tpd_debug/parameters/tpd_em_log_to_fs"

    aput-object v18, v4, v17

    .line 443
    .restart local v4       #cmd:[Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/engineermode/touchscreen/TouchScreenShellExe;->execCommand([Ljava/lang/String;)I

    move-result v13

    .line 444
    .restart local v13       #ret:I
    if-eqz v13, :cond_b

    .line 445
    const-string v17, "Set tpd_em_log_to_fs failed. close file log failed."

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 452
    :cond_b
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "/system/bin/sh"

    aput-object v18, v6, v17

    const/16 v17, 0x1

    const-string v18, "-c"

    aput-object v18, v6, v17

    const/16 v18, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "echo "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " > "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mCategory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mModeIndex:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;->mFullPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v18

    .line 462
    .restart local v6       #cmdx:[Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/engineermode/touchscreen/TouchScreenShellExe;->execCommand([Ljava/lang/String;)I

    move-result v13

    .line 463
    if-nez v13, :cond_c

    .line 464
    const-string v17, "Close uart log success."

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 468
    :cond_c
    const-string v17, "Close uart log failed."

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 474
    .end local v4           #cmd:[Ljava/lang/String;
    .end local v6           #cmdx:[Ljava/lang/String;
    .end local v11           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v12           #preferences:Landroid/content/SharedPreferences;
    .end local v13           #ret:I
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->setCategory(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->setCategory(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v4, 0x7f03008a

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 125
    const v4, 0x7f0b0442

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mBtnSet:Landroid/widget/Button;

    .line 126
    const v4, 0x7f0b0441

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mEdit:Landroid/widget/EditText;

    .line 127
    const v4, 0x7f0b043f

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 129
    .local v3, modeSpinner:Landroid/widget/Spinner;
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v2, p0, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 131
    .local v2, modeAdatper:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 133
    invoke-direct {p0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->getCategory()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mCategory:Ljava/util/ArrayList;

    .line 134
    iget-object v4, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mCategory:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v4, "Warning"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 137
    const-string v4, "No setting file exist."

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 138
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 139
    const-string v4, "OK"

    new-instance v5, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$2;

    invoke-direct {v5, p0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$2;-><init>(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 170
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mCategory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 150
    iget-object v4, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mCategory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;

    iget-object v4, v4, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 153
    new-instance v4, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$3;

    invoke-direct {v4, p0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$3;-><init>(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 166
    iget-object v4, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mSdcardExist:Z

    .line 202
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mSdcardExist:Z

    .line 206
    :cond_0
    return-void
.end method

.method public runFirstCommand()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 524
    :try_start_0
    sget-object v2, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->sFirstCommand:[Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/engineermode/touchscreen/TouchScreenShellExe;->execCommand([Ljava/lang/String;)I

    move-result v1

    .line 526
    .local v1, ret:I
    const-string v2, "EM/TouchScreen/set"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write tpd_mode result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/engineermode/touchscreen/TouchScreenShellExe;->getOutput()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    if-nez v1, :cond_0

    .line 529
    const-string v2, "write tpd_mode 2 success."

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 544
    .end local v1           #ret:I
    :goto_0
    return-void

    .line 533
    .restart local v1       #ret:I
    :cond_0
    const-string v2, "write tpd_mode 2 failed."

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    .end local v1           #ret:I
    :catch_0
    move-exception v0

    .line 539
    .local v0, e:Ljava/io/IOException;
    const-string v2, "EM/TouchScreen/set"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v2, "write tpd_mode 2  exception."

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
