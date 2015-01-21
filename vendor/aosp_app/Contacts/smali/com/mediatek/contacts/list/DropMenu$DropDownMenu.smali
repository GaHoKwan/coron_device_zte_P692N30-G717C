.class public Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;
.super Ljava/lang/Object;
.source "DropMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/DropMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropDownMenu"
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mIsPopupMenuShown:Z

.field private mMenu:Landroid/view/Menu;

.field private mPopupMenu:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "selectItem"
    .parameter "menuId"
    .parameter "listener"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    .line 31
    iget-object v0, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-direct {v0, p1, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 34
    iget-object v0, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mMenu:Landroid/view/Menu;

    .line 36
    iget-object v0, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, p3, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 37
    iget-object v0, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu$1;

    invoke-direct {v1, p0}, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu$1;-><init>(Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 44
    iget-object v0, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu$2;

    invoke-direct {v1, p0}, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu$2;-><init>(Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mIsPopupMenuShown:Z

    return p1
.end method


# virtual methods
.method public findItem(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "id"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mIsPopupMenuShown:Z

    return v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mIsPopupMenuShown:Z

    .line 63
    iget-object v0, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 64
    return-void
.end method
