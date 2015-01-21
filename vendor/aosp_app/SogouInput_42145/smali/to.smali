.class Lto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic a:Ltm;


# direct methods
.method constructor <init>(Ltm;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lto;->a:Ltm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .parameter

    .prologue
    .line 228
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 231
    iget-object v0, p0, Lto;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lto;->a:Ltm;

    iget-object v1, v1, Ltm;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    .line 233
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method
