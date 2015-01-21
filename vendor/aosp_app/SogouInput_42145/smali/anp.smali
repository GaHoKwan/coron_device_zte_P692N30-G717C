.class public Lanp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 68
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged, mseekvalue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0, p2}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;I)I

    .line 71
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;I)Z

    .line 72
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0072

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)I

    move-result v1

    iput v1, v0, Lamo;->j:I

    .line 99
    :cond_0
    :goto_0
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    iget-object v2, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->setKey(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1, v4}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;Z)Z

    .line 103
    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->setKey(Ljava/lang/String;)V

    .line 105
    :cond_1
    return-void

    .line 75
    :cond_2
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v0, v0, Lamo;->h:I

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)I

    move-result v1

    iput v1, v0, Lamo;->h:I

    .line 79
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)I

    move-result v1

    invoke-virtual {v0, v1}, Lafp;->b(I)V

    .line 81
    :cond_3
    invoke-static {}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a()[J

    move-result-object v0

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1e

    int-to-long v1, v1

    aput-wide v1, v0, v4

    .line 82
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/os/Vibrator;

    move-result-object v0

    if-nez v0, :cond_4

    .line 83
    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;Landroid/os/Vibrator;)Landroid/os/Vibrator;

    .line 84
    :cond_4
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-static {}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a()[J

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_0

    .line 85
    :cond_5
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)I

    move-result v1

    iput v1, v0, Lamo;->g:I

    goto/16 :goto_0

    .line 88
    :cond_6
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0045

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v0, v0, Lamo;->l:I

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)I

    move-result v1

    invoke-virtual {v0, v1}, Lafp;->a(I)V

    .line 91
    :cond_7
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 92
    :cond_8
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 93
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40a0

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    const v1, 0x3dcccccd

    mul-float/2addr v0, v1

    .line 95
    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 96
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget-object v1, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)I

    move-result v1

    iput v1, v0, Lamo;->l:I

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    const-string v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lanp;->a:Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;Ljava/lang/String;)V

    .line 115
    return-void
.end method
