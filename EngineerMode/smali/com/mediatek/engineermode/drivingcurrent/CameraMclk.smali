.class public Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;
.super Landroid/app/Activity;
.source "CameraMclk.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "mclkdriving"

.field private static final FILE_PATH:Ljava/lang/String; = "/data/data/com.mediatek.engineermode/sharefile"

.field private static final TAG:Ljava/lang/String; = "EM/CameraMCLK"


# instance fields
.field private mCurrentMCLK:Ljava/lang/String;

.field private mCurrentSpinner:Landroid/widget/Spinner;

.field private mFile:Ljava/io/File;

.field private mSwitchBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mCurrentMCLK:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mCurrentMCLK:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->writeFile()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->deleteFile()V

    return-void
.end method

.method private deleteFile()V
    .locals 4

    .prologue
    .line 145
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.mediatek.engineermode/sharefile"

    const-string v3, "mclkdriving"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mFile:Ljava/io/File;

    .line 146
    iget-object v1, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    const-string v1, "EM/CameraMCLK"

    const-string v2, "delete file error"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.mediatek.engineermode/sharefile"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    const-string v1, "EM/CameraMCLK"

    const-string v2, "delete direct error"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    return-void
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mCurrentSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk$1;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk$1;-><init>(Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mSwitchBtn:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk$2;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk$2;-><init>(Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method

.method private writeFile()V
    .locals 7

    .prologue
    .line 116
    const-string v4, "EM/CameraMCLK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeFile() currentMCLK :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mCurrentMCLK:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/data/com.mediatek.engineermode/sharefile"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 119
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 120
    const-string v4, "EM/CameraMCLK"

    const-string v5, "Make dir error!"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/data/com.mediatek.engineermode/sharefile"

    const-string v6, "mclkdriving"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mFile:Ljava/io/File;

    .line 124
    iget-object v4, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 126
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 134
    .local v2, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mFile:Ljava/io/File;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 135
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v3, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mCurrentMCLK:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 136
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 142
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 127
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 128
    .local v1, e:Ljava/io/IOException;
    const-string v4, "EM/CameraMCLK"

    const-string v5, "create file error"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 138
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v4, "EM/CameraMCLK"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 139
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 140
    .local v1, e:Ljava/io/IOException;
    :goto_3
    const-string v4, "EM/CameraMCLK"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 139
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 137
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 73
    const v0, 0x7f0b0137

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mCurrentSpinner:Landroid/widget/Spinner;

    .line 74
    const v0, 0x7f0b0138

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mSwitchBtn:Landroid/widget/Button;

    .line 75
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->mCurrentMCLK:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->initListeners()V

    .line 77
    return-void
.end method
