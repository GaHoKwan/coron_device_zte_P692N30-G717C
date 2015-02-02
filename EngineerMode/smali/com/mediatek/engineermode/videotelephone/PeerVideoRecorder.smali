.class public Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;
.super Landroid/app/Activity;
.source "PeerVideoRecorder.java"


# instance fields
.field private mCheckBoxVideoRecService:Landroid/widget/CheckBox;

.field private mFormat:Ljava/lang/String;

.field private mSupportFormatSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->mFormat:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->mCheckBoxVideoRecService:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->mFormat:Ljava/lang/String;

    return-object p1
.end method

.method private initStatus()V
    .locals 6

    .prologue
    .line 113
    :try_start_0
    const-string v3, "engineermode_vt_preferences"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 116
    .local v2, preferences:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->mCheckBoxVideoRecService:Landroid/widget/CheckBox;

    const-string v4, "peer_video_recoder_service"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 119
    const-string v3, "peer_video_recoder_format"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, format:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->mSupportFormatSpinner:Landroid/widget/Spinner;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/AbsSpinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1           #format:Ljava/lang/String;
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "EM/VideoTelephony"

    const-string v4, "init status failed"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v2, 0x7f03006b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 64
    const v2, 0x7f0b0378

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 66
    .local v1, confirmButton:Landroid/widget/Button;
    new-instance v2, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder$1;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder$1;-><init>(Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v0, p0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 85
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 87
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08033f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080340

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 90
    const v2, 0x7f0b0377

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->mSupportFormatSpinner:Landroid/widget/Spinner;

    .line 92
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->mSupportFormatSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 93
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->mSupportFormatSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder$2;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder$2;-><init>(Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 106
    const v2, 0x7f0b0376

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->mCheckBoxVideoRecService:Landroid/widget/CheckBox;

    .line 108
    invoke-direct {p0}, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->initStatus()V

    .line 109
    return-void
.end method
