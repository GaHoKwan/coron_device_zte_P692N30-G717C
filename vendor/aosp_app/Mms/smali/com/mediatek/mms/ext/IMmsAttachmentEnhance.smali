.class public interface abstract Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
.super Ljava/lang/Object;
.source "IMmsAttachmentEnhance.java"


# static fields
.field public static final MMS_SAVE_ALL_ATTACHMENT:I = 0x1

.field public static final MMS_SAVE_OTHER_ATTACHMENT:I


# virtual methods
.method public abstract getSaveAttachMode(Landroid/content/Intent;)I
.end method

.method public abstract isSupportAttachmentEnhance()Z
.end method

.method public abstract setAttachmentName(Landroid/widget/TextView;I)V
.end method

.method public abstract setSaveAttachIntent(Landroid/content/Intent;I)V
.end method
