.class Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;
.super Ljava/lang/Object;
.source "WifiOppTransferAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wifidirect/test/WifiOppTransferAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppTransferAdapter;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/wifidirect/test/WifiOppTransferAdapter;ILandroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;->this$0:Lcom/android/wifidirect/test/WifiOppTransferAdapter;

    iput p2, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 143
    const-string v2, "wifiOppTransferAdapter"

    const-string v3, "imageView onClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;->this$0:Lcom/android/wifidirect/test/WifiOppTransferAdapter;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mTransferCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->access$000(Lcom/android/wifidirect/test/WifiOppTransferAdapter;)Landroid/database/Cursor;

    move-result-object v2

    iget v3, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 145
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;->this$0:Lcom/android/wifidirect/test/WifiOppTransferAdapter;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->access$100(Lcom/android/wifidirect/test/WifiOppTransferAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {v0, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 146
    .local v0, mPopupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 147
    .local v1, menu:Landroid/view/Menu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 148
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 149
    new-instance v2, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1$1;-><init>(Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 179
    return-void
.end method
