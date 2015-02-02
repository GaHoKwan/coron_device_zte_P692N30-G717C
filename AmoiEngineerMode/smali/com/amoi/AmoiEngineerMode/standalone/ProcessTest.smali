.class public Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;
.super Landroid/app/Activity;
.source "ProcessTest.java"


# instance fields
.field protected bt_ft_tv:Landroid/widget/TextView;

.field protected telMgr:Landroid/telephony/TelephonyManager;

.field textGsm:Ljava/lang/String;

.field textTd:Ljava/lang/String;

.field textVGsm:Landroid/widget/TextView;

.field textVTd:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isFileExit(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "fil"

    .prologue
    .line 49
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 53
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method private testNvm()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 61
    const-string v1, "/local/nvm/GsmCalData.nvm"

    invoke-direct {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->isFileExit(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/local/nvm/TdCalData.nvm"

    invoke-direct {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->isFileExit(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "OK"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->textGsm:Ljava/lang/String;

    .line 71
    :goto_0
    const-string v1, "/local/nvm/ManufactoryInf.nvm"

    invoke-direct {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->isFileExit(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    const-string v1, "NG"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->textTd:Ljava/lang/String;

    .line 73
    const-string v1, "SmallTest"

    const-string v2, "file is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_1
    return-void

    .line 64
    :cond_0
    const-string v1, "/local/nvm/GsmCalData.nvm"

    invoke-direct {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->isFileExit(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const-string v1, "Only GSM RF OK"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->textGsm:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_1
    const-string v1, "/local/nvm/TdCalData.nvm"

    invoke-direct {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->isFileExit(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    const-string v1, "Only TD RF OK"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->textGsm:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_2
    const-string v1, "NG"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->textGsm:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->getFileData()[B

    move-result-object v0

    .line 76
    .local v0, bs:[B
    aget-byte v1, v0, v4

    if-ne v1, v3, :cond_4

    aget-byte v1, v0, v3

    if-ne v1, v3, :cond_4

    .line 77
    const-string v1, "PASS"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->textTd:Ljava/lang/String;

    goto :goto_1

    .line 78
    :cond_4
    aget-byte v1, v0, v4

    if-eq v1, v3, :cond_5

    aget-byte v1, v0, v3

    if-eq v1, v3, :cond_5

    .line 79
    const-string v1, "NG"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->textTd:Ljava/lang/String;

    goto :goto_1

    .line 81
    :cond_5
    const-string v1, "SmallTest"

    const-string v2, "file is found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    aget-byte v1, v0, v4

    if-ne v1, v3, :cond_6

    .line 83
    const-string v1, "Only GSM RF PASS"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->textTd:Ljava/lang/String;

    goto :goto_1

    .line 85
    :cond_6
    const-string v1, "Only TD RF PASS"

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->textTd:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method getFileData()[B
    .locals 10

    .prologue
    .line 97
    new-instance v2, Ljava/io/File;

    const-string v8, "/local/nvm/ManufactoryInf.nvm"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, f:Ljava/io/File;
    const/4 v4, 0x0

    .line 99
    .local v4, len:I
    const/4 v8, 0x2

    new-array v6, v8, [B

    .line 101
    .local v6, res:[B
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 102
    .local v3, fr:Ljava/io/FileReader;
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v8, 0x400

    invoke-direct {v5, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 103
    .local v5, reader:Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, s:Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_0

    .line 105
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 106
    .local v0, bs:[B
    array-length v4, v0

    .line 107
    const/4 v8, 0x0

    add-int/lit8 v9, v4, -0x2

    aget-byte v9, v0, v9

    aput-byte v9, v6, v8

    .line 108
    const/4 v8, 0x1

    add-int/lit8 v9, v4, -0x1

    aget-byte v9, v0, v9

    aput-byte v9, v6, v8

    .line 109
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 110
    goto :goto_0

    .line 111
    .end local v0           #bs:[B
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    .end local v3           #fr:Ljava/io/FileReader;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v7           #s:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 114
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 115
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected initButton()V
    .locals 0

    .prologue
    .line 57
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initOnlyExitButton(Landroid/app/Activity;)V

    .line 58
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->setContentView(I)V

    .line 35
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->initButton()V

    .line 38
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->telMgr:Landroid/telephony/TelephonyManager;

    .line 39
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->textVGsm:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->textVTd:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->bt_ft_tv:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->bt_ft_tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->telMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->testNvm()V

    .line 44
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->textVGsm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->textGsm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->textVTd:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;->textTd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method
