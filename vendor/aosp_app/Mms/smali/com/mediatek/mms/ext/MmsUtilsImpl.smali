.class public Lcom/mediatek/mms/ext/MmsUtilsImpl;
.super Landroid/content/ContextWrapper;
.source "MmsUtilsImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method public allowSafeDraft(Landroid/app/Activity;ZZI)Z
    .locals 1
    .parameter "activity"
    .parameter "deviceStorageIsFull"
    .parameter "isNofityUser"
    .parameter "toastType"

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public formatDateAndTimeStampString(Landroid/content/Context;JJZLjava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "context"
    .parameter "msgDate"
    .parameter "msgDateSent"
    .parameter "fullFormat"
    .parameter "formatStr"

    .prologue
    .line 55
    return-object p7
.end method

.method public formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "time"
    .parameter "formatFlags"

    .prologue
    .line 75
    invoke-static {p1, p2, p3, p4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivatedButtonIconBySlotId(IZI)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "slotId"
    .parameter "smallIcon"
    .parameter "color"

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupIdFromIntent(Landroid/content/Intent;)J
    .locals 2
    .parameter "intent"

    .prologue
    .line 91
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getReportItemsForMassSMS(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 1
    .parameter "context"
    .parameter "projection"
    .parameter "groupId"

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSendButtonResourceIdBySlotId(Landroid/content/Context;I)[[Ljava/lang/Object;
    .locals 1
    .parameter "context"
    .parameter "defaultSlotId"

    .prologue
    .line 66
    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/Object;

    return-object v0
.end method

.method public getSendButtonResourceIdBySlotId(Landroid/content/Context;IZ)[[Ljava/lang/Object;
    .locals 1
    .parameter "context"
    .parameter "defaultSlotId"
    .parameter "enable"

    .prologue
    .line 62
    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/Object;

    return-object v0
.end method

.method public isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public setIntentDateForMassTextMessage(Landroid/content/Intent;J)V
    .locals 0
    .parameter "intent"
    .parameter "groupId"

    .prologue
    .line 87
    return-void
.end method

.method public showSimTypeBySimId(Landroid/content/Context;JLandroid/widget/TextView;)V
    .locals 0
    .parameter "context"
    .parameter "simId"
    .parameter "textView"

    .prologue
    .line 59
    return-void
.end method
