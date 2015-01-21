.class public Lcom/mediatek/contacts/extension/IccCardExtensionContainer;
.super Lcom/android/contacts/ext/IccCardExtension;
.source "IccCardExtensionContainer.java"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/IccCardExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/contacts/ext/IccCardExtension;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/IccCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/IccCardExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/contacts/extension/IccCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public getIccPhotoDrawable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "args"
    .parameter "commd"

    .prologue
    .line 56
    iget-object v2, p0, Lcom/mediatek/contacts/extension/IccCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/IccCardExtension;

    .line 57
    .local v1, subExtension:Lcom/android/contacts/ext/IccCardExtension;
    invoke-virtual {v1}, Lcom/android/contacts/ext/IccCardExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/IccCardExtension;->getIccPhotoDrawable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 61
    .end local v1           #subExtension:Lcom/android/contacts/ext/IccCardExtension;
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/IccCardExtension;->getIccPhotoDrawable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getIccPhotoId(Landroid/os/Bundle;Ljava/lang/String;)J
    .locals 4
    .parameter "args"
    .parameter "commd"

    .prologue
    .line 46
    iget-object v2, p0, Lcom/mediatek/contacts/extension/IccCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/IccCardExtension;

    .line 47
    .local v1, subExtension:Lcom/android/contacts/ext/IccCardExtension;
    invoke-virtual {v1}, Lcom/android/contacts/ext/IccCardExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/IccCardExtension;->getIccPhotoId(Landroid/os/Bundle;Ljava/lang/String;)J

    move-result-wide v2

    .line 51
    .end local v1           #subExtension:Lcom/android/contacts/ext/IccCardExtension;
    :goto_0
    return-wide v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/IccCardExtension;->getIccPhotoId(Landroid/os/Bundle;Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getIccPhotoUriString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "args"
    .parameter "commd"

    .prologue
    .line 36
    iget-object v2, p0, Lcom/mediatek/contacts/extension/IccCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/IccCardExtension;

    .line 37
    .local v1, subExtension:Lcom/android/contacts/ext/IccCardExtension;
    invoke-virtual {v1}, Lcom/android/contacts/ext/IccCardExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/IccCardExtension;->getIccPhotoUriString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .end local v1           #subExtension:Lcom/android/contacts/ext/IccCardExtension;
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/IccCardExtension;->getIccPhotoUriString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getIconDrawableBySimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "simInfo"
    .parameter "commd"

    .prologue
    .line 26
    iget-object v2, p0, Lcom/mediatek/contacts/extension/IccCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/IccCardExtension;

    .line 27
    .local v1, subExtension:Lcom/android/contacts/ext/IccCardExtension;
    invoke-virtual {v1}, Lcom/android/contacts/ext/IccCardExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/ext/IccCardExtension;->getIconDrawableBySimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 31
    .end local v1           #subExtension:Lcom/android/contacts/ext/IccCardExtension;
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/IccCardExtension;->getIconDrawableBySimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/IccCardExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mediatek/contacts/extension/IccCardExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method
