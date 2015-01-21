.class public Lcom/android/contacts/ext/CallListExtension;
.super Ljava/lang/Object;
.source "CallListExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPluginSupport(Ljava/lang/String;)Z
    .locals 1
    .parameter "commd"

    .prologue
    .line 31
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
    .line 16
    return p4
.end method

.method public measureExtention(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .parameter "mExtentionIcon"
    .parameter "commd"

    .prologue
    .line 20
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/app/ListFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 35
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 1
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 38
    return-void
.end method

.method public setExtentionIcon(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "commd"

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public setExtentionImageView(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "commd"

    .prologue
    .line 24
    return-void
.end method
