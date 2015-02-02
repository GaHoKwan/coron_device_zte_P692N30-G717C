.class public Lcom/mediatek/engineermode/videotelephone/WorkingMode;
.super Landroid/app/Activity;
.source "WorkingMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/WorkingMode"


# instance fields
.field private final mListener:Landroid/view/View$OnClickListener;

.field private mMediaLoopRadiogroup:Landroid/widget/RadioGroup;

.field private mNetworkLoopRadiogroup:Landroid/widget/RadioGroup;

.field private mNetworkLoopStackRadio:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    new-instance v0, Lcom/mediatek/engineermode/videotelephone/WorkingMode$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/videotelephone/WorkingMode$1;-><init>(Lcom/mediatek/engineermode/videotelephone/WorkingMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/videotelephone/WorkingMode;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->launchVTLoopbackActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/videotelephone/WorkingMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mMediaLoopRadiogroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/videotelephone/WorkingMode;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mNetworkLoopRadiogroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/videotelephone/WorkingMode;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->onClicked()V

    return-void
.end method

.method private launchVTLoopbackActivity()V
    .locals 4

    .prologue
    .line 193
    :try_start_0
    const-string v2, "EM/WorkingMode"

    const-string v3, "ready to send intent _VTLoopbackActivity!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.VTLoopbackActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "EM/WorkingMode"

    const-string v3, "Can\'t find VTLoopbackActivity activity!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onClicked()V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 188
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const v9, 0x7f0300a1

    invoke-virtual {p0, v9}, Landroid/app/Activity;->setContentView(I)V

    .line 140
    const v9, 0x7f0b04d7

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    .line 142
    .local v7, workingModeNormalRadio:Landroid/widget/RadioButton;
    const v9, 0x7f0b04d8

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 144
    .local v0, mediaLoopRadio:Landroid/widget/RadioButton;
    const v9, 0x7f0b04db

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 146
    .local v1, mediaLoopStackRadio:Landroid/widget/RadioButton;
    const v9, 0x7f0b04dc

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 148
    .local v2, mediaLoopTransceiverRadio:Landroid/widget/RadioButton;
    const v9, 0x7f0b04dd

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 150
    .local v6, workingModeNetworkLoopRadio:Landroid/widget/RadioButton;
    const v9, 0x7f0b04df

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mNetworkLoopStackRadio:Landroid/widget/RadioButton;

    .line 152
    const v9, 0x7f0b04e0

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 154
    .local v3, networkLoopServiceRadio:Landroid/widget/RadioButton;
    const v9, 0x7f0b04e1

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 156
    .local v8, workingModeTestFileRadio:Landroid/widget/RadioButton;
    const v9, 0x7f0b04da

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioGroup;

    iput-object v9, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mMediaLoopRadiogroup:Landroid/widget/RadioGroup;

    .line 158
    const v9, 0x7f0b04de

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioGroup;

    iput-object v9, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mNetworkLoopRadiogroup:Landroid/widget/RadioGroup;

    .line 162
    iget-object v9, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v9, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v9, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v9, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mNetworkLoopStackRadio:Landroid/widget/RadioButton;

    iget-object v10, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v9, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v9, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v9, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const-string v9, "engineermode_vt_preferences"

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 174
    .local v4, preferences:Landroid/content/SharedPreferences;
    const-string v9, "sdcard_flag"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 177
    .local v5, sDCardFlag:Z
    if-nez v5, :cond_0

    .line 178
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :cond_0
    iget-object v9, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    return-void
.end method
