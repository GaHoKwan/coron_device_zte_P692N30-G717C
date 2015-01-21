.class Lcom/android/music/MusicBrowserActivity$1$2;
.super Ljava/lang/Object;
.source "MusicBrowserActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MusicBrowserActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/MusicBrowserActivity$1;


# direct methods
.method constructor <init>(Lcom/android/music/MusicBrowserActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/music/MusicBrowserActivity$1$2;->this$1:Lcom/android/music/MusicBrowserActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$1$2;->this$1:Lcom/android/music/MusicBrowserActivity$1;

    iget-object v0, v0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/music/MusicBrowserActivity;->mPopupMenuShowing:Z
    invoke-static {v0, v1}, Lcom/android/music/MusicBrowserActivity;->access$402(Lcom/android/music/MusicBrowserActivity;Z)Z

    .line 346
    const-string v0, "MusicBrowser"

    const-string v1, "createFakeMenu:onDismiss() called"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method
