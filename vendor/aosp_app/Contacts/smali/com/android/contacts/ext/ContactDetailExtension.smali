.class public Lcom/android/contacts/ext/ContactDetailExtension;
.super Ljava/lang/Object;
.source "ContactDetailExtension.java"


# static fields
.field public static final STRING_ADDITINAL:C = '\u0001'

.field public static final STRING_PRIMART:C = '\u0000'

.field private static final TAG:Ljava/lang/String; = "ContactDetailExtension"

.field public static final VIEW_UPDATE_HINT:I = 0x1

.field public static final VIEW_UPDATE_NONE:I = 0x0

.field public static final VIEW_UPDATE_VISIBILITY:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public TextChanged(ILandroid/text/Editable;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "inputType"
    .parameter "s"
    .parameter "phoneText"
    .parameter "location"
    .parameter "commd"

    .prologue
    .line 69
    return-object p3
.end method

.method public canSetExtensionIcon(JLjava/lang/String;)Z
    .locals 1
    .parameter "contactId"
    .parameter "commd"

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public checkMenuItem(ZZZLjava/lang/String;)Z
    .locals 3
    .parameter "mtkGeminiSupport"
    .parameter "hasPhoneEntry"
    .parameter "notMe"
    .parameter "commd"

    .prologue
    .line 74
    const-string v0, "ContactDetailExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkMenuItem]mtkGeminiSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | hasPhoneEntry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | notMe : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkPluginSupport(Ljava/lang/String;)Z
    .locals 1
    .parameter "commd"

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public collapsePhoneEntries(Ljava/lang/String;)Z
    .locals 2
    .parameter "commd"

    .prologue
    .line 99
    const-string v0, "ContactDetailExtension"

    const-string v1, "[collapsePhoneEntries()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public getAdditionNumberCount(ILjava/lang/String;)I
    .locals 1
    .parameter "slotId"
    .parameter "commd"

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, ""

    return-object v0
.end method

.method public getExtensionTitles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "data"
    .parameter "mimeType"
    .parameter "kind"
    .parameter
    .parameter "commd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 134
    .local p4, mPhoneAndSubtitle:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-object p3
.end method

.method public getExtentionIntent(IILjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "action01"
    .parameter "action02"
    .parameter "commd"

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtentionKind(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"
    .parameter "needSetName"
    .parameter "name"
    .parameter "commd"

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getExtentionMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "commd"

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxEmptyEditors(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "mimeType"
    .parameter "commd"

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public getRCSIcon(J)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDoublePhoneNumber([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "buffer"
    .parameter "bufferName"
    .parameter "commd"

    .prologue
    const/4 v0, 0x1

    .line 124
    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p2, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMimeTypeSupported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"
    .parameter "plugin"
    .parameter "commd"

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public layoutExtentionIcon(IIIIILandroid/widget/ImageView;Ljava/lang/String;)I
    .locals 0
    .parameter "leftBound"
    .parameter "topBound"
    .parameter "bottomBound"
    .parameter "rightBound"
    .parameter "mGapBetweenImageAndText"
    .parameter "mExtentionIcon"
    .parameter "commd"

    .prologue
    .line 143
    return p4
.end method

.method public measureExtentionIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .parameter "mExtentionIcon"
    .parameter "commd"

    .prologue
    .line 147
    return-void
.end method

.method public onContactDetailOpen(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "contactLookupUri"
    .parameter "commd"

    .prologue
    .line 130
    return-void
.end method

.method public repChar(Ljava/lang/String;CCCCLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phoneNumber"
    .parameter "pause"
    .parameter "p"
    .parameter "wait"
    .parameter "w"
    .parameter "commd"

    .prologue
    .line 94
    const-string v0, "ContactDetailExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-object p1
.end method

.method public setExtensionImageView(Landroid/widget/ImageView;JLjava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "contactId"
    .parameter "commd"

    .prologue
    .line 167
    return-void
.end method

.method public setMenu(Landroid/view/ContextMenu;ZIZIILandroid/app/Activity;IILjava/lang/String;)V
    .locals 5
    .parameter "menu"
    .parameter "isNotDirectoryEntry"
    .parameter "simId"
    .parameter "mOptionsMenuOptions"
    .parameter "delSim"
    .parameter "newSim"
    .parameter "activity"
    .parameter "removeAssociation"
    .parameter "menuAssociation"
    .parameter "commd"

    .prologue
    const/4 v4, 0x0

    .line 39
    const-string v1, "ContactDetailExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setMenu]  | isNotDirectoryEntry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | simId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | mOptionsMenuOptions : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | delSim : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | newSim : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | activity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | removeAssociation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | menuAssociation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-eqz p7, :cond_0

    .line 45
    if-eqz p2, :cond_0

    .line 46
    const/4 v1, -0x1

    if-le p3, v1, :cond_1

    .line 47
    invoke-virtual {p7, p8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, p5, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p7, p9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, p6, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 52
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setMenuVisible(Landroid/view/MenuItem;ZZLjava/lang/String;)V
    .locals 3
    .parameter "associationMenuItem"
    .parameter "mOptionsMenuOptions"
    .parameter "isEnabled"
    .parameter "commd"

    .prologue
    .line 81
    const-string v0, "ContactDetailExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMenuVisible] associationMenuItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mOptionsMenuOptions : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | isEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 87
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v0, "ContactDetailExtension"

    const-string v1, "[setMenuVisible] associationMenuItem is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSPChar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"
    .parameter "commd"

    .prologue
    .line 59
    const-string v0, "ContactDetailExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSPChar] string : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-object p1
.end method

.method public setViewKeyListener(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 2
    .parameter "fieldView"
    .parameter "commd"

    .prologue
    .line 64
    const-string v0, "ContactDetailExtension"

    const-string v1, "[setViewKeyListener]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public setViewVisible(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 0
    .parameter "view"
    .parameter "activity"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "commd"
    .parameter "res1"
    .parameter "res2"
    .parameter "res3"
    .parameter "res4"
    .parameter "res5"
    .parameter "res6"

    .prologue
    .line 172
    return-void
.end method

.method public setViewVisibleWithBundle(Landroid/view/View;Landroid/app/Activity;Landroid/os/Bundle;IIIIIIIILjava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "activity"
    .parameter "data"
    .parameter "res1"
    .parameter "res2"
    .parameter "res3"
    .parameter "res4"
    .parameter "res5"
    .parameter "res6"
    .parameter "res7"
    .parameter "res8"
    .parameter "commd"

    .prologue
    .line 229
    return-void
.end method

.method public setViewVisibleWithCharSequence(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IIIIII)V
    .locals 0
    .parameter "view"
    .parameter "activity"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "commd"
    .parameter "res1"
    .parameter "res2"
    .parameter "res3"
    .parameter "res4"
    .parameter "res5"
    .parameter "res6"

    .prologue
    .line 178
    return-void
.end method

.method public updateView(Landroid/view/View;IILjava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "type"
    .parameter "action"
    .parameter "commd"

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method
