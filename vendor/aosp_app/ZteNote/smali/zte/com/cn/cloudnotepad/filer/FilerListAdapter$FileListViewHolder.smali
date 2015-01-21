.class public Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;
.super Ljava/lang/Object;
.source "FilerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileListViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public size:Landroid/widget/TextView;

.field final synthetic this$0:Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;

.field public time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/filer/FilerListAdapter$FileListViewHolder;->this$0:Lzte/com/cn/cloudnotepad/filer/FilerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
