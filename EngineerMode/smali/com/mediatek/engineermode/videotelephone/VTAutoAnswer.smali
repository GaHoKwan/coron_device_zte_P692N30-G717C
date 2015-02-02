.class public Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;
.super Landroid/app/Activity;
.source "VTAutoAnswer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/VTAutoAnswer"


# instance fields
.field private mButEableAutoAnswer:Landroid/widget/Button;

.field private mHasAutoAnswer:Z

.field private mRes:Landroid/content/res/Resources;

.field private mVtAutoAnswerTime:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mHasAutoAnswer:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mHasAutoAnswer:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mHasAutoAnswer:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mButEableAutoAnswer:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mVtAutoAnswerTime:Landroid/widget/EditText;

    return-object v0
.end method

.method private getStatus()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, status:Z
    const-string v5, "engineermode_vt_preferences"

    invoke-virtual {p0, v5, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v5, "auto_answer"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 112
    const-string v5, "EM/VTAutoAnswer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz v1, :cond_0

    .line 114
    iget-object v5, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mButEableAutoAnswer:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f08031d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v5, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mVtAutoAnswerTime:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 116
    iget-boolean v5, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mHasAutoAnswer:Z

    if-nez v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mHasAutoAnswer:Z

    .line 118
    :cond_0
    const-string v3, "auto_answer_time"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, time:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mVtAutoAnswerTime:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const-string v3, "EM/VTAutoAnswer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .end local v2           #time:Ljava/lang/String;
    :cond_1
    move v3, v4

    .line 116
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f030094

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mRes:Landroid/content/res/Resources;

    .line 66
    const v0, 0x7f0b0473

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mVtAutoAnswerTime:Landroid/widget/EditText;

    .line 67
    const v0, 0x7f0b0474

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mButEableAutoAnswer:Landroid/widget/Button;

    .line 68
    invoke-direct {p0}, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->getStatus()V

    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;->mButEableAutoAnswer:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer$1;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer$1;-><init>(Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method
