.class Lcom/android/music/MusicBrowserActivity$5;
.super Ljava/lang/Object;
.source "MusicBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/music/MusicBrowserActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/android/music/MusicBrowserActivity$5;->this$0:Lcom/android/music/MusicBrowserActivity;

    iput-object p2, p0, Lcom/android/music/MusicBrowserActivity$5;->val$blankView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0x8

    .line 833
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$5;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/music/MusicBrowserActivity;->access$200(Lcom/android/music/MusicBrowserActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$5;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mOverflowMenuButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/music/MusicBrowserActivity;->access$200(Lcom/android/music/MusicBrowserActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$5;->this$0:Lcom/android/music/MusicBrowserActivity;

    iget-object v0, v0, Lcom/android/music/MusicBrowserActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 837
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$5;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    .line 838
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$5;->val$blankView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$5;->val$blankView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 841
    :cond_1
    return-void
.end method
