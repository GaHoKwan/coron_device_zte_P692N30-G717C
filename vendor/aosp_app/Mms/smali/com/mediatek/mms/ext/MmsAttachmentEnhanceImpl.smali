.class public Lcom/mediatek/mms/ext/MmsAttachmentEnhanceImpl;
.super Landroid/content/ContextWrapper;
.source "MmsAttachmentEnhanceImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;


# static fields
.field private static final MMS_SAVE_MODE:Ljava/lang/String; = "savecontent"

.field private static final TAG:Ljava/lang/String; = "Mms/Op01MmsAttachmentEnhanceExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getSaveAttachMode(Landroid/content/Intent;)I
    .locals 3
    .parameter "i"

    .prologue
    .line 88
    const/4 v1, -0x1

    .line 89
    .local v1, smode:I
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 92
    const-string v2, "savecontent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 94
    :cond_0
    return v1
.end method

.method public isSupportAttachmentEnhance()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public setAttachmentName(Landroid/widget/TextView;I)V
    .locals 0
    .parameter "text"
    .parameter "size"

    .prologue
    .line 70
    return-void
.end method

.method public setSaveAttachIntent(Landroid/content/Intent;I)V
    .locals 2
    .parameter "i"
    .parameter "smode"

    .prologue
    .line 76
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 78
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "savecontent"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 83
    .end local v0           #data:Landroid/os/Bundle;
    :cond_1
    return-void
.end method
