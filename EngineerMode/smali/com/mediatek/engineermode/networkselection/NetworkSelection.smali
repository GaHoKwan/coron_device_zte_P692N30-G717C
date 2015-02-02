.class public Lcom/mediatek/engineermode/networkselection/NetworkSelection;
.super Landroid/app/Activity;
.source "NetworkSelection.java"


# static fields
.field private static final CDMA_ONLY_INDEX:I = 0x1

.field private static final GLOBAL_MODE_INDEX:I = 0x0

.field private static final GSM_ONLY_INDEX:I = 0x2

.field public static final SLOT_ID_KEY:Ljava/lang/String; = "SLOT"

.field private static final TAG:Ljava/lang/String; = "NetworkSelection"


# instance fields
.field private mCurrentType:I

.field mNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNetworkType:Landroid/widget/Spinner;

.field private mSlotId:I

.field private mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mNetworkType:Landroid/widget/Spinner;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mSlotId:I

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mCurrentType:I

    .line 77
    new-instance v0, Lcom/mediatek/engineermode/networkselection/NetworkSelection$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/networkselection/NetworkSelection$1;-><init>(Lcom/mediatek/engineermode/networkselection/NetworkSelection;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/networkselection/NetworkSelection;)Lcom/mediatek/common/telephony/ITelephonyEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/networkselection/NetworkSelection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mCurrentType:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/networkselection/NetworkSelection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mCurrentType:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/networkselection/NetworkSelection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mSlotId:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v1, 0x7f030067

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 119
    const v1, 0x7f0b0362

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mNetworkType:Landroid/widget/Spinner;

    .line 120
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 123
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 124
    iget-object v1, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 125
    iget-object v1, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mNetworkType:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 127
    iget-object v1, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    if-nez v1, :cond_0

    .line 128
    const-string v1, "phoneEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    if-nez v1, :cond_1

    .line 131
    const-string v1, "NetworkSelection"

    const-string v2, "getService() failed"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 135
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 141
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    if-nez v2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v1, -0x1

    .line 148
    .local v1, mode:I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/ITelephonyEx;->getInternationalNetworkMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    const-string v2, "NetworkSelection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMode. slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/AbsSpinner;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 158
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modem returned invalid network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NetworkSelection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInternationalNetworkMode failed. slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v2, "Failed to get International Network Mode"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 162
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 163
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    iput v2, p0, Lcom/mediatek/engineermode/networkselection/NetworkSelection;->mCurrentType:I

    goto/16 :goto_0
.end method
