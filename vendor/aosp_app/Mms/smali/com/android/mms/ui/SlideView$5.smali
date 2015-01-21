.class Lcom/android/mms/ui/SlideView$5;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 847
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$5;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 849
    new-instance v0, Lcom/android/mms/ui/SlideView$TextMenuClickListener;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$5;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/SlideView$TextMenuClickListener;-><init>(Lcom/android/mms/ui/SlideView;Lcom/android/mms/ui/SlideView$1;)V

    .line 850
    .local v0, l:Lcom/android/mms/ui/SlideView$TextMenuClickListener;
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 852
    const v1, 0x7f0b024d

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 854
    const/4 v1, 0x1

    const v2, 0x7f0b024c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 857
    const/16 v1, 0x8

    const v2, 0x7f0b00af

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 860
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$5;->this$0:Lcom/android/mms/ui/SlideView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$5;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$900(Lcom/android/mms/ui/SlideView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    #calls: Lcom/android/mms/ui/SlideView;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/SlideView$TextMenuClickListener;Ljava/lang/CharSequence;)V
    invoke-static {v1, p1, v0, v2}, Lcom/android/mms/ui/SlideView;->access$1000(Lcom/android/mms/ui/SlideView;Landroid/view/ContextMenu;Lcom/android/mms/ui/SlideView$TextMenuClickListener;Ljava/lang/CharSequence;)V

    .line 861
    return-void
.end method
