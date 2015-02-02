.class public Lcom/mediatek/engineermode/audio/AudioDebugSession;
.super Landroid/app/Activity;
.source "AudioDebugSession.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final GET_AECREC_TEST_ENABLE:I = 0xa5

.field private static final GET_MAGIASR_TEST_ENABLE:I = 0xa3

.field private static final SET_AECREC_TEST_ENABLE:I = 0xa4

.field private static final SET_MAGIASR_TEST_ENABLE:I = 0xa2

.field private static final TAG:Ljava/lang/String; = "EM/AudioDebugSession"


# instance fields
.field private mBtnDetect:Landroid/widget/Button;

.field private mCbAecRec:Landroid/widget/CheckBox;

.field private mCbMagi:Landroid/widget/CheckBox;

.field private mToast:Landroid/widget/Toast;

.field private mTvDetect:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 147
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mToast:Landroid/widget/Toast;

    .line 148
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 99
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mCbMagi:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    const/16 v4, 0xa2

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    move-result v0

    .line 101
    .local v0, ret:I
    const-string v1, "EM/AudioDebugSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAudioCommand(0xA2, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ret "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-ne v0, v6, :cond_0

    .line 103
    const-string v1, "set audio parameter 0xA2 failed."

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/audio/AudioDebugSession;->showToast(Ljava/lang/String;)V

    .line 112
    .end local v0           #ret:I
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 100
    goto :goto_0

    .restart local v0       #ret:I
    :cond_2
    move v2, v3

    .line 101
    goto :goto_1

    .line 105
    .end local v0           #ret:I
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mCbAecRec:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const/16 v4, 0xa4

    if-eqz p2, :cond_4

    move v1, v2

    :goto_3
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    move-result v0

    .line 107
    .restart local v0       #ret:I
    const-string v1, "EM/AudioDebugSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAudioCommand(0xA4, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_5

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ret "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-ne v0, v6, :cond_0

    .line 109
    const-string v1, "set audio parameter 0xA4 failed."

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/audio/AudioDebugSession;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .end local v0           #ret:I
    :cond_4
    move v1, v3

    .line 106
    goto :goto_3

    .restart local v0       #ret:I
    :cond_5
    move v2, v3

    .line 107
    goto :goto_4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mBtnDetect:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 117
    const/4 v3, -0x1

    .line 118
    .local v3, ret:I
    const-string v0, "cat /sys/class/switch/h2w/state"

    .line 120
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I

    move-result v3

    .line 121
    if-nez v3, :cond_3

    .line 122
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 123
    .local v2, mode:I
    const-string v4, "EM/AudioDebugSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sys/class/switch/h2w/state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 125
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mTvDetect:Landroid/widget/TextView;

    const v5, 0x7f0801bf

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #mode:I
    .end local v3           #ret:I
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v2       #mode:I
    .restart local v3       #ret:I
    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 127
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mTvDetect:Landroid/widget/TextView;

    const v5, 0x7f0801be

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 134
    .end local v2           #mode:I
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Ljava/io/IOException;
    const-string v4, "EM/AudioDebugSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v4, "Detection failed"

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/audio/AudioDebugSession;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #mode:I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mTvDetect:Landroid/widget/TextView;

    const v5, 0x7f0801bd

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 137
    .end local v2           #mode:I
    :catch_1
    move-exception v1

    .line 138
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "Detection failed"

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/audio/AudioDebugSession;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_2
    const-string v4, "Detection failed"

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/audio/AudioDebugSession;->showToast(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 76
    const v1, 0x7f0b0011

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mBtnDetect:Landroid/widget/Button;

    .line 77
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mBtnDetect:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v1, 0x7f0b0012

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mTvDetect:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0b000d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mCbMagi:Landroid/widget/CheckBox;

    .line 80
    const v1, 0x7f0b000e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mCbAecRec:Landroid/widget/CheckBox;

    .line 82
    const/16 v1, 0xa3

    invoke-static {v1}, Landroid/media/AudioSystem;->getAudioCommand(I)I

    move-result v0

    .line 83
    .local v0, ret:I
    const-string v1, "EM/AudioDebugSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAudioCommand(0xA3) ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-nez v0, :cond_0

    .line 85
    const v1, 0x7f0b000c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :goto_0
    const/16 v1, 0xa5

    invoke-static {v1}, Landroid/media/AudioSystem;->getAudioCommand(I)I

    move-result v0

    .line 92
    const-string v1, "EM/AudioDebugSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAudioCommand(0xA5) ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mCbAecRec:Landroid/widget/CheckBox;

    if-ne v0, v2, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 94
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mCbAecRec:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    return-void

    .line 87
    :cond_0
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mCbMagi:Landroid/widget/CheckBox;

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 88
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioDebugSession;->mCbMagi:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 87
    goto :goto_2

    :cond_2
    move v2, v3

    .line 93
    goto :goto_1
.end method
