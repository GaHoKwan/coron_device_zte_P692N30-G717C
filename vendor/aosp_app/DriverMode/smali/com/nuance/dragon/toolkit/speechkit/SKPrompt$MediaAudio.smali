.class public Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$MediaAudio;
.super Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 1

    const-string v0, "Audio prompts not implemented"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$MediaAudio;->done()V

    return-void
.end method
