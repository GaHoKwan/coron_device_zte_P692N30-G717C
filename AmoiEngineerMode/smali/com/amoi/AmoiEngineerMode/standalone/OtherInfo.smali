.class public Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;
.super Landroid/app/Activity;
.source "OtherInfo.java"


# instance fields
.field private mCameraType:Ljava/lang/String;

.field private mInfo_List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/AmoiEngineerMode/base/InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLcdType:Ljava/lang/String;

.field private mTpType:Ljava/lang/String;

.field protected phoneInfoListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->phoneInfoListView:Landroid/widget/ListView;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->mInfo_List:Ljava/util/ArrayList;

    return-void
.end method

.method private getCamerainfo()V
    .locals 6

    .prologue
    .line 79
    const-string v3, "/proc/main_camera_name"

    .line 81
    .local v3, fileName:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 82
    .local v4, fin:Ljava/io/FileInputStream;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .local v0, buffer:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v1

    .local v1, c:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 85
    const/16 v5, 0xa

    if-eq v1, v5, :cond_0

    .line 86
    int-to-char v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #c:I
    .end local v4           #fin:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 93
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const v5, 0x7f0600ee

    invoke-virtual {p0, v5}, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->mCameraType:Ljava/lang/String;

    .line 96
    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 89
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v1       #c:I
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->mCameraType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getTPinfo()V
    .locals 6

    .prologue
    .line 58
    const-string v3, "/sys/bus/platform/devices/mtk-tpd/driver/sensor_id"

    .line 60
    .local v3, fileName:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 61
    .local v4, fin:Ljava/io/FileInputStream;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v0, buffer:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v1

    .local v1, c:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 64
    const/16 v5, 0xa

    if-eq v1, v5, :cond_0

    .line 65
    int-to-char v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #c:I
    .end local v4           #fin:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 72
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const v5, 0x7f0600ee

    invoke-virtual {p0, v5}, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->mTpType:Ljava/lang/String;

    .line 75
    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 68
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v1       #c:I
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->mTpType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private initInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 38
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->getLcdinfo()V

    .line 39
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->getCamerainfo()V

    .line 40
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->getTPinfo()V

    .line 43
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;

    const v1, 0x7f0600ed

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->mLcdType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amoi/AmoiEngineerMode/base/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    .local v0, infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->mInfo_List:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;

    .end local v0           #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    const v1, 0x7f0600ef

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->mCameraType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amoi/AmoiEngineerMode/base/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    .restart local v0       #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->mInfo_List:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;

    .end local v0           #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    const v1, 0x7f0600fc

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->mTpType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amoi/AmoiEngineerMode/base/InfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    .restart local v0       #infos:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->mInfo_List:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->phoneInfoListView:Landroid/widget/ListView;

    new-instance v2, Lcom/amoi/AmoiEngineerMode/base/InfoListViewAdapter;

    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->mInfo_List:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/amoi/AmoiEngineerMode/base/InfoListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected getLcdinfo()V
    .locals 6

    .prologue
    .line 102
    const-string v3, "/proc/lcm_name"

    .line 104
    .local v3, fileName:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 105
    .local v4, fin:Ljava/io/FileInputStream;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v0, buffer:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v1

    .local v1, c:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 108
    const/16 v5, 0xa

    if-eq v1, v5, :cond_0

    .line 109
    int-to-char v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #c:I
    .end local v4           #fin:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 118
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    const v5, 0x7f0600ee

    invoke-virtual {p0, v5}, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->mLcdType:Ljava/lang/String;

    .line 122
    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 114
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v1       #c:I
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->mLcdType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected initButton()V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initOnlyExitButton(Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->setContentView(I)V

    .line 26
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->phoneInfoListView:Landroid/widget/ListView;

    .line 28
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->initInfo()V

    .line 29
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;->initButton()V

    .line 30
    return-void
.end method
