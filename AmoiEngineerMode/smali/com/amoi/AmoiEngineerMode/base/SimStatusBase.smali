.class public abstract Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;
.super Lcom/amoi/AmoiEngineerMode/base/TestBase;
.source "SimStatusBase.java"


# static fields
.field protected static final GEMINI_SIM_1:I = 0x0

.field protected static final GEMINI_SIM_2:I = 0x1


# instance fields
.field private final iTel:Lcom/android/internal/telephony/ITelephony;

.field sim1:Landroid/widget/TextView;

.field sim1_state:Landroid/widget/TextView;

.field sim2:Landroid/widget/TextView;

.field sim2_state:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;-><init>()V

    .line 21
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->iTel:Lcom/android/internal/telephony/ITelephony;

    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 38
    const v2, 0x7f07003c

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->sim1:Landroid/widget/TextView;

    .line 39
    const v2, 0x7f07003d

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->sim1_state:Landroid/widget/TextView;

    .line 40
    const v2, 0x7f07003e

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->sim2:Landroid/widget/TextView;

    .line 41
    const v2, 0x7f07003f

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->sim2_state:Landroid/widget/TextView;

    .line 42
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->sim1:Landroid/widget/TextView;

    const v3, 0x7f0600e4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 43
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->sim2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->sim2_state:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->sim2:Landroid/widget/TextView;

    const v3, 0x7f0600e5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->iTel:Lcom/android/internal/telephony/ITelephony;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->sim1_state:Landroid/widget/TextView;

    const v3, 0x7f0600e6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->iTel:Lcom/android/internal/telephony/ITelephony;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->sim2_state:Landroid/widget/TextView;

    const v3, 0x7f0600e6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :goto_1
    return-void

    .line 50
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->sim1_state:Landroid/widget/TextView;

    const v3, 0x7f0600e7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 51
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->sim1_state:Landroid/widget/TextView;

    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 55
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v1           #e1:Landroid/os/RemoteException;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->sim2_state:Landroid/widget/TextView;

    const v3, 0x7f0600e7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->sim2_state:Landroid/widget/TextView;

    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 64
    :catch_1
    move-exception v0

    .line 66
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected abstract initButton()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->setContentView(I)V

    .line 30
    const v0, 0x7f0600e3

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->initView()V

    .line 34
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/SimStatusBase;->initButton()V

    .line 35
    return-void
.end method
