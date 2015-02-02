.class public Lcom/amoi/AmoiEngineerMode/standalone/CellData;
.super Landroid/app/Activity;
.source "CellData.java"


# static fields
.field private static final UPDATE_TEXT:I = 0x1


# instance fields
.field private cellId:I

.field private cellIdString:Ljava/lang/String;

.field private dBm:I

.field private gsmSignalStrength:I

.field private loc:I

.field private locString:Ljava/lang/String;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mData:[Ljava/lang/String;

.field private mGsmCellLocation:Landroid/telephony/gsm/GsmCellLocation;

.field mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTextView:Landroid/widget/TextView;

.field pStateListener:Landroid/telephony/PhoneStateListener;

.field private plmn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->plmn:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$2;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/standalone/CellData$2;-><init>(Lcom/amoi/AmoiEngineerMode/standalone/CellData;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->pStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amoi/AmoiEngineerMode/standalone/CellData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->dBm:I

    return v0
.end method

.method static synthetic access$002(Lcom/amoi/AmoiEngineerMode/standalone/CellData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->dBm:I

    return p1
.end method

.method static synthetic access$100(Lcom/amoi/AmoiEngineerMode/standalone/CellData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->gsmSignalStrength:I

    return v0
.end method

.method static synthetic access$102(Lcom/amoi/AmoiEngineerMode/standalone/CellData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->gsmSignalStrength:I

    return p1
.end method

.method static synthetic access$200(Lcom/amoi/AmoiEngineerMode/standalone/CellData;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getInfos()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->pStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 80
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mGsmCellLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 82
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const v0, 0x7f060043

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->plmn:Ljava/lang/String;

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mGsmCellLocation:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->cellId:I

    .line 88
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mGsmCellLocation:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->loc:I

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cell ID: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->cellId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->cellIdString:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lac: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->loc:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->locString:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plmn: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->plmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->plmn:Ljava/lang/String;

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->cellIdString:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->locString:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->plmn:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mData:[Ljava/lang/String;

    .line 97
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->plmn:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->setContentView(I)V

    .line 41
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 43
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 44
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f060083

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mData:[Ljava/lang/String;

    .line 47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTelephonyManager.getSimState()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    :goto_0
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mTextView:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f060067

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->gsmSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mListView:Landroid/widget/ListView;

    .line 57
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mData:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 58
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    new-instance v0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$1;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/standalone/CellData$1;-><init>(Lcom/amoi/AmoiEngineerMode/standalone/CellData;)V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mHandler:Landroid/os/Handler;

    .line 75
    return-void

    .line 50
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTelephonyManager.getSimState()===else=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->getInfos()V

    goto :goto_0
.end method
