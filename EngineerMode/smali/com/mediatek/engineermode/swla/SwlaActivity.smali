.class public Lcom/mediatek/engineermode/swla/SwlaActivity;
.super Landroid/app/Activity;
.source "SwlaActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/swla/SwlaActivity$ButtonListener;
    }
.end annotation


# static fields
.field private static final MSG_ASSERT:I = 0x1

.field private static final MSG_SWLA_ENABLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SWLA"


# instance fields
.field private final mATCmdHander:Landroid/os/Handler;

.field private mAssertBtn:Landroid/widget/Button;

.field private mEnableSwlaBtn:Landroid/widget/Button;

.field private mPaused:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity;->mPaused:Z

    .line 70
    new-instance v0, Lcom/mediatek/engineermode/swla/SwlaActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/swla/SwlaActivity$1;-><init>(Lcom/mediatek/engineermode/swla/SwlaActivity;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity;->mATCmdHander:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/swla/SwlaActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity;->mAssertBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/swla/SwlaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/swla/SwlaActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity;->mEnableSwlaBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/swla/SwlaActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/swla/SwlaActivity;->sendATCommad(Ljava/lang/String;I)V

    return-void
.end method

.method private sendATCommad(Ljava/lang/String;I)V
    .locals 5
    .parameter "str"
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 151
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 152
    .local v0, aTCmd:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+ESWLA="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 153
    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    .line 154
    iget-object v1, p0, Lcom/mediatek/engineermode/swla/SwlaActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/mediatek/engineermode/swla/SwlaActivity;->mATCmdHander:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 155
    const-string v1, "SWLA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send ATCmd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v0, 0x7f030087

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 111
    const v0, 0x7f0b042c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity;->mAssertBtn:Landroid/widget/Button;

    .line 112
    const v0, 0x7f0b042d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity;->mEnableSwlaBtn:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity;->mAssertBtn:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/engineermode/swla/SwlaActivity$ButtonListener;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/swla/SwlaActivity$ButtonListener;-><init>(Lcom/mediatek/engineermode/swla/SwlaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity;->mEnableSwlaBtn:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/engineermode/swla/SwlaActivity$ButtonListener;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/swla/SwlaActivity$ButtonListener;-><init>(Lcom/mediatek/engineermode/swla/SwlaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 117
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity;->mPaused:Z

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 129
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity;->mPaused:Z

    .line 123
    return-void
.end method
