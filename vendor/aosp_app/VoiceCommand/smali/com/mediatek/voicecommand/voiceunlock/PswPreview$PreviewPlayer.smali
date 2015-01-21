.class Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;
.super Landroid/media/MediaPlayer;
.source "PswPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voicecommand/voiceunlock/PswPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewPlayer"
.end annotation


# instance fields
.field mActivity:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

.field mIsPrepared:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;->mIsPrepared:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/voicecommand/voiceunlock/PswPreview$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method isPrepared()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;->mIsPrepared:Z

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;->mIsPrepared:Z

    .line 157
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;->mActivity:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    invoke-virtual {v0, p1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 158
    return-void
.end method

.method public setActivity(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;->mActivity:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    .line 143
    invoke-virtual {p0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 144
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;->mActivity:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 145
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;->mActivity:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 146
    return-void
.end method

.method public setDataSourceAndPrepare(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;->mActivity:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 151
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 152
    return-void
.end method
