.class public abstract Lcom/zte/update/ui/pop/AbstractPopoupWindow;
.super Landroid/widget/PopupWindow;
.source "AbstractPopoupWindow.java"


# instance fields
.field protected popupView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "ResId"

    .prologue
    const/4 v3, -0x1

    .line 19
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 21
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 23
    .local v1, mLayoutInflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/zte/update/ui/pop/AbstractPopoupWindow;->popupView:Landroid/view/ViewGroup;

    .line 24
    iget-object v2, p0, Lcom/zte/update/ui/pop/AbstractPopoupWindow;->popupView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/zte/update/ui/pop/AbstractPopoupWindow;->setContentView(Landroid/view/View;)V

    .line 25
    invoke-virtual {p0, v3}, Lcom/zte/update/ui/pop/AbstractPopoupWindow;->setWidth(I)V

    .line 26
    invoke-virtual {p0, v3}, Lcom/zte/update/ui/pop/AbstractPopoupWindow;->setHeight(I)V

    .line 27
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/zte/update/ui/pop/AbstractPopoupWindow;->setFocusable(Z)V

    .line 30
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 31
    .local v0, dw:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0, v0}, Lcom/zte/update/ui/pop/AbstractPopoupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-super {p0}, Landroid/widget/PopupWindow;->update()V

    .line 39
    iget-object v0, p0, Lcom/zte/update/ui/pop/AbstractPopoupWindow;->popupView:Landroid/view/ViewGroup;

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/zte/update/ui/pop/AbstractPopoupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 40
    return-void
.end method
