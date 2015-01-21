.class Laxx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic a:Laxw;


# direct methods
.method constructor <init>(Laxw;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Laxx;->a:Laxw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .parameter

    .prologue
    .line 275
    const-string v0, "          VoiceInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange is called,onAudioFocusChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 279
    iget-object v0, p0, Laxx;->a:Laxw;

    invoke-static {v0}, Laxw;->a(Laxw;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Laxx;->a:Laxw;

    iget-object v1, v1, Laxw;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    .line 281
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method
