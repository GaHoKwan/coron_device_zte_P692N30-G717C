.class public Lcom/zte/engineer/AudioLoopTest;
.super Lcom/zte/engineer/ZteActivity;
.source "AudioLoopTest.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ZTEAudioLoopTest"


# instance fields
.field private isHeadsetConnect:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private running:Z

.field private soundeffect:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/engineer/AudioLoopTest;->mAudioManager:Landroid/media/AudioManager;

    .line 30
    iput-boolean v1, p0, Lcom/zte/engineer/AudioLoopTest;->soundeffect:Z

    .line 31
    iput-boolean v1, p0, Lcom/zte/engineer/AudioLoopTest;->running:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/AudioLoopTest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/zte/engineer/AudioLoopTest;->running:Z

    return v0
.end method

.method static synthetic access$100(Lcom/zte/engineer/AudioLoopTest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/zte/engineer/AudioLoopTest;->soundeffect:Z

    return v0
.end method

.method static synthetic access$200(Lcom/zte/engineer/AudioLoopTest;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zte/engineer/AudioLoopTest;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public finishSelf(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/AudioLoopTest;->running:Z

    .line 106
    iget-object v0, p0, Lcom/zte/engineer/AudioLoopTest;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "SET_LOOPBACK_TYPE=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 109
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0xa

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-virtual {p0, v1}, Lcom/zte/engineer/AudioLoopTest;->finishSelf(I)V

    .line 132
    :goto_0
    return-void

    .line 118
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/zte/engineer/AudioLoopTest;->finishSelf(I)V

    goto :goto_0

    .line 123
    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/engineer/AudioLoopTest;->finishSelf(I)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x7f08006e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 49
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 51
    const v1, 0x7f080065

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, mTextView:Landroid/widget/TextView;
    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/zte/engineer/AudioLoopTest;->mAudioManager:Landroid/media/AudioManager;

    .line 56
    const v1, 0x7f08006e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f08006f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/AudioLoopTest;->running:Z

    .line 89
    iget-object v0, p0, Lcom/zte/engineer/AudioLoopTest;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "SET_LOOPBACK_TYPE=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/engineer/AudioLoopTest;->running:Z

    .line 65
    new-instance v0, Lcom/zte/engineer/AudioLoopTest$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/AudioLoopTest$1;-><init>(Lcom/zte/engineer/AudioLoopTest;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/AudioLoopTest;->running:Z

    .line 98
    iget-object v0, p0, Lcom/zte/engineer/AudioLoopTest;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "SET_LOOPBACK_TYPE=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 100
    return-void
.end method
