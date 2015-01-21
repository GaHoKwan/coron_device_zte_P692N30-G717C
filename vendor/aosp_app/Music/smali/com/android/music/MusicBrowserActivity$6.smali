.class Lcom/android/music/MusicBrowserActivity$6;
.super Ljava/lang/Object;
.source "MusicBrowserActivity.java"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MusicBrowserActivity;->initSearchButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MusicBrowserActivity;

.field final synthetic val$blankView:Landroid/view/View;

.field final synthetic val$nowPlayingView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/music/MusicBrowserActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/android/music/MusicBrowserActivity$6;->this$0:Lcom/android/music/MusicBrowserActivity;

    iput-object p2, p0, Lcom/android/music/MusicBrowserActivity$6;->val$nowPlayingView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/music/MusicBrowserActivity$6;->val$blankView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 848
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$6;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/music/MusicBrowserActivity;->access$200(Lcom/android/music/MusicBrowserActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$6;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/music/MusicBrowserActivity;->access$200(Lcom/android/music/MusicBrowserActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$6;->this$0:Lcom/android/music/MusicBrowserActivity;

    iget-object v0, v0, Lcom/android/music/MusicBrowserActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$6;->val$nowPlayingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$6;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mHasMenukey:Z
    invoke-static {v0}, Lcom/android/music/MusicBrowserActivity;->access$1200(Lcom/android/music/MusicBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$6;->val$blankView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 855
    :cond_1
    const-string v0, "MusicBrowser"

    const-string v1, "Search dialog on dismiss, enalbe search button"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-void
.end method
