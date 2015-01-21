.class public Lcom/android/contacts/ext/DialPadExtension;
.super Ljava/lang/Object;
.source "DialPadExtension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialPadExtension"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeChar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"
    .parameter "string2"
    .parameter "commd"

    .prologue
    .line 20
    const-string v0, "DialPadExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[changeChar] string : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | string2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-object p2
.end method

.method public constructPopupMenu(Landroid/widget/PopupMenu;Landroid/view/View;Landroid/view/Menu;)V
    .locals 0
    .parameter "popupMenu"
    .parameter "anchorView"
    .parameter "menu"

    .prologue
    .line 49
    return-void
.end method

.method public handleChars(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "input"
    .parameter "commd"

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/app/Fragment;Lcom/android/contacts/ext/IDialpadFragment;)V
    .locals 0
    .parameter "fragment"
    .parameter "dialpadFragment"

    .prologue
    .line 29
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"
    .parameter "resultView"

    .prologue
    .line 32
    return-object p4
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 42
    return-void
.end method

.method public updateDialAndDeleteButtonEnabledState(Ljava/lang/String;)Z
    .locals 1
    .parameter "lastNumberDialed"

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
