.class public Lcom/mediatek/mms/op09/OP09MmsUtilsExt;
.super Lcom/mediatek/mms/ext/MmsUtilsImpl;
.source "OP09MmsUtilsExt.java"


# static fields
.field private static final DEFAULT_TEXT_SIZE:F = 18.0f

.field private static final MAX_TEXT_SIZE:F = 32.0f

.field private static final MIN_TEXT_SIZE:F = 10.0f

.field private static final TAG:Ljava/lang/String; = "Mms/OP09MmsUtilsExt"

.field private static final TEXT_SIZE:Ljava/lang/String; = "message_font_size"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/MmsUtilsImpl;-><init>(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public static getTextSize(Landroid/content/Context;)F
    .locals 5
    .parameter "context"

    .prologue
    .line 238
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 239
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "message_font_size"

    const/high16 v3, 0x4190

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 240
    .local v0, size:F
    const-string v2, "Mms/OP09MmsUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTextSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/high16 v2, 0x4120

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 242
    const/high16 v0, 0x4120

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    const/high16 v2, 0x4200

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 244
    const/high16 v0, 0x4200

    goto :goto_0
.end method

.method public static setTextSize(Landroid/content/Context;F)V
    .locals 6
    .parameter "context"
    .parameter "size"

    .prologue
    .line 251
    const-string v3, "Mms/OP09MmsUtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTextSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/high16 v3, 0x4120

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 254
    const/high16 v2, 0x4120

    .line 260
    .local v2, textSize:F
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 261
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 262
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "message_font_size"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    return-void

    .line 255
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    .end local v2           #textSize:F
    :cond_0
    const/high16 v3, 0x4200

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    .line 256
    const/high16 v2, 0x4200

    .restart local v2       #textSize:F
    goto :goto_0

    .line 258
    .end local v2           #textSize:F
    :cond_1
    move v2, p1

    .restart local v2       #textSize:F
    goto :goto_0
.end method


# virtual methods
.method public allowSafeDraft(Landroid/app/Activity;ZZI)Z
    .locals 5
    .parameter "activity"
    .parameter "deviceStorageIsFull"
    .parameter "isNofityUser"
    .parameter "toastType"

    .prologue
    const/4 v1, 0x0

    .line 192
    const-string v2, "Mms/OP09MmsUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowSafeDraft: deviceStorageIsFull:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isNotifyUser:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 194
    :cond_0
    const/4 v1, 0x1

    .line 225
    :cond_1
    :goto_0
    return v1

    .line 196
    :cond_2
    if-eqz p2, :cond_3

    if-eqz p3, :cond_1

    .line 199
    :cond_3
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 201
    packed-switch p4, :pswitch_data_0

    .line 215
    const-string v0, ""

    .line 218
    .local v0, str:Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/mediatek/mms/op09/OP09MmsUtilsExt$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt$1;-><init>(Lcom/mediatek/mms/op09/OP09MmsUtilsExt;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 203
    .end local v0           #str:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0       #str:Ljava/lang/String;
    goto :goto_1

    .line 206
    .end local v0           #str:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    .restart local v0       #str:Ljava/lang/String;
    goto :goto_1

    .line 209
    .end local v0           #str:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    .restart local v0       #str:Ljava/lang/String;
    goto :goto_1

    .line 212
    .end local v0           #str:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    .restart local v0       #str:Ljava/lang/String;
    goto :goto_1

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public formatDateAndTimeStampString(Landroid/content/Context;JJZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "msgDate"
    .parameter "msgDateSent"
    .parameter "fullFormat"
    .parameter "formatStr"

    .prologue
    const-wide/16 v1, 0x0

    .line 65
    cmp-long v0, p4, v1

    if-lez v0, :cond_1

    .line 66
    invoke-static {p0, p4, p5, p6}, Lcom/mediatek/mms/op09/MessageUtils;->formatDateOrTimeStampStringWithSystemSetting(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p7

    .line 72
    .end local p7
    :cond_0
    :goto_0
    return-object p7

    .line 68
    .restart local p7
    :cond_1
    cmp-long v0, p2, v1

    if-lez v0, :cond_0

    .line 69
    invoke-static {p0, p2, p3, p6}, Lcom/mediatek/mms/op09/MessageUtils;->formatDateOrTimeStampStringWithSystemSetting(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p7

    goto :goto_0
.end method

.method public formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "time"
    .parameter "formatFlags"

    .prologue
    .line 229
    invoke-static {p1, p2, p3, p4}, Lcom/mediatek/mms/op09/MessageUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivatedButtonIconBySlotId(IZI)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "slotId"
    .parameter "smallIcon"
    .parameter "color"

    .prologue
    const/4 v1, -0x1

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    packed-switch p1, :pswitch_data_0

    .line 335
    :goto_0
    return-object v0

    .line 299
    :pswitch_0
    if-eqz p2, :cond_1

    .line 300
    if-le p3, v1, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_ACTIVIATE_RESOURCE_ID_C_SMALL:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_1
    if-le p3, v1, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_ACTIVIATE_RESOURCE_ID_C_BIG:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 314
    goto :goto_0

    .line 316
    :pswitch_1
    if-eqz p2, :cond_4

    .line 317
    if-le p3, v1, :cond_3

    .line 318
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_ACTIVIATE_RESOURCE_ID_G_SMALL:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_4
    if-le p3, v1, :cond_5

    .line 325
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_ACTIVIATE_RESOURCE_ID_G_BIG:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 331
    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getGroupIdFromIntent(Landroid/content/Intent;)J
    .locals 3
    .parameter "intent"

    .prologue
    const-wide/16 v0, -0x1

    .line 346
    if-nez p1, :cond_0

    .line 349
    :goto_0
    return-wide v0

    :cond_0
    const-string v2, "mass_txt_msg_group_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getReportItemsForMassSMS(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "projection"
    .parameter "groupId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 353
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-ge v0, v4, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-object v5

    .line 356
    :cond_1
    const-string v0, "Mms/OP09MmsUtilsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReportItemsForMassSMS, groupId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "ipmsg_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0
.end method

.method public getSendButtonResourceIdBySlotId(Landroid/content/Context;I)[[Ljava/lang/Object;
    .locals 11
    .parameter "context"
    .parameter "defaultSlotId"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 96
    const/4 v3, 0x3

    filled-new-array {v9, v3}, [I

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    .line 97
    .local v1, resourceIds:[[Ljava/lang/Object;
    if-nez p2, :cond_2

    .line 98
    invoke-static {p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 99
    .local v0, defaultSimInfo:Landroid/provider/Telephony$SIMInfo;
    aget-object v3, v1, v8

    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_DRAWABLE_RESOURCE_ID_C_BIG:[I

    iget v6, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    .line 101
    aget-object v3, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 102
    aget-object v3, v1, v8

    iget v4, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    .line 103
    invoke-static {p1, v7}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 104
    .local v2, secondSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-nez v2, :cond_1

    .line 105
    aget-object v3, v1, v7

    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    .line 106
    aget-object v3, v1, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    .line 112
    :goto_0
    aget-object v3, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 130
    .end local v0           #defaultSimInfo:Landroid/provider/Telephony$SIMInfo;
    .end local v2           #secondSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    :goto_1
    return-object v1

    .line 108
    .restart local v0       #defaultSimInfo:Landroid/provider/Telephony$SIMInfo;
    .restart local v2       #secondSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    aget-object v3, v1, v7

    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_DRAWABLE_RESOURCE_ID_G_SMALL:[I

    iget v6, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    .line 110
    aget-object v3, v1, v7

    iget v4, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    goto :goto_0

    .line 113
    .end local v0           #defaultSimInfo:Landroid/provider/Telephony$SIMInfo;
    .end local v2           #secondSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    if-ne p2, v7, :cond_0

    .line 114
    invoke-static {p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 115
    .restart local v0       #defaultSimInfo:Landroid/provider/Telephony$SIMInfo;
    aget-object v3, v1, v8

    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_DRAWABLE_RESOURCE_ID_G_BIG:[I

    iget v6, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    .line 117
    aget-object v3, v1, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 118
    aget-object v3, v1, v8

    iget v4, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    .line 119
    invoke-static {p1, v8}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 120
    .restart local v2       #secondSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-nez v2, :cond_3

    .line 121
    aget-object v3, v1, v7

    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    .line 122
    aget-object v3, v1, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    .line 128
    :goto_2
    aget-object v3, v1, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    goto :goto_1

    .line 124
    :cond_3
    aget-object v3, v1, v7

    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_DRAWABLE_RESOURCE_ID_C_SMALL:[I

    iget v6, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    .line 126
    aget-object v3, v1, v7

    iget v4, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    goto :goto_2
.end method

.method public getSendButtonResourceIdBySlotId(Landroid/content/Context;IZ)[[Ljava/lang/Object;
    .locals 12
    .parameter "context"
    .parameter "defaultSlotId"
    .parameter "enable"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 134
    const-string v5, "Mms/OP09MmsUtilsExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSendButtonResourceIdBySlotId: defaultSlotId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " enable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v5, 0x3

    filled-new-array {v10, v5}, [I

    move-result-object v5

    const-class v6, Ljava/lang/Object;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    .line 136
    .local v3, resourceIds:[[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 137
    .local v1, resBigId:I
    const/4 v2, 0x0

    .line 138
    .local v2, resSmallId:I
    if-nez p2, :cond_4

    .line 139
    invoke-static {p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 140
    .local v0, defaultSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz p3, :cond_1

    .line 141
    sget-object v5, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_ACTIVIATE_RESOURCE_ID_C_BIG:[I

    iget v6, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v1, v5, v6

    .line 145
    :goto_0
    aget-object v5, v3, v9

    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v9

    .line 146
    aget-object v5, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 147
    aget-object v5, v3, v9

    iget v6, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 148
    invoke-static {p1, v8}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v4

    .line 149
    .local v4, secondSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-nez v4, :cond_2

    .line 150
    aget-object v5, v3, v8

    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v9

    .line 151
    aget-object v5, v3, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 161
    :goto_1
    aget-object v5, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 187
    .end local v0           #defaultSimInfo:Landroid/provider/Telephony$SIMInfo;
    .end local v4           #secondSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    :goto_2
    return-object v3

    .line 143
    .restart local v0       #defaultSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    sget-object v5, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_DRAWABLE_RESOURCE_ID_C_BIG:[I

    iget v6, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v1, v5, v6

    goto :goto_0

    .line 153
    .restart local v4       #secondSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    if-eqz p3, :cond_3

    .line 154
    sget-object v5, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_ACTIVIATE_RESOURCE_ID_G_SMALL:[I

    iget v6, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v2, v5, v6

    .line 158
    :goto_3
    aget-object v5, v3, v8

    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v9

    .line 159
    aget-object v5, v3, v8

    iget v6, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    goto :goto_1

    .line 156
    :cond_3
    sget-object v5, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_DRAWABLE_RESOURCE_ID_G_SMALL:[I

    iget v6, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v2, v5, v6

    goto :goto_3

    .line 162
    .end local v0           #defaultSimInfo:Landroid/provider/Telephony$SIMInfo;
    .end local v4           #secondSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_4
    if-ne p2, v8, :cond_0

    .line 163
    invoke-static {p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 164
    .restart local v0       #defaultSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz p3, :cond_5

    .line 165
    sget-object v5, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_ACTIVIATE_RESOURCE_ID_G_BIG:[I

    iget v6, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v1, v5, v6

    .line 169
    :goto_4
    aget-object v5, v3, v9

    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v9

    .line 170
    aget-object v5, v3, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 171
    aget-object v5, v3, v9

    iget v6, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 172
    invoke-static {p1, v9}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v4

    .line 173
    .restart local v4       #secondSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-nez v4, :cond_6

    .line 174
    aget-object v5, v3, v8

    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v9

    .line 175
    aget-object v5, v3, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 185
    :goto_5
    aget-object v5, v3, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    goto :goto_2

    .line 167
    .end local v4           #secondSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_5
    sget-object v5, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_DRAWABLE_RESOURCE_ID_G_BIG:[I

    iget v6, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v1, v5, v6

    goto :goto_4

    .line 177
    .restart local v4       #secondSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_6
    if-eqz p3, :cond_7

    .line 178
    sget-object v5, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_ACTIVIATE_RESOURCE_ID_C_SMALL:[I

    iget v6, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v2, v5, v6

    .line 182
    :goto_6
    aget-object v5, v3, v8

    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v9

    .line 183
    aget-object v5, v3, v8

    iget v6, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    goto :goto_5

    .line 180
    :cond_7
    sget-object v5, Lcom/mediatek/mms/op09/MessageUtils;->SEND_BUTTON_DRAWABLE_RESOURCE_ID_C_SMALL:[I

    iget v6, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v2, v5, v6

    goto :goto_6
.end method

.method public isDialableForCT(Ljava/lang/String;)Z
    .locals 8
    .parameter "address"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v4, 0x0

    .line 267
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v4

    .line 271
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 272
    .local v2, firstC:C
    const/16 v5, 0x2b

    if-eq v2, v5, :cond_2

    if-lt v2, v6, :cond_0

    if-gt v2, v7, :cond_0

    .line 275
    :cond_2
    const/4 v3, 0x1

    .local v3, i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, count:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 276
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 277
    .local v0, c:C
    if-lt v0, v6, :cond_0

    if-gt v0, v7, :cond_0

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 281
    .end local v0           #c:C
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-virtual {p0, p1}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->isDialableForCT(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v1

    .line 288
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, networkPortion:Ljava/lang/String;
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->isDialableForCT(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setIntentDateForMassTextMessage(Landroid/content/Intent;J)V
    .locals 3
    .parameter "intent"
    .parameter "groupId"

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 343
    .end local p2
    :goto_0
    return-void

    .line 342
    .restart local p2
    :cond_0
    const-string v0, "mass_txt_msg_group_id"

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gez v1, :cond_1

    .end local p2
    :goto_1
    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .restart local p2
    :cond_1
    const-wide/16 p2, -0x1

    goto :goto_1
.end method

.method public showSimTypeBySimId(Landroid/content/Context;JLandroid/widget/TextView;)V
    .locals 6
    .parameter "context"
    .parameter "simId"
    .parameter "textView"

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, simTypeDraw:Landroid/graphics/drawable/Drawable;
    const-string v4, "Mms/OP09MmsUtilsExt"

    const-string v5, "showSimTypeBySimId"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {p1, p2, p3}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 80
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 81
    .local v2, slotId:I
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundLightSmallRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 87
    :goto_0
    if-eqz p4, :cond_0

    .line 88
    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    .end local v3           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsUtilsExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method
