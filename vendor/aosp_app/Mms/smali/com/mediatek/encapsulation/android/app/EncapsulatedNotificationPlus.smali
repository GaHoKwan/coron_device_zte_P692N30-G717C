.class public Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;
.super Ljava/lang/Object;
.source "EncapsulatedNotificationPlus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus$EncapsulatedBuilder;
    }
.end annotation


# static fields
.field static final ACTION_FULL_SCREEN_NOTIFY:Ljava/lang/String; = "mediatek.intent.action.FULL_SCRENN_NOTIFY"

.field static final EXTRA_BUTTON_INTENT_NEGATIVE:Ljava/lang/String; = "mediatek.intent.extra.button.intent.negative"

.field static final EXTRA_BUTTON_INTENT_NEUTRAL:Ljava/lang/String; = "mediatek.intent.extra.button.intent.neutral"

.field static final EXTRA_BUTTON_INTENT_POSITIVE:Ljava/lang/String; = "mediatek.intent.extra.button.intent.positive"

.field static final EXTRA_BUTTON_NAME_NEGATIVE:Ljava/lang/String; = "mediatek.intent.extra.button.name.negative"

.field static final EXTRA_BUTTON_NAME_NEUTRAL:Ljava/lang/String; = "mediatek.intent.extra.button.name.neutral"

.field static final EXTRA_BUTTON_NAME_POSITIVE:Ljava/lang/String; = "mediatek.intent.extra.button.name.positive"

.field static final EXTRA_CANCELABLE:Ljava/lang/String; = "mediatek.intent.extra.cancel.enable"

.field static final EXTRA_CANCEL_INTENT:Ljava/lang/String; = "mediatek.intent.extra.cancel.intent"

.field static final EXTRA_CONTENT_TEXT:Ljava/lang/String; = "mediatek.intent.extra.content.text"

.field static final EXTRA_CONTENT_TITLE:Ljava/lang/String; = "mediatek.intent.extra.content.title"

.field static final EXTRA_ID:Ljava/lang/String; = "mediatek.intent.extra.id"

.field static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "mediatek.intent.extra.package"

.field static final EXTRA_TYPE:Ljava/lang/String; = "mediatek.intent.extra.type"

.field static final ID_UNKNOWN:I = -0x1

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "EncapsulatedNotificationPlus"

.field static final TYPE_CANCEL:I = 0x2

.field static final TYPE_NOTIFY:I = 0x1

.field static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field mContext:Landroid/content/Context;

.field mIntent:Landroid/content/Intent;

.field mNotificationPlus:Lcom/mediatek/notification/NotificationPlus;

.field mNotificationPlusBuilder:Lcom/mediatek/notification/NotificationPlus$Builder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lcom/mediatek/notification/NotificationPlus$Builder;

    invoke-direct {v0, p1}, Lcom/mediatek/notification/NotificationPlus$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mNotificationPlusBuilder:Lcom/mediatek/notification/NotificationPlus$Builder;

    .line 164
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mNotificationPlusBuilder:Lcom/mediatek/notification/NotificationPlus$Builder;

    invoke-virtual {v0}, Lcom/mediatek/notification/NotificationPlus$Builder;->create()Lcom/mediatek/notification/NotificationPlus;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mNotificationPlus:Lcom/mediatek/notification/NotificationPlus;

    .line 165
    iput-object p1, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mContext:Landroid/content/Context;

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mediatek.intent.action.FULL_SCRENN_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mIntent:Landroid/content/Intent;

    .line 167
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.package"

    iget-object v2, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    return-void
.end method


# virtual methods
.method send()V
    .locals 7

    .prologue
    .line 185
    iget-object v4, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 187
    const-string v4, "EncapsulatedNotificationPlus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v4, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 191
    .local v0, extras:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 192
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 193
    .local v2, key:Ljava/lang/String;
    const-string v4, "EncapsulatedNotificationPlus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send() key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method setId(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    return-void
.end method

.method setType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    return-void
.end method