.class Lcom/android/music/MusicBrowserActivity$1$1;
.super Ljava/lang/Object;
.source "MusicBrowserActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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
    .line 338
    iput-object p1, p0, Lcom/android/music/MusicBrowserActivity$1$1;->this$1:Lcom/android/music/MusicBrowserActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$1$1;->this$1:Lcom/android/music/MusicBrowserActivity$1;

    iget-object v0, v0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v0, p1}, Lcom/android/music/MusicBrowserActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
