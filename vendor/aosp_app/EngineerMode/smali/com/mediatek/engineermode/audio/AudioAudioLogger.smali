.class public Lcom/mediatek/engineermode/audio/AudioAudioLogger;
.super Landroid/app/Activity;
.source "AudioAudioLogger.java"


# static fields
.field private static final DIALOG_ID_NO_SDCARD:I = 0x1

.field private static final DIALOG_ID_SDCARD_BUSY:I = 0x2

.field private static final DIALOG_ID_WAITING:I = 0x3

.field private static final GET_DUMP_A2DP_STREAM_OUT:I = 0x6a

.field private static final GET_DUMP_AUDIO_MIXER_BUF:I = 0x66

.field private static final GET_DUMP_AUDIO_STREAM_IN:I = 0x6c

.field private static final GET_DUMP_AUDIO_STREAM_OUT:I = 0x64

.field private static final GET_DUMP_AUDIO_TRACK_BUF:I = 0x68

.field private static final MSG_ID_SET_DUMP_INFO_DONE:I = 0x1

.field private static final MSG_ID_SET_DUMP_INFO_FAIL:I = 0x2

.field private static final SET_DUMP_A2DP_STREAM_OUT:I = 0x69

.field private static final SET_DUMP_AUDIO_DEBUG_INFO:I = 0x62

.field private static final SET_DUMP_AUDIO_MIXER_BUF:I = 0x65

.field private static final SET_DUMP_AUDIO_STREAM_IN:I = 0x6b

.field private static final SET_DUMP_AUDIO_STREAM_OUT:I = 0x63

.field private static final SET_DUMP_AUDIO_TRACK_BUF:I = 0x67


# instance fields
.field private mAudioA2DPStrmDump:Landroid/widget/CheckBox;

.field private mAudioMixerBufDump:Landroid/widget/CheckBox;

.field private mAudioStrmInptDump:Landroid/widget/CheckBox;

.field private mAudioStrmOtptDump:Landroid/widget/CheckBox;

.field private mAudioTrackBufDump:Landroid/widget/CheckBox;

.field private final mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDialog:Landroid/app/ProgressDialog;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 154
    new-instance v0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/audio/AudioAudioLogger$2;-><init>(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 187
    new-instance v0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/audio/AudioAudioLogger$3;-><init>(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->checkSDCardIsAvaliable()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioStrmOtptDump:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioMixerBufDump:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioTrackBufDump:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioA2DPStrmDump:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioStrmInptDump:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private checkSDCardIsAvaliable()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, state:Ljava/lang/String;
    const-string v1, "EM/Audio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Environment.getExternalStorageState() is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p0, v5}, Landroid/app/Activity;->showDialog(I)V

    .line 213
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 220
    :goto_0
    return-object v1

    .line 216
    :cond_0
    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 218
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 220
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 115
    const v1, 0x7f0b0001

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioStrmOtptDump:Landroid/widget/CheckBox;

    .line 116
    const v1, 0x7f0b0002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioMixerBufDump:Landroid/widget/CheckBox;

    .line 117
    const v1, 0x7f0b0003

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioTrackBufDump:Landroid/widget/CheckBox;

    .line 118
    const v1, 0x7f0b0004

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioA2DPStrmDump:Landroid/widget/CheckBox;

    .line 119
    const v1, 0x7f0b0005

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioStrmInptDump:Landroid/widget/CheckBox;

    .line 120
    const v1, 0x7f0b0006

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 122
    .local v0, mDumpAudioDbgInfo:Landroid/widget/Button;
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioStrmOtptDump:Landroid/widget/CheckBox;

    const/16 v1, 0x64

    invoke-static {v1}, Landroid/media/AudioSystem;->getAudioCommand(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 123
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioMixerBufDump:Landroid/widget/CheckBox;

    const/16 v1, 0x66

    invoke-static {v1}, Landroid/media/AudioSystem;->getAudioCommand(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 124
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioTrackBufDump:Landroid/widget/CheckBox;

    const/16 v1, 0x68

    invoke-static {v1}, Landroid/media/AudioSystem;->getAudioCommand(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 125
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioA2DPStrmDump:Landroid/widget/CheckBox;

    const/16 v1, 0x6a

    invoke-static {v1}, Landroid/media/AudioSystem;->getAudioCommand(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 126
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioStrmInptDump:Landroid/widget/CheckBox;

    const/16 v4, 0x6c

    invoke-static {v4}, Landroid/media/AudioSystem;->getAudioCommand(I)I

    move-result v4

    if-ne v4, v2, :cond_4

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 128
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioStrmOtptDump:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioMixerBufDump:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 130
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioTrackBufDump:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioA2DPStrmDump:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mAudioStrmInptDump:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    new-instance v1, Lcom/mediatek/engineermode/audio/AudioAudioLogger$1;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/audio/AudioAudioLogger$1;-><init>(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void

    :cond_0
    move v1, v3

    .line 122
    goto :goto_0

    :cond_1
    move v1, v3

    .line 123
    goto :goto_1

    :cond_2
    move v1, v3

    .line 124
    goto :goto_2

    :cond_3
    move v1, v3

    .line 125
    goto :goto_3

    :cond_4
    move v2, v3

    .line 126
    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    const v3, 0x104000a

    const/4 v0, 0x0

    .line 225
    packed-switch p1, :pswitch_data_0

    .line 244
    :goto_0
    return-object v0

    .line 227
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0801a1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 232
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0801a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 237
    :pswitch_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mDialog:Landroid/app/ProgressDialog;

    .line 238
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mDialog:Landroid/app/ProgressDialog;

    const-string v1, "Waiting"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mDialog:Landroid/app/ProgressDialog;

    const-string v1, "Waiting"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 241
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 242
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
