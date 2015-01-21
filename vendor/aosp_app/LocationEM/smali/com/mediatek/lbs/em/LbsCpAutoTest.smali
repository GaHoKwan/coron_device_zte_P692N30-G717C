.class public Lcom/mediatek/lbs/em/LbsCpAutoTest;
.super Landroid/app/Activity;
.source "LbsCpAutoTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;,
        Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;
    }
.end annotation


# static fields
.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.mediatek.lbs.em.ALARM_TIMEOUT"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonMnlController:Landroid/widget/Button;

.field private mButtonMnlVerifier:Landroid/widget/Button;

.field private mButtonResetAgpsd:Landroid/widget/Button;

.field private mButtonStartCpAutoTest:Landroid/widget/Button;

.field private mButtonStartEVDOAutoTest:Landroid/widget/Button;

.field public mMnlLister:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;

.field private mMnlVerifier:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

.field private mPopupMnlController:Landroid/widget/PopupMenu;

.field private mPopupMnlVerifier:Landroid/widget/PopupMenu;

.field private mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

.field private mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;

.field private mStringList:Lcom/mediatek/lbs/em/UtilityStringList;

.field private mTextViewAutoTestMessage:Landroid/widget/TextView;

.field private mTextViewAutoTestResult:Landroid/widget/TextView;

.field private mTimeoutIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Lcom/mediatek/lbs/em/UtilityStringList;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/em/UtilityStringList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;

    .line 90
    new-instance v0, Lcom/mediatek/lbs/em/LbsCpAutoTest$1;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$1;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 341
    new-instance v0, Lcom/mediatek/lbs/em/LbsCpAutoTest$11;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$11;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mMnlLister:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlResultListener;

    .line 556
    return-void
.end method

.method static synthetic access$000(J)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->timeInMillis2Date(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/UtilityStringList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTextViewAutoTestResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonMnlVerifier:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/lbs/em/LbsCpAutoTest;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTimeoutIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTextViewAutoTestMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mMnlVerifier:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/lbs/em/LbsCpAutoTest;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->fileExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlController:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method private fileExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 128
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private initWidget()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 133
    const v0, 0x7f050087

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonResetAgpsd:Landroid/widget/Button;

    .line 134
    const v0, 0x7f050088

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonMnlVerifier:Landroid/widget/Button;

    .line 135
    const v0, 0x7f05008a

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonMnlController:Landroid/widget/Button;

    .line 136
    const v0, 0x7f05008b

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonStartCpAutoTest:Landroid/widget/Button;

    .line 137
    const v0, 0x7f05008c

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonStartEVDOAutoTest:Landroid/widget/Button;

    .line 139
    const v0, 0x7f050089

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTextViewAutoTestResult:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f05008d

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTextViewAutoTestMessage:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTextViewAutoTestResult:Landroid/widget/TextView;

    const-string v1, "Result"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTextViewAutoTestMessage:Landroid/widget/TextView;

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonMnlVerifier:Landroid/widget/Button;

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    .line 146
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x1e

    const-string v2, "Auto Test V2 Gemini"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 147
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x1f

    const-string v2, "Auto Test V2 DT"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 148
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x20

    const-string v2, "Auto Test OFF"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 149
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "All TC"

    invoke-interface {v0, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 150
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "Stress All TC"

    invoke-interface {v0, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 151
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "NILR"

    invoke-interface {v0, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 152
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "MOLR"

    invoke-interface {v0, v3, v6, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 153
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "MTLR"

    invoke-interface {v0, v3, v7, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 155
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "MTLR_RESET"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 156
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "MTLR_VERIFY"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 157
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x7

    const-string v2, "MOLR_MULTI"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 159
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "MOLR_TIMEOUT"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 160
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x9

    const-string v2, "MOLR_RESET"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 161
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "MOLR_NOTIFY_ONLY"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 162
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0xb

    const-string v2, "MTLR_VERIFY_NO_SESSION"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 163
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0xc

    const-string v2, "MTLR_MULTI"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 164
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0xd

    const-string v2, "NILR_MULTI"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 168
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonMnlController:Landroid/widget/Button;

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlController:Landroid/widget/PopupMenu;

    .line 169
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlController:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "OPEN"

    invoke-interface {v0, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 170
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlController:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "CLOSE"

    invoke-interface {v0, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 171
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlController:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "START Location Request 485"

    invoke-interface {v0, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 172
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlController:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "START Measurement Request 486"

    invoke-interface {v0, v3, v6, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 173
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlController:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "STOP Location Request 485"

    invoke-interface {v0, v3, v7, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 174
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlController:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "STOP Measurement Request 486"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 176
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonStartCpAutoTest:Landroid/widget/Button;

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    .line 177
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "ALL"

    invoke-interface {v0, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 178
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "NILR"

    invoke-interface {v0, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 179
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "MOLR"

    invoke-interface {v0, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 180
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "MTLR"

    invoke-interface {v0, v3, v6, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 181
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "MTLR with Reset"

    invoke-interface {v0, v3, v7, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 182
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "MTLR with verification"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 184
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "MOLR Multiple"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 185
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x7

    const-string v2, "MOLR Timeout"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 186
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "MOLR Reset"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 187
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x9

    const-string v2, "MTLR Notify Only"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 188
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "MTLR Verify on Session"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 189
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0xb

    const-string v2, "MTLR Multiple"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 190
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0xc

    const-string v2, "NILR Multiple"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 193
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonStartEVDOAutoTest:Landroid/widget/Button;

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;

    .line 194
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x14

    const-string v2, "ALL"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 195
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x15

    const-string v2, "SI MSA"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 196
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x16

    const-string v2, "SI MSB"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 197
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x17

    const-string v2, "SI MSS"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 198
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x18

    const-string v2, "PLTS NI MSA"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 199
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x19

    const-string v2, "PLTS NI MSB"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 200
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x1a

    const-string v2, "PLTS NI MSS"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 201
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x1b

    const-string v2, "3rd party NI MSA"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 202
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x1c

    const-string v2, "3rd party NI MSB"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 203
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x1d

    const-string v2, "Delete aiding data"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 204
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x1e

    const-string v2, "MPC error"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 208
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonResetAgpsd:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/lbs/em/LbsCpAutoTest$2;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$2;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonMnlVerifier:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/lbs/em/LbsCpAutoTest$3;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$3;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonMnlController:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/lbs/em/LbsCpAutoTest$4;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$4;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonStartCpAutoTest:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/lbs/em/LbsCpAutoTest$5;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$5;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mButtonStartEVDOAutoTest:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/lbs/em/LbsCpAutoTest$6;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$6;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlVerifier:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/mediatek/lbs/em/LbsCpAutoTest$7;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$7;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupMnlController:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/mediatek/lbs/em/LbsCpAutoTest$8;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$8;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 325
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartCpAutoTest:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/mediatek/lbs/em/LbsCpAutoTest$9;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$9;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mPopupStartEVDOAutoTest:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/mediatek/lbs/em/LbsCpAutoTest$10;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$10;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 339
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 579
    const-string v0, "LocationEM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void
.end method

.method private msleep(J)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 567
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private static timeInMillis2Date(J)Ljava/lang/String;
    .locals 6
    .parameter "time"

    .prologue
    .line 583
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 584
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 589
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, date:Ljava/lang/String;
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->setContentView(I)V

    .line 77
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->initWidget()V

    .line 79
    new-instance v1, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;-><init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mMnlVerifier:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.agps.AGPS_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "com.mediatek.lbs.em.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mAlarmManager:Landroid/app/AlarmManager;

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.lbs.em.ALARM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 574
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 575
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 576
    return-void
.end method
