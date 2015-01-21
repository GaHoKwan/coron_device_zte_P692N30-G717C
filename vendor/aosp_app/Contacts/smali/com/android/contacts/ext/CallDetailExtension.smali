.class public Lcom/android/contacts/ext/CallDetailExtension;
.super Ljava/lang/Object;
.source "CallDetailExtension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallDetailExtension"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackgroundForUpdateData([Landroid/net/Uri;[Lcom/android/contacts/PhoneCallDetails;)[Lcom/android/contacts/PhoneCallDetails;
    .locals 0
    .parameter "callUris"
    .parameter "phoneCallDetails"

    .prologue
    .line 76
    return-object p2
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, ""

    return-object v0
.end method

.method public isNeedAutoRejectedMenu(ZLjava/lang/String;)Z
    .locals 1
    .parameter "isAutoRejectedFilterMode"
    .parameter "commd"

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/app/Activity;Lcom/android/contacts/ext/IPhoneNumberHelper;)V
    .locals 0
    .parameter "activity"
    .parameter "phoneNumberHelper"

    .prologue
    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public setChar(ZLjava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "notSPChar"
    .parameter "str"
    .parameter "spChar"
    .parameter "charType"
    .parameter "secondSelection"
    .parameter "commd"

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSimInfo(ILandroid/widget/TextView;)Z
    .locals 1
    .parameter "simId"
    .parameter "simIndicator"

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public setTextView(ILandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "callType"
    .parameter "durationView"
    .parameter "formatDuration"
    .parameter "commd"

    .prologue
    .line 22
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 23
    :cond_0
    const-string v0, "CallDetailExtension"

    const-string v1, "[setTextView] is gone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :goto_0
    return-void

    .line 26
    :cond_1
    const-string v0, "CallDetailExtension"

    const-string v1, "[setTextView] is visible"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setViewVisible(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IIIIIII)V
    .locals 0
    .parameter "view"
    .parameter "commd1"
    .parameter "commd2"
    .parameter "rse1"
    .parameter "res2"
    .parameter "res3"
    .parameter "res4"
    .parameter "res5"
    .parameter "res6"
    .parameter "res7"

    .prologue
    .line 47
    return-void
.end method

.method public setViewVisibleByActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "commd1"
    .parameter "commd2"
    .parameter "rse1"
    .parameter "res2"
    .parameter "res3"
    .parameter "res4"
    .parameter "res5"
    .parameter "res6"
    .parameter "res7"
    .parameter "commd"

    .prologue
    .line 55
    return-void
.end method
