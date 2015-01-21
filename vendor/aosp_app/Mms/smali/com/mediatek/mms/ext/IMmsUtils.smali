.class public interface abstract Lcom/mediatek/mms/ext/IMmsUtils;
.super Ljava/lang/Object;
.source "IMmsUtils.java"


# static fields
.field public static final MASS_TEXT_MESSAGE_GROUP_ID:Ljava/lang/String; = "mass_txt_msg_group_id"

.field public static final TOAST_TYPE_FOR_ATTACH:I = 0x2

.field public static final TOAST_TYPE_FOR_DOWNLOAD_MMS:I = 0x3

.field public static final TOAST_TYPE_FOR_SAVE_DRAFT:I = 0x0

.field public static final TOAST_TYPE_FOR_SEND_MSG:I = 0x1


# virtual methods
.method public abstract allowSafeDraft(Landroid/app/Activity;ZZI)Z
.end method

.method public abstract formatDateAndTimeStampString(Landroid/content/Context;JJZLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
.end method

.method public abstract getActivatedButtonIconBySlotId(IZI)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getGroupIdFromIntent(Landroid/content/Intent;)J
.end method

.method public abstract getReportItemsForMassSMS(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;
.end method

.method public abstract getSendButtonResourceIdBySlotId(Landroid/content/Context;I)[[Ljava/lang/Object;
.end method

.method public abstract getSendButtonResourceIdBySlotId(Landroid/content/Context;IZ)[[Ljava/lang/Object;
.end method

.method public abstract isWellFormedSmsAddress(Ljava/lang/String;)Z
.end method

.method public abstract setIntentDateForMassTextMessage(Landroid/content/Intent;J)V
.end method

.method public abstract showSimTypeBySimId(Landroid/content/Context;JLandroid/widget/TextView;)V
.end method
