.class Lcom/android/music/MusicBrowserActivity$1;
.super Ljava/lang/Object;
.source "MusicBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MusicBrowserActivity;->createFakeMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MusicBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MusicBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 332
    const-string v2, "MusicBrowser"

    const-string v3, "createFakeMenu:onClick()"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButtonId:I
    invoke-static {v3}, Lcom/android/music/MusicBrowserActivity;->access$100(Lcom/android/music/MusicBrowserActivity;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 334
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    iget-object v3, p0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButton:Landroid/view/View;
    invoke-static {v3}, Lcom/android/music/MusicBrowserActivity;->access$200(Lcom/android/music/MusicBrowserActivity;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 335
    .local v1, popupMenu:Landroid/widget/PopupMenu;
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    #setter for: Lcom/android/music/MusicBrowserActivity;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v2, v1}, Lcom/android/music/MusicBrowserActivity;->access$302(Lcom/android/music/MusicBrowserActivity;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    .line 336
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 337
    .local v0, menu:Landroid/view/Menu;
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v2, v0}, Lcom/android/music/MusicBrowserActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 338
    new-instance v2, Lcom/android/music/MusicBrowserActivity$1$1;

    invoke-direct {v2, p0}, Lcom/android/music/MusicBrowserActivity$1$1;-><init>(Lcom/android/music/MusicBrowserActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 343
    new-instance v2, Lcom/android/music/MusicBrowserActivity$1$2;

    invoke-direct {v2, p0}, Lcom/android/music/MusicBrowserActivity$1$2;-><init>(Lcom/android/music/MusicBrowserActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 350
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v2, v0}, Lcom/android/music/MusicBrowserActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 351
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    const/4 v3, 0x1

    #setter for: Lcom/android/music/MusicBrowserActivity;->mPopupMenuShowing:Z
    invoke-static {v2, v3}, Lcom/android/music/MusicBrowserActivity;->access$402(Lcom/android/music/MusicBrowserActivity;Z)Z

    .line 352
    if-eqz v1, :cond_0

    .line 353
    const-string v2, "MusicBrowser"

    const-string v3, "createFakeMenu:popupMenu.show()"

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 357
    .end local v0           #menu:Landroid/view/Menu;
    .end local v1           #popupMenu:Landroid/widget/PopupMenu;
    :cond_0
    return-void
.end method
