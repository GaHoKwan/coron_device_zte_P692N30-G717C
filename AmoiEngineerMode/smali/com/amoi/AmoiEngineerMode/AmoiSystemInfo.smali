.class public Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;
.super Landroid/app/Activity;
.source "AmoiSystemInfo.java"


# instance fields
.field private hardwareVersion:Ljava/lang/String;

.field private mBuildType:Landroid/widget/TextView;

.field private mHardWareVer:Landroid/widget/TextView;

.field private mSN:Landroid/widget/TextView;

.field private mSystemVerTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRevisioninfo()V
    .locals 7

    .prologue
    .line 41
    const-string v3, "/proc/hwversion"

    .line 43
    .local v3, fileName:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 44
    .local v4, fin:Ljava/io/FileInputStream;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v0, buffer:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v1

    .local v1, c:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 47
    const/16 v5, 0xa

    if-eq v1, v5, :cond_0

    .line 48
    int-to-char v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #c:I
    .end local v4           #fin:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 57
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    invoke-static {}, Lcom/amoi/AmoiEngineerMode/DeviceInfo;->getHardwareVersion()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->hardwareVersion:Ljava/lang/String;

    .line 62
    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 53
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v1       #c:I
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->hardwareVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v3, 0x7f03002f

    invoke-virtual {p0, v3}, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->setContentView(I)V

    .line 24
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 25
    .local v2, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->getRevisioninfo()V

    .line 27
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSN()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, sn:Ljava/lang/String;
    const v3, 0x7f070079

    invoke-virtual {p0, v3}, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->mSystemVerTextView:Landroid/widget/TextView;

    .line 29
    const-string v3, "ro.build.display.id"

    const-string v4, "NULL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, softwareVersion:Ljava/lang/String;
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->mSystemVerTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const v3, 0x7f07007b

    invoke-virtual {p0, v3}, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->mSN:Landroid/widget/TextView;

    .line 33
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->mSN:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    const v3, 0x7f07007d

    invoke-virtual {p0, v3}, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->mBuildType:Landroid/widget/TextView;

    .line 35
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->mBuildType:Landroid/widget/TextView;

    const-string v4, "ro.build.type"

    const-string v5, "NULL"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const v3, 0x7f07007f

    invoke-virtual {p0, v3}, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->mHardWareVer:Landroid/widget/TextView;

    .line 37
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->mHardWareVer:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/AmoiSystemInfo;->hardwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method
