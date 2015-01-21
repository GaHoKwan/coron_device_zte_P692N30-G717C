.class public Lcom/mediatek/lbs/em/LbsEpo;
.super Landroid/app/Activity;
.source "LbsEpo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/lbs/em/LbsEpo$StressTest;
    }
.end annotation


# static fields
.field private static final STRESS_END:I = 0x1

.field private static final UPDATE_STATUS:I


# instance fields
.field private mButtonEpoStress:Landroid/widget/ToggleButton;

.field private mButtonManual:Landroid/widget/Button;

.field private mDelay1:I

.field private mDelay2:I

.field private mEditTextEpoDelay1:Landroid/widget/EditText;

.field private mEditTextEpoDelay2:Landroid/widget/EditText;

.field private mEditTextNumOfLoop:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNumOfLoop:I

.field private mStressTest:Lcom/mediatek/lbs/em/LbsEpo$StressTest;

.field private mStringList:Lcom/mediatek/lbs/em/UtilityStringList;

.field private mTextViewProgress:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/16 v0, 0xa

    iput v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mNumOfLoop:I

    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mDelay1:I

    .line 25
    const/16 v0, 0x14

    iput v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mDelay2:I

    .line 34
    new-instance v0, Lcom/mediatek/lbs/em/LbsEpo$StressTest;

    iget v1, p0, Lcom/mediatek/lbs/em/LbsEpo;->mNumOfLoop:I

    iget v2, p0, Lcom/mediatek/lbs/em/LbsEpo;->mDelay1:I

    iget v3, p0, Lcom/mediatek/lbs/em/LbsEpo;->mDelay2:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mediatek/lbs/em/LbsEpo$StressTest;-><init>(Lcom/mediatek/lbs/em/LbsEpo;III)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mStressTest:Lcom/mediatek/lbs/em/LbsEpo$StressTest;

    .line 35
    new-instance v0, Lcom/mediatek/lbs/em/UtilityStringList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/em/UtilityStringList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mLocationManager:Landroid/location/LocationManager;

    .line 197
    new-instance v0, Lcom/mediatek/lbs/em/LbsEpo$3;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsEpo$3;-><init>(Lcom/mediatek/lbs/em/LbsEpo;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/lbs/em/LbsEpo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsEpo;->epoManual()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/lbs/em/LbsEpo;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mButtonEpoStress:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/lbs/em/LbsEpo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsEpo;->epoStressTest(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/lbs/em/LbsEpo;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsEpo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/lbs/em/LbsEpo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsEpo;->enableWidgetAfterStress()V

    return-void
.end method

.method private enableWidgetAfterStress()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 123
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mStressTest:Lcom/mediatek/lbs/em/LbsEpo$StressTest;

    invoke-virtual {v0}, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->stopStress()V

    .line 124
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mButtonManual:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mEditTextNumOfLoop:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mEditTextEpoDelay1:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mEditTextEpoDelay2:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mButtonEpoStress:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 130
    return-void
.end method

.method private epoManual()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "force_xtra_injection"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 92
    return-void
.end method

.method private epoStressTest(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v5, 0x0

    .line 95
    if-eqz p1, :cond_0

    .line 97
    :try_start_0
    new-instance v1, Lcom/mediatek/lbs/em/LbsEpo$StressTest;

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsEpo;->mEditTextNumOfLoop:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsEpo;->mEditTextEpoDelay1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsEpo;->mEditTextEpoDelay2:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/mediatek/lbs/em/LbsEpo$StressTest;-><init>(Lcom/mediatek/lbs/em/LbsEpo;III)V

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsEpo;->mStressTest:Lcom/mediatek/lbs/em/LbsEpo$StressTest;

    .line 101
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsEpo;->mStressTest:Lcom/mediatek/lbs/em/LbsEpo$StressTest;

    invoke-virtual {v1}, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->startStress()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsEpo;->mButtonManual:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsEpo;->mEditTextNumOfLoop:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 112
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsEpo;->mEditTextEpoDelay1:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 113
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsEpo;->mEditTextEpoDelay2:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 118
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsEpo;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ERR: Parameters error!!"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 106
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsEpo;->mButtonEpoStress:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 116
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsEpo;->enableWidgetAfterStress()V

    goto :goto_0
.end method

.method private initWidget()V
    .locals 2

    .prologue
    .line 64
    const v0, 0x7f050091

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsEpo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mButtonManual:Landroid/widget/Button;

    .line 65
    const v0, 0x7f050092

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsEpo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mButtonEpoStress:Landroid/widget/ToggleButton;

    .line 66
    const v0, 0x7f050094

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsEpo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mEditTextNumOfLoop:Landroid/widget/EditText;

    .line 67
    const v0, 0x7f050096

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsEpo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mEditTextEpoDelay1:Landroid/widget/EditText;

    .line 68
    const v0, 0x7f050098

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsEpo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mEditTextEpoDelay2:Landroid/widget/EditText;

    .line 71
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mEditTextNumOfLoop:Landroid/widget/EditText;

    iget v1, p0, Lcom/mediatek/lbs/em/LbsEpo;->mNumOfLoop:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mEditTextEpoDelay1:Landroid/widget/EditText;

    iget v1, p0, Lcom/mediatek/lbs/em/LbsEpo;->mDelay1:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mEditTextEpoDelay2:Landroid/widget/EditText;

    iget v1, p0, Lcom/mediatek/lbs/em/LbsEpo;->mDelay2:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mButtonManual:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/lbs/em/LbsEpo$1;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsEpo$1;-><init>(Lcom/mediatek/lbs/em/LbsEpo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mButtonEpoStress:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/mediatek/lbs/em/LbsEpo$2;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsEpo$2;-><init>(Lcom/mediatek/lbs/em/LbsEpo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 234
    const-string v0, "LocationEM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsEpo;->setContentView(I)V

    .line 43
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsEpo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mLocationManager:Landroid/location/LocationManager;

    .line 44
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsEpo;->initWidget()V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 49
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsEpo;->mStressTest:Lcom/mediatek/lbs/em/LbsEpo$StressTest;

    invoke-virtual {v0}, Lcom/mediatek/lbs/em/LbsEpo$StressTest;->stopStress()V

    .line 50
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 56
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 61
    return-void
.end method

.method public sendMessage(IILjava/lang/String;)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "text"

    .prologue
    .line 223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "text"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 226
    .local v1, m:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 227
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 228
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsEpo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    return-void
.end method
