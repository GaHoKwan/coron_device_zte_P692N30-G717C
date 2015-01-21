.class Lcom/android/mms/ui/FolderViewList$6;
.super Ljava/lang/Object;
.source "FolderViewList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FolderViewList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderViewList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderViewList;)V
    .locals 0
    .parameter

    .prologue
    .line 997
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewList$6;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 999
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 1000
    packed-switch p2, :pswitch_data_0

    .line 1011
    :cond_0
    :goto_0
    return v2

    .line 1002
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList$6;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-virtual {v2}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v0

    .line 1006
    .local v0, id:J
    const/4 v2, 0x1

    goto :goto_0

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method
