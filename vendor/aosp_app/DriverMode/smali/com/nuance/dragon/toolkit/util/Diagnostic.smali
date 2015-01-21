.class public final Lcom/nuance/dragon/toolkit/util/Diagnostic;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkInstallation(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v1, 0x0

    const-string v0, "requirement"

    invoke-static {v0, p0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const-string v2, "elvis"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;->LOAD_NATIVE_LIBRARY_SUCCESS:Z

    if-nez v2, :cond_0

    const-class v0, Lcom/nuance/dragon/toolkit/util/Diagnostic;

    const-string v2, "Elvis is not installed."

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    :cond_0
    const-string v2, "vocon"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->LOAD_NATIVE_LIBRARY_SUCCESS:Z

    if-nez v2, :cond_1

    const-class v0, Lcom/nuance/dragon/toolkit/util/Diagnostic;

    const-string v2, "Vocon is not installed."

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    const-string v2, "nvsl"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifier;->LOAD_NATIVE_LIBRARY_SUCCESS:Z

    if-nez v2, :cond_2

    const-class v0, Lcom/nuance/dragon/toolkit/util/Diagnostic;

    const-string v2, "NVSL is not installed."

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    :cond_2
    const-string v2, "vfa"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->LOAD_NATIVE_VFA_LIBRARY_SUCCESS:Z

    if-nez v2, :cond_3

    const-class v0, Lcom/nuance/dragon/toolkit/util/Diagnostic;

    const-string v2, "Vocalizer for Automotive is not installed."

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    :cond_3
    const-string v2, "vex"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->LOAD_NATIVE_VEX_LIBRARY_SUCCESS:Z

    if-nez v2, :cond_4

    const-class v0, Lcom/nuance/dragon/toolkit/util/Diagnostic;

    const-string v2, "Vocalizer Expressive is not installed."

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    :cond_4
    const-string v2, "speex"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/nuance/dragon/toolkit/audio/util/SpeexEncoder;->a:Z

    if-nez v2, :cond_5

    const-class v0, Lcom/nuance/dragon/toolkit/util/Diagnostic;

    const-string v2, "Vocalizer Expressive is not installed."

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    :cond_5
    const-string v2, "opus"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/nuance/dragon/toolkit/audio/util/OpusEncoder;->a:Z

    if-nez v2, :cond_6

    const-class v0, Lcom/nuance/dragon/toolkit/util/Diagnostic;

    const-string v2, "Vocalizer Expressive is not installed."

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    :cond_6
    sget-boolean v2, Lcom/nuance/dragon/toolkit/util/internal/NativeUtils;->a:Z

    if-nez v2, :cond_7

    const-class v0, Lcom/nuance/dragon/toolkit/util/Diagnostic;

    const-string v2, "Native utilities are not installed."

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_7
    move v1, v0

    goto :goto_0
.end method
