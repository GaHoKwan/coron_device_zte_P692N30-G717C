.class Lcom/android/mms/ui/SlideView$TextMenuClickListener$1;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView$TextMenuClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SlideView$TextMenuClickListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView$TextMenuClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 884
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener$1;->this$1:Lcom/android/mms/ui/SlideView$TextMenuClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener$1;->this$1:Lcom/android/mms/ui/SlideView$TextMenuClickListener;

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$1400(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$TextMenuClickListener$1;->this$1:Lcom/android/mms/ui/SlideView$TextMenuClickListener;

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mURLs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$1200(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    return-void
.end method
