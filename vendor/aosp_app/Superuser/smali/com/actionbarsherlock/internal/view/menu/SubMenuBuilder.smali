.class public Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
.super Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
.source ""

# interfaces
.implements Lcom/actionbarsherlock/view/SubMenu;


# instance fields
.field private mItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

.field private mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 39
    iput-object p3, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 40
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method dispatchMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .line 0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 129
    :goto_0
    if-nez v2, :cond_1

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Lcom/actionbarsherlock/view/MenuItem;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getParentMenu()Lcom/actionbarsherlock/view/Menu;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getRootMenu()Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    .line 73
    return-void
.end method

.method public setHeaderIcon(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    .line 0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/SubMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    .line 0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    .line 0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    .line 0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/SubMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    .line 0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/SubMenu;

    return-object v0
.end method

.method public setIcon(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 93
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/MenuItem;

    .line 88
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 45
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setShortcutsVisible(Z)V

    .line 55
    return-void
.end method