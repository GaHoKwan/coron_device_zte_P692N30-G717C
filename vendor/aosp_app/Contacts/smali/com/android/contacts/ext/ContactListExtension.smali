.class public Lcom/android/contacts/ext/ContactListExtension;
.super Ljava/lang/Object;
.source "ContactListExtension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactListExtension"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOptionsMenu(Landroid/view/Menu;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .parameter "menu"
    .parameter "args"
    .parameter "commd"

    .prologue
    .line 106
    return-void
.end method

.method public buildSimNickname(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "accountType"
    .parameter "values"
    .parameter
    .parameter "slotId"
    .parameter "defSimNickname"
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, nicknameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object p5
.end method

.method public checkPhoneTypeArray(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter "accountType"
    .parameter
    .parameter "commd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, phoneTypeArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public generateDataBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/ContentProviderOperation$Builder;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "dataCursor"
    .parameter "builder"
    .parameter "columnNames"
    .parameter "accountType"
    .parameter "mimeType"
    .parameter "slotId"
    .parameter "index"
    .parameter "commd"

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, ""

    return-object v0
.end method

.method public getMultiChoiceLimitCount(Ljava/lang/String;)I
    .locals 2
    .parameter "commd"

    .prologue
    .line 113
    const-string v0, "ContactListExtension"

    const-string v1, "getMultiChoiceLimitCount"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, -0x1

    return v0
.end method

.method public getPresenceIcon(Landroid/database/Cursor;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "cursor"
    .parameter "statusResPackageColumn"
    .parameter "statusIconColumn"
    .parameter "commd"

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReplaceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "src"
    .parameter "commd"

    .prologue
    .line 40
    const-string v0, "ContactListExtension"

    const-string v1, "AbstractStartSIMService: [getReplaceString()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/16 v0, 0x70

    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x77

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusString(Landroid/database/Cursor;IILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"
    .parameter "statusResPackageColumn"
    .parameter "contactsStatusColumn"
    .parameter "commd"

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerHostContext(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "args"
    .parameter "commd"

    .prologue
    .line 110
    return-void
.end method

.method public setExtentionImageView(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "commd"

    .prologue
    .line 64
    return-void
.end method

.method public setLookSimStorageMenuVisible(Landroid/view/MenuItem;ZLjava/lang/String;)V
    .locals 2
    .parameter "lookSimStorageMenu"
    .parameter "flag"
    .parameter "commd"

    .prologue
    .line 35
    const-string v0, "ContactListExtension"

    const-string v1, "PeopleActivity: [setLookSimStorageMenuVisible()]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 37
    return-void
.end method

.method public setMenuItem(Landroid/view/MenuItem;ZLjava/lang/String;)V
    .locals 3
    .parameter "blockVoiceCallmenu"
    .parameter "mOptionsMenuOptions"
    .parameter "commd"

    .prologue
    .line 25
    const-string v0, "ContactListExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMenuItem] mOptionsMenuOptions : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 28
    return-void
.end method
