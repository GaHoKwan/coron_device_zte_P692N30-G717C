.class public Lcom/zte/engineer/EarPhoneAudioLoopTest;
.super Lcom/zte/engineer/ZteActivity;
.source "EarPhoneAudioLoopTest.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "EarPhoneAudioLoopTest"


# instance fields
.field private isHeadsetConnect:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDialog:Landroid/app/AlertDialog;

.field protected mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private running:Z

.field private soundeffect:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->mAudioManager:Landroid/media/AudioManager;

    .line 30
    iput-boolean v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->soundeffect:Z

    .line 31
    iput-boolean v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->running:Z

    .line 32
    iput-object v1, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->mDialog:Landroid/app/AlertDialog;

    .line 34
    new-instance v0, Lcom/zte/engineer/EarPhoneAudioLoopTest$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/EarPhoneAudioLoopTest$1;-><init>(Lcom/zte/engineer/EarPhoneAudioLoopTest;)V

    iput-object v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/EarPhoneAudioLoopTest;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/engineer/EarPhoneAudioLoopTest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->isHeadsetConnect:I

    return p1
.end method

.method static synthetic access$200(Lcom/zte/engineer/EarPhoneAudioLoopTest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->running:Z

    return v0
.end method

.method private cancleInsertEarphoneDialog()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 163
    return-void
.end method

.method private displayInsertEarphoneDialog()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 158
    return-void
.end method


# virtual methods
.method public finishSelf(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->running:Z

    .line 169
    iget-object v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "SET_LOOPBACK_TYPE=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 171
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 172
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0xa

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 191
    invoke-virtual {p0, v1}, Lcom/zte/engineer/EarPhoneAudioLoopTest;->finishSelf(I)V

    .line 195
    :goto_0
    return-void

    .line 181
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/zte/engineer/EarPhoneAudioLoopTest;->finishSelf(I)V

    goto :goto_0

    .line 186
    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/engineer/EarPhoneAudioLoopTest;->finishSelf(I)V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x7f08006e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f06008c

    .line 71
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 79
    const v2, 0x7f030015

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 81
    const v2, 0x7f080065

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    .local v0, mTextView:Landroid/widget/TextView;
    const v2, 0x7f06008d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    const v2, 0x7f080068

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 86
    .local v1, mTextViewMsg:Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 89
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->mAudioManager:Landroid/media/AudioManager;

    .line 92
    const/4 v2, 0x4

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->isHeadsetConnect:I

    .line 94
    const v2, 0x7f08006e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v2, 0x7f08006f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/zte/engineer/EarPhoneAudioLoopTest$2;

    invoke-direct {v4, p0}, Lcom/zte/engineer/EarPhoneAudioLoopTest$2;-><init>(Lcom/zte/engineer/EarPhoneAudioLoopTest;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->mDialog:Landroid/app/AlertDialog;

    .line 107
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 140
    iget-object v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->running:Z

    .line 142
    iget-object v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "SET_LOOPBACK_TYPE=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->running:Z

    .line 117
    new-instance v1, Lcom/zte/engineer/EarPhoneAudioLoopTest$3;

    invoke-direct {v1, p0}, Lcom/zte/engineer/EarPhoneAudioLoopTest$3;-><init>(Lcom/zte/engineer/EarPhoneAudioLoopTest;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 134
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->running:Z

    .line 151
    iget-object v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "SET_LOOPBACK_TYPE=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 153
    return-void
.end method
