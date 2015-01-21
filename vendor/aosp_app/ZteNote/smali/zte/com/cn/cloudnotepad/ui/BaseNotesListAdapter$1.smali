.class Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$1;
.super Ljava/lang/Object;
.source "BaseNotesListAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter$1;->this$0:Lzte/com/cn/cloudnotepad/ui/BaseNotesListAdapter;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method
