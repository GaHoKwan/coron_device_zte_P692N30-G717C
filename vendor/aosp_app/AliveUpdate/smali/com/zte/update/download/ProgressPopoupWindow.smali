.class public Lcom/zte/update/download/ProgressPopoupWindow;
.super Ljava/lang/Object;
.source "ProgressPopoupWindow.java"


# static fields
.field private static popupView:Landroid/view/ViewGroup;

.field private static window:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createWindow(Landroid/content/Context;)Landroid/widget/PopupWindow;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 36
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    .local v0, mLayoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sput-object v2, Lcom/zte/update/download/ProgressPopoupWindow;->popupView:Landroid/view/ViewGroup;

    .line 39
    new-instance v1, Landroid/widget/PopupWindow;

    sget-object v2, Lcom/zte/update/download/ProgressPopoupWindow;->popupView:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 40
    .local v1, popupWindow:Landroid/widget/PopupWindow;
    sget-object v2, Lcom/zte/update/download/ProgressPopoupWindow;->window:Landroid/widget/PopupWindow;

    sget-object v3, Lcom/zte/update/download/ProgressPopoupWindow;->popupView:Landroid/view/ViewGroup;

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 43
    return-object v1
.end method

.method public static dismiss()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/zte/update/download/ProgressPopoupWindow;->window:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/zte/update/download/ProgressPopoupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 33
    :cond_0
    return-void
.end method

.method public static display(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 20
    const-string v1, "ProgressPopoupWindow"

    const-string v2, "diplay"

    invoke-static {v1, v2}, Lcom/zte/util/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 22
    .local v0, mLayoutInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    sput-object v1, Lcom/zte/update/download/ProgressPopoupWindow;->popupView:Landroid/view/ViewGroup;

    .line 24
    new-instance v1, Landroid/widget/PopupWindow;

    sget-object v2, Lcom/zte/update/download/ProgressPopoupWindow;->popupView:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    sput-object v1, Lcom/zte/update/download/ProgressPopoupWindow;->window:Landroid/widget/PopupWindow;

    .line 25
    sget-object v1, Lcom/zte/update/download/ProgressPopoupWindow;->window:Landroid/widget/PopupWindow;

    sget-object v2, Lcom/zte/update/download/ProgressPopoupWindow;->popupView:Landroid/view/ViewGroup;

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 27
    return-void
.end method
