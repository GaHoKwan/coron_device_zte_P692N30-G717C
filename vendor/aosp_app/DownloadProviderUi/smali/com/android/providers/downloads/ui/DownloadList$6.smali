.class Lcom/android/providers/downloads/ui/DownloadList$6;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter

    .prologue
    .line 812
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$6;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 817
    instance-of v1, p2, Lcom/android/providers/downloads/ui/DownloadItem;

    if-nez v1, :cond_0

    .line 819
    const/4 v0, 0x0

    .line 827
    .end local p2
    :goto_0
    return v0

    .line 821
    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$6;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$600(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 822
    check-cast p2, Lcom/android/providers/downloads/ui/DownloadItem;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/android/providers/downloads/ui/DownloadItem;->setChecked(Z)V

    goto :goto_0

    .line 824
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$6;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1000(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->moveCursorToChildPosition(II)Z

    .line 825
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$6;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$6;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$1200(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;

    move-result-object v2

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->handleItemClick(Landroid/database/Cursor;)V
    invoke-static {v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$1300(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V

    goto :goto_0
.end method
